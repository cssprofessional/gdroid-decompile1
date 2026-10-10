package com.gmodvr.flat;

import com.gmodvr.flat.GameMod;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.function.Function;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class GameMod {
    final File directory;
    private final Node gameInfo;
    final String id;
    final String title;

    private GameMod(File file, Node node) throws IOException {
        File canonicalFile = file.getCanonicalFile();
        this.directory = canonicalFile;
        this.gameInfo = node;
        String strValue = node.value("game");
        this.title = strValue.isEmpty() ? file.getName() : strValue;
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(canonicalFile.getPath().getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 12; i++) {
                sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(bArrDigest[i] & 255)));
            }
            this.id = sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException(e);
        }
    }

    public static GameMod read(File file) throws IOException {
        if (!file.isDirectory()) {
            throw new IOException("Mod folder is unavailable: " + file);
        }
        Node nodeFind = find(new Parser(readText(new File(file, "gameinfo.txt"))).parse(false, 0), "GameInfo");
        if (nodeFind == null || nodeFind.children == null || nodeFind.child("FileSystem") == null || nodeFind.child("FileSystem").child("SearchPaths") == null || nodeFind.child("FileSystem").child("SearchPaths").children == null) {
            throw new IOException("Mod gameinfo.txt must contain GameInfo / FileSystem / SearchPaths.");
        }
        return new GameMod(file, nodeFind);
    }

    public static List<GameMod> discover(File file, GameContentProfile gameContentProfile) throws IOException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (File file2 : Arrays.asList(file, new File(file, "mods"), new File(file, "custom"), new File(file, gameContentProfile.gameDir + "/custom"))) {
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles != null) {
                Arrays.sort(fileArrListFiles, Comparator.comparing(new GameMod$$ExternalSyntheticLambda1(), String.CASE_INSENSITIVE_ORDER));
                for (File file3 : fileArrListFiles) {
                    if (file3.isDirectory() && !file3.getName().startsWith(".") && ((!file2.equals(file) || !isDepot(file3.getName(), gameContentProfile)) && new File(file3, "gameinfo.txt").isFile())) {
                        try {
                            GameMod gameMod = read(file3);
                            linkedHashMap.put(gameMod.id, gameMod);
                        } catch (IOException unused) {
                        }
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.values());
        arrayList.sort(Comparator.comparing(new Function() { // from class: com.gmodvr.flat.GameMod$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((GameMod) obj).title;
            }
        }, String.CASE_INSENSITIVE_ORDER));
        return arrayList;
    }

    private static boolean isDepot(String str, GameContentProfile gameContentProfile) {
        if (str.equalsIgnoreCase(ContentComponent.PLATFORM_DIR)) {
            return true;
        }
        Iterator<ContentComponent> it = gameContentProfile.depots.iterator();
        while (it.hasNext()) {
            if (str.equalsIgnoreCase(it.next().dirName)) {
                return true;
            }
        }
        return false;
    }

    public File userDirectory(File file, GameContentProfile gameContentProfile) {
        return new File(file, "user/mods/" + gameContentProfile.id + "/" + this.id + "/" + gameContentProfile.gameDir);
    }

    public List<String> maps() throws IOException {
        TreeSet treeSet = new TreeSet();
        File file = new File(this.directory, "maplist.txt");
        if (file.isFile()) {
            for (String str : readText(file).split("\\R")) {
                String strTrim = str.trim();
                if (validMap(strTrim)) {
                    treeSet.add(strTrim);
                }
            }
        }
        File[] fileArrListFiles = new File(this.directory, "maps").listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                if (file2.isFile() && name.endsWith(".bsp") && validMap(name.substring(0, name.length() - 4))) {
                    treeSet.add(name.substring(0, name.length() - 4));
                }
            }
        }
        return new ArrayList(treeSet);
    }

    public String suggestedMap() throws IOException {
        String strValue = this.gameInfo.value("startmap");
        if (validMap(strValue)) {
            return strValue;
        }
        List<String> listMaps = maps();
        if (listMaps.contains("st_a1_tramride")) {
            return "st_a1_tramride";
        }
        if (listMaps.contains("sp_a1_tramride")) {
            return "sp_a1_tramride";
        }
        File file = new File(this.directory, "cfg/chapter1.cfg");
        if (file.isFile()) {
            Matcher matcher = Pattern.compile("(?m)^\\s*map\\s+\"?([A-Za-z0-9_/-]+)").matcher(readText(file));
            if (matcher.find() && validMap(matcher.group(1))) {
                return matcher.group(1);
            }
        }
        return listMaps.size() == 1 ? listMaps.get(0) : "";
    }

    public static boolean validMap(String str) {
        return str != null && str.matches("[A-Za-z0-9_-]+(?:/[A-Za-z0-9_-]+)*");
    }

    public String runtimeGameInfo(File file, File file2, GameContentProfile gameContentProfile) throws IOException {
        List<ContentComponent> listAsList;
        Node nodeCopy = this.gameInfo.copy();
        Node nodeChild = nodeCopy.child("FileSystem");
        nodeChild.set("SteamAppId", Integer.toString(gameContentProfile.steamAppId));
        Node nodeChild2 = nodeChild.child("SearchPaths");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Node("Mod+Mod_Write+Default_Write_Path", file2.getAbsolutePath()));
        Iterator<Node> it = nodeChild2.children.iterator();
        while (true) {
            if (it.hasNext()) {
                Node next = it.next();
                if (next.children != null) {
                    throw new IOException("Invalid SearchPaths block.");
                }
                ArrayList arrayList2 = new ArrayList();
                for (String str : next.key.split("\\+")) {
                    String strTrim = str.trim();
                    String lowerCase = strTrim.toLowerCase(Locale.ROOT);
                    if (!lowerCase.equals("gamebin") && !lowerCase.equals("executable_path") && !lowerCase.contains("write")) {
                        arrayList2.add(strTrim);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    String strResolvePath = resolvePath(next.value, file, gameContentProfile);
                    String strJoin = String.join("+", arrayList2);
                    if (arrayList2.stream().anyMatch(new Predicate() { // from class: com.gmodvr.flat.GameMod$$ExternalSyntheticLambda0
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return GameMod.lambda$runtimeGameInfo$1((String) obj);
                        }
                    })) {
                        addArchive(arrayList, strJoin, new File(strResolvePath), next.condition);
                    }
                    Node node = new Node(strJoin, strResolvePath);
                    node.condition = next.condition;
                    arrayList.add(node);
                }
            } else {
                addArchive(arrayList, "Game+Mod", this.directory, "");
                arrayList.add(new Node("Game+Mod", this.directory.getPath()));
                if (gameContentProfile == GameContentProfile.PORTAL2) {
                    listAsList = Arrays.asList(ContentComponent.PORTAL2_UPDATE, ContentComponent.PORTAL2_DLC2, ContentComponent.PORTAL2_DLC1, ContentComponent.PORTAL2, ContentComponent.PORTAL2_PLATFORM);
                } else {
                    listAsList = gameContentProfile.depots;
                }
                for (ContentComponent contentComponent : listAsList) {
                    File file3 = new File(file, contentComponent.dirName);
                    if (contentComponent.dirName.equals(ContentComponent.PORTAL2_PLATFORM_DIR) && !file3.isDirectory()) {
                        file3 = new File(file, ContentComponent.PLATFORM_DIR);
                    }
                    addArchive(arrayList, "Game", file3, "");
                    arrayList.add(new Node("Game", file3.getAbsolutePath()));
                }
                nodeChild2.children = arrayList;
                return nodeCopy.serialize(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$runtimeGameInfo$1(String str) {
        return str.equalsIgnoreCase("game");
    }

    private static void addArchive(List<Node> list, String str, File file, String str2) {
        if (new File(file, "pak01_dir.vpk").isFile()) {
            Node node = new Node(str, new File(file, "pak01.vpk").getAbsolutePath());
            node.condition = str2;
            list.add(node);
        }
    }

    private String resolvePath(String str, File file, GameContentProfile gameContentProfile) throws IOException {
        String strSubstring;
        String strReplace = str.replace('\\', '/');
        String lowerCase = strReplace.toLowerCase(Locale.ROOT);
        if (lowerCase.startsWith("|gameinfo_path|")) {
            file = this.directory;
            strSubstring = strReplace.substring(15);
        } else {
            if (lowerCase.startsWith("|all_source_engine_paths|")) {
                strReplace = strReplace.substring(25);
            }
            if (strReplace.contains("|") || strReplace.matches("^[A-Za-z]:.*")) {
                throw new IOException("Unsupported search path in gameinfo.txt: " + str);
            }
            if (new File(strReplace).isAbsolute()) {
                return strReplace;
            }
            String str2 = strReplace.split("/", 2)[0];
            if (str2.equalsIgnoreCase(this.directory.getName())) {
                file = this.directory;
                strSubstring = strReplace.length() == str2.length() ? "." : strReplace.substring(str2.length() + 1);
            } else {
                if (isDepot(str2, gameContentProfile)) {
                    if (str2.equalsIgnoreCase(ContentComponent.PLATFORM_DIR) && new File(file, ContentComponent.PORTAL2_PLATFORM_DIR).isDirectory()) {
                        strSubstring = ContentComponent.PORTAL2_PLATFORM_DIR + strReplace.substring(str2.length());
                    }
                } else {
                    file = this.directory.getParentFile();
                }
                strSubstring = strReplace;
            }
        }
        return new File(file, strSubstring.isEmpty() ? "." : strSubstring).getCanonicalPath();
    }

    private static String readText(File file) throws IOException {
        if (!file.isFile() || file.length() > 1048576) {
            throw new IOException("Missing or oversized file: " + file);
        }
        return new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8).replace("\ufeff", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Node find(List<Node> list, String str) {
        for (Node node : list) {
            if (node.key.equalsIgnoreCase(str)) {
                return node;
            }
        }
        return null;
    }

    public static final class Node {
        List<Node> children;
        String condition = "";
        String key;
        String value;

        public Node(String str, String str2) {
            this.key = str;
            this.value = str2;
        }

        public Node child(String str) {
            List<Node> list = this.children;
            if (list == null) {
                return null;
            }
            return GameMod.find(list, str);
        }

        public String value(String str) {
            String str2;
            Node nodeChild = child(str);
            return (nodeChild == null || (str2 = nodeChild.value) == null) ? "" : str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$set$0(String str, Node node) {
            return node.key.equalsIgnoreCase(str);
        }

        public void set(final String str, String str2) {
            this.children.removeIf(new Predicate() { // from class: com.gmodvr.flat.GameMod$Node$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return GameMod.Node.lambda$set$0(str, (GameMod.Node) obj);
                }
            });
            this.children.add(new Node(str, str2));
        }

        public Node copy() {
            Node node = new Node(this.key, this.value);
            node.condition = this.condition;
            if (this.children != null) {
                node.children = new ArrayList();
                Iterator<Node> it = this.children.iterator();
                while (it.hasNext()) {
                    node.children.add(it.next().copy());
                }
            }
            return node;
        }

        public String serialize(int i) throws IOException {
            String str;
            String str2;
            String strReplace = new String(new char[i]).replace((char) 0, ' ');
            String str3 = strReplace + quote(this.key);
            if (this.children == null) {
                str = str3 + " " + quote(this.value);
            } else {
                String str4 = str3 + "\n" + strReplace + "{\n";
                Iterator<Node> it = this.children.iterator();
                while (it.hasNext()) {
                    str4 = str4 + it.next().serialize(i + 1);
                }
                str = str4 + strReplace + "}";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            if (this.condition.isEmpty()) {
                str2 = "";
            } else {
                str2 = " " + this.condition;
            }
            sb.append(str2);
            sb.append("\n");
            return sb.toString();
        }

        private static String quote(String str) throws IOException {
            if (str.indexOf(34) >= 0 || str.chars().anyMatch(new IntPredicate() { // from class: com.gmodvr.flat.GameMod$Node$$ExternalSyntheticLambda1
                @Override // java.util.function.IntPredicate
                public final boolean test(int i) {
                    return Character.isISOControl(i);
                }
            })) {
                throw new IOException("Unsupported quote or control character in gameinfo.txt.");
            }
            return "\"" + str + "\"";
        }
    }

    public static final class Parser {
        int cursor;
        String pending;
        final String source;

        public Parser(String str) {
            this.source = str;
        }

        public List<Node> parse(boolean z, int i) throws IOException {
            if (i > 32) {
                throw new IOException("gameinfo.txt is nested too deeply.");
            }
            ArrayList arrayList = new ArrayList();
            while (true) {
                String next = next();
                if (next == null) {
                    if (z) {
                        throw new IOException("Unclosed block in gameinfo.txt.");
                    }
                    return arrayList;
                }
                if (next.equals("}")) {
                    if (z) {
                        return arrayList;
                    }
                    throw new IOException("Unexpected } in gameinfo.txt.");
                }
                if (next.startsWith("#")) {
                    throw new IOException("External gameinfo directives are not supported: " + next);
                }
                String next2 = next();
                if (next.equals("{") || next2 == null || next2.equals("}")) {
                    break;
                }
                Node node = new Node(next, next2);
                if (next2.equals("{")) {
                    node.value = null;
                    node.children = parse(true, i + 1);
                }
                String next3 = next();
                if (next3 == null || !next3.startsWith("[")) {
                    this.pending = next3;
                } else {
                    node.condition = next3;
                }
                arrayList.add(node);
            }
            throw new IOException("Incomplete gameinfo.txt.");
        }

        public String next() throws IOException {
            String str = this.pending;
            if (str != null) {
                this.pending = null;
                return str;
            }
            while (this.cursor < this.source.length()) {
                if (!Character.isWhitespace(this.source.charAt(this.cursor))) {
                    if (this.source.startsWith("//", this.cursor)) {
                        while (this.cursor < this.source.length() && this.source.charAt(this.cursor) != '\n') {
                            this.cursor++;
                        }
                    } else {
                        if (!this.source.startsWith("/*", this.cursor)) {
                            break;
                        }
                        int iIndexOf = this.source.indexOf("*/", this.cursor + 2);
                        if (iIndexOf < 0) {
                            throw new IOException("Unclosed gameinfo comment.");
                        }
                        this.cursor = iIndexOf + 2;
                    }
                } else {
                    this.cursor++;
                }
            }
            if (this.cursor == this.source.length()) {
                return null;
            }
            String str2 = this.source;
            int i = this.cursor;
            this.cursor = i + 1;
            char cCharAt = str2.charAt(i);
            if (cCharAt == '{' || cCharAt == '}') {
                return Character.toString(cCharAt);
            }
            if (cCharAt == '\"' || cCharAt == '[') {
                int i2 = this.cursor;
                char c = cCharAt != '\"' ? ']' : '\"';
                while (this.cursor < this.source.length() && this.source.charAt(this.cursor) != c) {
                    this.cursor++;
                }
                if (this.cursor == this.source.length()) {
                    throw new IOException("Unclosed gameinfo token.");
                }
                String str3 = this.source;
                int i3 = this.cursor;
                this.cursor = i3 + 1;
                String strSubstring = str3.substring(i2, i3);
                if (cCharAt != '[') {
                    return strSubstring;
                }
                return "[" + strSubstring + "]";
            }
            int i4 = this.cursor - 1;
            while (this.cursor < this.source.length() && !Character.isWhitespace(this.source.charAt(this.cursor)) && "{}[]".indexOf(this.source.charAt(this.cursor)) < 0) {
                this.cursor++;
            }
            return this.source.substring(i4, this.cursor);
        }
    }
}

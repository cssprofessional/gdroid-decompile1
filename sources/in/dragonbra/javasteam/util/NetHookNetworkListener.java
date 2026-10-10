package in.dragonbra.javasteam.util;

import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public class NetHookNetworkListener implements IDebugNetworkListener {
    private final File logDirectory;
    private final AtomicLong messageNumber;
    private static final Logger logger = LogManager.getLogger(NetHookNetworkListener.class);
    private static final SimpleDateFormat FORMAT = new SimpleDateFormat("yyyy_MM_dd_H_m_s_S");

    public NetHookNetworkListener() {
        this("netlogs");
    }

    public NetHookNetworkListener(String str) {
        this.messageNumber = new AtomicLong(0L);
        File file = new File(str);
        file.mkdir();
        File file2 = new File(file, FORMAT.format(new Date()));
        this.logDirectory = file2;
        file2.mkdir();
    }

    @Override // in.dragonbra.javasteam.util.IDebugNetworkListener
    public void onIncomingNetworkMessage(EMsg eMsg, byte[] bArr) {
        logger.debug(String.format("<- Recv'd EMsg: %s (%d)", eMsg, Integer.valueOf(eMsg.code())));
        try {
            Files.write(Paths.get(new File(this.logDirectory, getFile("in", eMsg)).getAbsolutePath(), new String[0]), bArr, new OpenOption[0]);
        } catch (IOException e) {
            logger.debug(e);
        }
    }

    @Override // in.dragonbra.javasteam.util.IDebugNetworkListener
    public void onOutgoingNetworkMessage(EMsg eMsg, byte[] bArr) {
        logger.debug(String.format("Sent -> EMsg: %s", eMsg));
        try {
            Files.write(Paths.get(new File(this.logDirectory, getFile("out", eMsg)).getAbsolutePath(), new String[0]), bArr, new OpenOption[0]);
        } catch (IOException e) {
            logger.debug(e);
        }
    }

    private String getFile(String str, EMsg eMsg) {
        return String.format("%d_%s_%d_k_EMsg%s.bin", Long.valueOf(this.messageNumber.getAndIncrement()), str, Integer.valueOf(eMsg.code()), eMsg);
    }
}

package com.gmodvr.flat;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import com.gmodvr.flat.CopyImporter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class DocumentSource implements CopyImporter.Source {
    private final ContentResolver resolver;
    private final Uri tree;

    public DocumentSource(ContentResolver contentResolver, Uri uri) {
        this.resolver = contentResolver;
        this.tree = uri;
    }

    @Override // com.gmodvr.flat.CopyImporter.Source
    public String identity() {
        return this.tree.toString();
    }

    @Override // com.gmodvr.flat.CopyImporter.Source
    public String root() {
        return DocumentsContract.getTreeDocumentId(this.tree);
    }

    @Override // com.gmodvr.flat.CopyImporter.Source
    public List<CopyImporter.Entry> list(String str) throws IOException {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = this.resolver.query(DocumentsContract.buildChildDocumentsUriUsingTree(this.tree, str), new String[]{"document_id", "_display_name", "mime_type", "_size", "last_modified"}, null, null, null);
        try {
            if (cursorQuery == null) {
                throw new IOException("Folder access was lost. Reconnect the source and select the same folder.");
            }
            while (cursorQuery.moveToNext()) {
                arrayList.add(new CopyImporter.Entry(cursorQuery.getString(0), cursorQuery.getString(1), "vnd.android.document/directory".equals(cursorQuery.getString(2)), cursorQuery.isNull(3) ? -1L : cursorQuery.getLong(3), cursorQuery.isNull(4) ? 0L : cursorQuery.getLong(4)));
            }
            cursorQuery.close();
            return arrayList;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // com.gmodvr.flat.CopyImporter.Source
    public InputStream open(String str) throws IOException {
        return this.resolver.openInputStream(DocumentsContract.buildDocumentUriUsingTree(this.tree, str));
    }
}

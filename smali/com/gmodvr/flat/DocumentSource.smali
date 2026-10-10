###### Class com.gmodvr.flat.DocumentSource (com.gmodvr.flat.DocumentSource)
.class final Lcom/gmodvr/flat/DocumentSource;
.super Ljava/lang/Object;
.source "DocumentSource.java"

# interfaces
.implements Lcom/gmodvr/flat/CopyImporter$Source;


# instance fields
.field private final resolver:Landroid/content/ContentResolver;

.field private final tree:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/gmodvr/flat/DocumentSource;->resolver:Landroid/content/ContentResolver;

    .line 17
    iput-object p2, p0, Lcom/gmodvr/flat/DocumentSource;->tree:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public identity()Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/gmodvr/flat/DocumentSource;->tree:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public list(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CopyImporter$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    const-string v0, "_size"

    const-string v1, "last_modified"

    const-string v2, "document_id"

    const-string v3, "_display_name"

    const-string v4, "mime_type"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object v5, p0, Lcom/gmodvr/flat/DocumentSource;->resolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/gmodvr/flat/DocumentSource;->tree:Landroid/net/Uri;

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_6b

    .line 34
    :goto_24
    :try_start_24
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 35
    new-instance p1, Lcom/gmodvr/flat/CopyImporter$Entry;

    const/4 v1, 0x0

    .line 36
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    .line 37
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "vnd.android.document/directory"

    const/4 v4, 0x2

    .line 38
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v1, 0x3

    .line 39
    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    const-wide/16 v5, -0x1

    goto :goto_4f

    :cond_4b
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    :goto_4f
    const/4 v1, 0x4

    .line 40
    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_59

    const-wide/16 v7, 0x0

    goto :goto_5d

    :cond_59
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :goto_5d
    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/gmodvr/flat/CopyImporter$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ZJJ)V

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catchall {:try_start_24 .. :try_end_64} :catchall_65

    goto :goto_24

    :catchall_65
    move-exception p1

    goto :goto_73

    .line 43
    :cond_67
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 33
    :cond_6b
    :try_start_6b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Folder access was lost. Reconnect the source and select the same folder."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_65

    :goto_73
    if-eqz p0, :cond_7d

    .line 32
    :try_start_75
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7d
    :goto_7d
    throw p1
.end method

.method public open(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/gmodvr/flat/DocumentSource;->resolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/gmodvr/flat/DocumentSource;->tree:Landroid/net/Uri;

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public root()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/gmodvr/flat/DocumentSource;->tree:Landroid/net/Uri;

    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

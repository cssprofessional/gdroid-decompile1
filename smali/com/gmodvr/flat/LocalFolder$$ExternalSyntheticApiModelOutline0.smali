###### Class com.gmodvr.flat.LocalFolder$$ExternalSyntheticApiModelOutline0 (com.gmodvr.flat.LocalFolder$$ExternalSyntheticApiModelOutline0)
.class public final synthetic Lcom/gmodvr/flat/LocalFolder$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/os/storage/StorageVolume;)Ljava/io/File;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

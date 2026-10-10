###### Class in.dragonbra.javasteam.types.MessageObject (in.dragonbra.javasteam.types.MessageObject)
.class public Lin/dragonbra/javasteam/types/MessageObject;
.super Ljava/lang/Object;
.source "MessageObject.kt"


# instance fields
.field private keyValues:Lin/dragonbra/javasteam/types/KeyValue;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lin/dragonbra/javasteam/types/MessageObject;-><init>(Lin/dragonbra/javasteam/types/KeyValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/types/KeyValue;)V
    .registers 3

    const-string v0, "keyValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lin/dragonbra/javasteam/types/MessageObject;->keyValues:Lin/dragonbra/javasteam/types/KeyValue;

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/types/KeyValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_d

    .line 14
    new-instance p1, Lin/dragonbra/javasteam/types/KeyValue;

    const-string p2, "MessageObject"

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p3, v0}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    :cond_d
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/types/MessageObject;-><init>(Lin/dragonbra/javasteam/types/KeyValue;)V

    return-void
.end method


# virtual methods
.method public final getKeyValues()Lin/dragonbra/javasteam/types/KeyValue;
    .registers 1

    .line 14
    iget-object p0, p0, Lin/dragonbra/javasteam/types/MessageObject;->keyValues:Lin/dragonbra/javasteam/types/KeyValue;

    return-object p0
.end method

.method public final readFromStream(Ljava/io/InputStream;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/types/MessageObject;->keyValues:Lin/dragonbra/javasteam/types/KeyValue;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->tryReadAsBinary(Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method

.method public final setKeyValues(Lin/dragonbra/javasteam/types/KeyValue;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lin/dragonbra/javasteam/types/MessageObject;->keyValues:Lin/dragonbra/javasteam/types/KeyValue;

    return-void
.end method

.method public final writeToStream(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lin/dragonbra/javasteam/types/MessageObject;->keyValues:Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lin/dragonbra/javasteam/types/KeyValue;->saveToStream(Ljava/io/OutputStream;Z)V

    return-void
.end method

###### Class com.google.protobuf.TextFormatParseLocation (com.google.protobuf.TextFormatParseLocation)
.class public final Lcom/google/protobuf/TextFormatParseLocation;
.super Ljava/lang/Object;
.source "TextFormatParseLocation.java"


# static fields
.field public static final EMPTY:Lcom/google/protobuf/TextFormatParseLocation;


# instance fields
.field private final column:I

.field private final line:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/google/protobuf/TextFormatParseLocation;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/google/protobuf/TextFormatParseLocation;-><init>(II)V

    sput-object v0, Lcom/google/protobuf/TextFormatParseLocation;->EMPTY:Lcom/google/protobuf/TextFormatParseLocation;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "column"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/google/protobuf/TextFormatParseLocation;->line:I

    .line 45
    iput p2, p0, Lcom/google/protobuf/TextFormatParseLocation;->column:I

    return-void
.end method

.method public static create(II)Lcom/google/protobuf/TextFormatParseLocation;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "column"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    if-ne p1, v0, :cond_8

    .line 31
    sget-object p0, Lcom/google/protobuf/TextFormatParseLocation;->EMPTY:Lcom/google/protobuf/TextFormatParseLocation;

    return-object p0

    :cond_8
    if-ltz p0, :cond_12

    if-ltz p1, :cond_12

    .line 37
    new-instance v0, Lcom/google/protobuf/TextFormatParseLocation;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/TextFormatParseLocation;-><init>(II)V

    return-object v0

    .line 34
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "line and column values must be >= 0: line %d, column: %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 67
    :cond_4
    instance-of v1, p1, Lcom/google/protobuf/TextFormatParseLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 70
    :cond_a
    check-cast p1, Lcom/google/protobuf/TextFormatParseLocation;

    .line 71
    iget v1, p0, Lcom/google/protobuf/TextFormatParseLocation;->line:I

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormatParseLocation;->getLine()I

    move-result v3

    if-ne v1, v3, :cond_1d

    iget p0, p0, Lcom/google/protobuf/TextFormatParseLocation;->column:I

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormatParseLocation;->getColumn()I

    move-result p1

    if-ne p0, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public getColumn()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/google/protobuf/TextFormatParseLocation;->column:I

    return p0
.end method

.method public getLine()I
    .registers 1

    .line 49
    iget p0, p0, Lcom/google/protobuf/TextFormatParseLocation;->line:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/google/protobuf/TextFormatParseLocation;->line:I

    iget p0, p0, Lcom/google/protobuf/TextFormatParseLocation;->column:I

    filled-new-array {v0, p0}, [I

    move-result-object p0

    .line 77
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 58
    iget v0, p0, Lcom/google/protobuf/TextFormatParseLocation;->line:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/google/protobuf/TextFormatParseLocation;->column:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ParseLocation{line=%d, column=%d}"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

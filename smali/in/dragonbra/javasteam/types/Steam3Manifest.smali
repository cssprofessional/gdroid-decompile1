###### Class in.dragonbra.javasteam.types.Steam3Manifest (in.dragonbra.javasteam.types.Steam3Manifest)
.class public final Lin/dragonbra/javasteam/types/Steam3Manifest;
.super Ljava/lang/Object;
.source "Steam3Manifest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/Steam3Manifest$Companion;,
        Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x4

.field public static final Companion:Lin/dragonbra/javasteam/types/Steam3Manifest$Companion;

.field public static final MAGIC:I = 0x16349781


# instance fields
.field private areFileNamesEncrypted:Z

.field private chunkCount:I

.field private creationTime:Ljava/util/Date;

.field private decryptedCRC:I

.field private depotID:I

.field private encryptedCRC:I

.field private fileEntryCount:I

.field private fileMappingSize:I

.field private flags:I

.field private magic:I

.field private manifestGID:J

.field private mapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;",
            ">;"
        }
    .end annotation
.end field

.field private totalCompressedSize:J

.field private totalUncompressedSize:J

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/types/Steam3Manifest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/types/Steam3Manifest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/types/Steam3Manifest;->Companion:Lin/dragonbra/javasteam/types/Steam3Manifest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->creationTime:Ljava/util/Date;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->mapping:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final deserialize$javasteam(Lin/dragonbra/javasteam/util/stream/BinaryReader;)V
    .registers 7

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->version:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8c

    .line 91
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->depotID:I

    .line 92
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->manifestGID:J

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->creationTime:Ljava/util/Date;

    .line 94
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    iput-boolean v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->areFileNamesEncrypted:Z

    .line 95
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->totalUncompressedSize:J

    .line 96
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->totalCompressedSize:J

    .line 97
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->chunkCount:I

    .line 98
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->fileEntryCount:I

    .line 99
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->fileMappingSize:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->fileMappingSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->mapping:Ljava/util/List;

    .line 103
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->encryptedCRC:I

    .line 104
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->decryptedCRC:I

    .line 105
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->flags:I

    .line 107
    iget v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->fileMappingSize:I

    :goto_6f
    if-lez v0, :cond_8b

    .line 109
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->getPosition()I

    move-result v1

    int-to-long v1, v1

    .line 111
    new-instance v3, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;

    invoke-direct {v3}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;-><init>()V

    .line 112
    invoke-virtual {v3, p1}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->deserialize$javasteam(Lin/dragonbra/javasteam/util/stream/BinaryReader;)V

    .line 113
    iget-object v4, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->mapping:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->getPosition()I

    move-result v3

    long-to-int v1, v1

    sub-int/2addr v3, v1

    sub-int/2addr v0, v3

    goto :goto_6f

    :cond_8b
    return-void

    .line 88
    :cond_8c
    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "Only version 4 is supported."

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAreFileNamesEncrypted()Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->areFileNamesEncrypted:Z

    return p0
.end method

.method public final getChunkCount()I
    .registers 1

    .line 70
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->chunkCount:I

    return p0
.end method

.method public final getCreationTime()Ljava/util/Date;
    .registers 1

    .line 66
    iget-object p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->creationTime:Ljava/util/Date;

    return-object p0
.end method

.method public final getDecryptedCRC()I
    .registers 1

    .line 74
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->decryptedCRC:I

    return p0
.end method

.method public final getDepotID()I
    .registers 1

    .line 64
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->depotID:I

    return p0
.end method

.method public final getEncryptedCRC()I
    .registers 1

    .line 73
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->encryptedCRC:I

    return p0
.end method

.method public final getFileEntryCount()I
    .registers 1

    .line 71
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->fileEntryCount:I

    return p0
.end method

.method public final getFileMappingSize()I
    .registers 1

    .line 72
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->fileMappingSize:I

    return p0
.end method

.method public final getFlags()I
    .registers 1

    .line 75
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->flags:I

    return p0
.end method

.method public final getMagic()I
    .registers 1

    .line 62
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->magic:I

    return p0
.end method

.method public final getManifestGID()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->manifestGID:J

    return-wide v0
.end method

.method public final getMapping()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->mapping:Ljava/util/List;

    return-object p0
.end method

.method public final getTotalCompressedSize()J
    .registers 3

    .line 69
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->totalCompressedSize:J

    return-wide v0
.end method

.method public final getTotalUncompressedSize()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->totalUncompressedSize:J

    return-wide v0
.end method

.method public final getVersion()I
    .registers 1

    .line 63
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->version:I

    return p0
.end method

.method public final setAreFileNamesEncrypted(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->areFileNamesEncrypted:Z

    return-void
.end method

.method public final setChunkCount(I)V
    .registers 2

    .line 70
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->chunkCount:I

    return-void
.end method

.method public final setCreationTime(Ljava/util/Date;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->creationTime:Ljava/util/Date;

    return-void
.end method

.method public final setDecryptedCRC(I)V
    .registers 2

    .line 74
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->decryptedCRC:I

    return-void
.end method

.method public final setDepotID(I)V
    .registers 2

    .line 64
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->depotID:I

    return-void
.end method

.method public final setEncryptedCRC(I)V
    .registers 2

    .line 73
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->encryptedCRC:I

    return-void
.end method

.method public final setFileEntryCount(I)V
    .registers 2

    .line 71
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->fileEntryCount:I

    return-void
.end method

.method public final setFileMappingSize(I)V
    .registers 2

    .line 72
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->fileMappingSize:I

    return-void
.end method

.method public final setFlags(I)V
    .registers 2

    .line 75
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->flags:I

    return-void
.end method

.method public final setMagic(I)V
    .registers 2

    .line 62
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->magic:I

    return-void
.end method

.method public final setManifestGID(J)V
    .registers 3

    .line 65
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->manifestGID:J

    return-void
.end method

.method public final setMapping(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->mapping:Ljava/util/List;

    return-void
.end method

.method public final setTotalCompressedSize(J)V
    .registers 3

    .line 69
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->totalCompressedSize:J

    return-void
.end method

.method public final setTotalUncompressedSize(J)V
    .registers 3

    .line 68
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->totalUncompressedSize:J

    return-void
.end method

.method public final setVersion(I)V
    .registers 2

    .line 63
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest;->version:I

    return-void
.end method

###### Class in.dragonbra.javasteam.types.Steam3Manifest.Companion (in.dragonbra.javasteam.types.Steam3Manifest$Companion)
.class public final Lin/dragonbra/javasteam/types/Steam3Manifest$Companion;
.super Ljava/lang/Object;
.source "Steam3Manifest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/Steam3Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/types/Steam3Manifest$Companion;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.types.Steam3Manifest.FileMapping (in.dragonbra.javasteam.types.Steam3Manifest$FileMapping)
.class public final Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;
.super Ljava/lang/Object;
.source "Steam3Manifest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/Steam3Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileMapping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;
    }
.end annotation


# instance fields
.field private chunks:[Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;

.field private fileName:Ljava/lang/String;

.field private flags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EDepotFileFlag;",
            ">;"
        }
    .end annotation
.end field

.field private hashContent:[B

.field private hashFileName:[B

.field private numChunks:I

.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lin/dragonbra/javasteam/enums/EDepotFileFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "noneOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->flags:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;

    iput-object v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->chunks:[Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;

    return-void
.end method


# virtual methods
.method public final deserialize$javasteam(Lin/dragonbra/javasteam/util/stream/BinaryReader;)V
    .registers 7

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readNullTermString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->fileName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->totalSize:J

    .line 50
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EDepotFileFlag;->from(I)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->flags:Ljava/util/EnumSet;

    const/16 v0, 0x14

    .line 51
    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBytes(I)[B

    move-result-object v1

    iput-object v1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->hashContent:[B

    .line 52
    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->hashFileName:[B

    .line 53
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->numChunks:I

    .line 54
    new-array v1, v0, [Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;

    const/4 v2, 0x0

    move v3, v2

    :goto_3a
    if-ge v3, v0, :cond_46

    new-instance v4, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;

    invoke-direct {v4}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_46
    iput-object v1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->chunks:[Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;

    .line 56
    array-length v0, v1

    :goto_49
    if-ge v2, v0, :cond_55

    .line 57
    iget-object v1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->chunks:[Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->deserialize$javasteam(Lin/dragonbra/javasteam/util/stream/BinaryReader;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_55
    return-void
.end method

.method public final getChunks()[Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;
    .registers 1

    .line 44
    iget-object p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->chunks:[Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;

    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFlags()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EDepotFileFlag;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->flags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getHashContent()[B
    .registers 1

    .line 42
    iget-object p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->hashContent:[B

    return-object p0
.end method

.method public final getHashFileName()[B
    .registers 1

    .line 41
    iget-object p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->hashFileName:[B

    return-object p0
.end method

.method public final getNumChunks()I
    .registers 1

    .line 43
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->numChunks:I

    return p0
.end method

.method public final getTotalSize()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->totalSize:J

    return-wide v0
.end method

.method public final setFileName(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setFlags(Ljava/util/EnumSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EDepotFileFlag;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->flags:Ljava/util/EnumSet;

    return-void
.end method

.method public final setHashContent([B)V
    .registers 2

    .line 42
    iput-object p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->hashContent:[B

    return-void
.end method

.method public final setHashFileName([B)V
    .registers 2

    .line 41
    iput-object p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->hashFileName:[B

    return-void
.end method

.method public final setNumChunks(I)V
    .registers 2

    .line 43
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->numChunks:I

    return-void
.end method

.method public final setTotalSize(J)V
    .registers 3

    .line 39
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;->totalSize:J

    return-void
.end method

###### Class in.dragonbra.javasteam.types.Steam3Manifest.FileMapping.Chunk (in.dragonbra.javasteam.types.Steam3Manifest$FileMapping$Chunk)
.class public final Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;
.super Ljava/lang/Object;
.source "Steam3Manifest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chunk"
.end annotation


# instance fields
.field private checksum:I

.field private chunkGID:[B

.field private compressedSize:I

.field private decompressedSize:I

.field private offset:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize$javasteam(Lin/dragonbra/javasteam/util/stream/BinaryReader;)V
    .registers 4

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 30
    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->chunkGID:[B

    .line 31
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->checksum:I

    .line 32
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->offset:J

    .line 33
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->decompressedSize:I

    .line 34
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->compressedSize:I

    return-void
.end method

.method public final getChecksum()I
    .registers 1

    .line 24
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->checksum:I

    return p0
.end method

.method public final getChunkGID()[B
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->chunkGID:[B

    return-object p0
.end method

.method public final getCompressedSize()I
    .registers 1

    .line 27
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->compressedSize:I

    return p0
.end method

.method public final getDecompressedSize()I
    .registers 1

    .line 26
    iget p0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->decompressedSize:I

    return p0
.end method

.method public final getOffset()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->offset:J

    return-wide v0
.end method

.method public final setChecksum(I)V
    .registers 2

    .line 24
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->checksum:I

    return-void
.end method

.method public final setChunkGID([B)V
    .registers 2

    .line 23
    iput-object p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->chunkGID:[B

    return-void
.end method

.method public final setCompressedSize(I)V
    .registers 2

    .line 27
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->compressedSize:I

    return-void
.end method

.method public final setDecompressedSize(I)V
    .registers 2

    .line 26
    iput p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->decompressedSize:I

    return-void
.end method

.method public final setOffset(J)V
    .registers 3

    .line 25
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/Steam3Manifest$FileMapping$Chunk;->offset:J

    return-void
.end method

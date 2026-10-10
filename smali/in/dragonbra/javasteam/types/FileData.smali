###### Class in.dragonbra.javasteam.types.FileData (in.dragonbra.javasteam.types.FileData)
.class public final Lin/dragonbra/javasteam/types/FileData;
.super Ljava/lang/Object;
.source "FileData.kt"


# instance fields
.field private chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            ">;"
        }
    .end annotation
.end field

.field private fileHash:[B

.field private fileName:Ljava/lang/String;

.field private fileNameHash:[B

.field private flags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EDepotFileFlag;",
            ">;"
        }
    .end annotation
.end field

.field private linkTarget:Ljava/lang/String;

.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .registers 12

    .line 0
    const/16 v9, 0x7f

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lin/dragonbra/javasteam/types/FileData;-><init>(Ljava/lang/String;[BLjava/util/List;Ljava/util/EnumSet;J[BLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/EnumSet;J[BLjava/lang/String;ZI)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EDepotFileFlag;",
            ">;J[B",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    const-string v0, "filename"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filenameHash"

    move-object v7, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flag"

    move-object v8, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkTarget"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p8, :cond_24

    move-object v2, v1

    goto :goto_31

    .line 42
    :cond_24
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x5c

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 44
    :goto_31
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v0, p9

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 41
    invoke-direct/range {v1 .. v9}, Lin/dragonbra/javasteam/types/FileData;-><init>(Ljava/lang/String;[BLjava/util/List;Ljava/util/EnumSet;J[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/List;Ljava/util/EnumSet;J[BLjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EDepotFileFlag;",
            ">;J[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileNameHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chunks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileHash"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lin/dragonbra/javasteam/types/FileData;->fileName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lin/dragonbra/javasteam/types/FileData;->fileNameHash:[B

    .line 23
    iput-object p3, p0, Lin/dragonbra/javasteam/types/FileData;->chunks:Ljava/util/List;

    .line 24
    iput-object p4, p0, Lin/dragonbra/javasteam/types/FileData;->flags:Ljava/util/EnumSet;

    .line 25
    iput-wide p5, p0, Lin/dragonbra/javasteam/types/FileData;->totalSize:J

    .line 26
    iput-object p7, p0, Lin/dragonbra/javasteam/types/FileData;->fileHash:[B

    .line 27
    iput-object p8, p0, Lin/dragonbra/javasteam/types/FileData;->linkTarget:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[BLjava/util/List;Ljava/util/EnumSet;J[BLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 19

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_7

    .line 21
    const-string v0, ""

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    and-int/lit8 v1, p9, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 20
    new-array v1, v2, [B

    goto :goto_11

    :cond_10
    move-object v1, p2

    :goto_11
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_1b

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1c

    :cond_1b
    move-object v3, p3

    :goto_1c
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_2c

    .line 24
    const-class v4, Lin/dragonbra/javasteam/enums/EDepotFileFlag;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const-string v5, "noneOf(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2d

    :cond_2c
    move-object v4, p4

    :goto_2d
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_34

    const-wide/16 v5, 0x0

    goto :goto_35

    :cond_34
    move-wide v5, p5

    :goto_35
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_3c

    .line 20
    new-array v2, v2, [B

    goto :goto_3d

    :cond_3c
    move-object v2, p7

    :goto_3d
    and-int/lit8 v7, p9, 0x40

    if-eqz v7, :cond_43

    const/4 v7, 0x0

    goto :goto_45

    :cond_43
    move-object/from16 v7, p8

    :goto_45
    move-object p1, v0

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move-wide p5, v5

    move-object p7, v2

    move-object/from16 p8, v7

    invoke-direct/range {p0 .. p8}, Lin/dragonbra/javasteam/types/FileData;-><init>(Ljava/lang/String;[BLjava/util/List;Ljava/util/EnumSet;J[BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/types/FileData;Ljava/lang/String;[BLjava/util/List;Ljava/util/EnumSet;J[BLjava/lang/String;ILjava/lang/Object;)Lin/dragonbra/javasteam/types/FileData;
    .registers 20

    .line 0
    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lin/dragonbra/javasteam/types/FileData;->fileName:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object v1, p1

    :goto_9
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lin/dragonbra/javasteam/types/FileData;->fileNameHash:[B

    goto :goto_11

    :cond_10
    move-object v2, p2

    :goto_11
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_18

    iget-object v3, v0, Lin/dragonbra/javasteam/types/FileData;->chunks:Ljava/util/List;

    goto :goto_19

    :cond_18
    move-object v3, p3

    :goto_19
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_20

    iget-object v4, v0, Lin/dragonbra/javasteam/types/FileData;->flags:Ljava/util/EnumSet;

    goto :goto_21

    :cond_20
    move-object v4, p4

    :goto_21
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_28

    iget-wide v5, v0, Lin/dragonbra/javasteam/types/FileData;->totalSize:J

    goto :goto_29

    :cond_28
    move-wide v5, p5

    :goto_29
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_30

    iget-object v7, v0, Lin/dragonbra/javasteam/types/FileData;->fileHash:[B

    goto :goto_32

    :cond_30
    move-object/from16 v7, p7

    :goto_32
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_39

    iget-object v8, v0, Lin/dragonbra/javasteam/types/FileData;->linkTarget:Ljava/lang/String;

    goto :goto_3b

    :cond_39
    move-object/from16 v8, p8

    :goto_3b
    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-wide p5, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lin/dragonbra/javasteam/types/FileData;->copy(Ljava/lang/String;[BLjava/util/List;Ljava/util/EnumSet;J[BLjava/lang/String;)Lin/dragonbra/javasteam/types/FileData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->fileNameHash:[B

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->chunks:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EDepotFileFlag;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->flags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final component5()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/FileData;->totalSize:J

    return-wide v0
.end method

.method public final component6()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->fileHash:[B

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->linkTarget:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;[BLjava/util/List;Ljava/util/EnumSet;J[BLjava/lang/String;)Lin/dragonbra/javasteam/types/FileData;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EDepotFileFlag;",
            ">;J[B",
            "Ljava/lang/String;",
            ")",
            "Lin/dragonbra/javasteam/types/FileData;"
        }
    .end annotation

    .line 0
    const-string v0, "fileName"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileNameHash"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chunks"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileHash"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lin/dragonbra/javasteam/types/FileData;

    move-object v1, v0

    move-wide v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lin/dragonbra/javasteam/types/FileData;-><init>(Ljava/lang/String;[BLjava/util/List;Ljava/util/EnumSet;J[BLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_b

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-class v2, Lin/dragonbra/javasteam/types/FileData;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    .line 55
    :cond_16
    const-string v1, "null cannot be cast to non-null type in.dragonbra.javasteam.types.FileData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lin/dragonbra/javasteam/types/FileData;

    .line 57
    iget-wide v3, p0, Lin/dragonbra/javasteam/types/FileData;->totalSize:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/types/FileData;->totalSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_26

    return v2

    .line 58
    :cond_26
    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/types/FileData;->fileName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    .line 59
    :cond_31
    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->fileNameHash:[B

    iget-object v3, p1, Lin/dragonbra/javasteam/types/FileData;->fileNameHash:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3c

    return v2

    .line 60
    :cond_3c
    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->chunks:Ljava/util/List;

    iget-object v3, p1, Lin/dragonbra/javasteam/types/FileData;->chunks:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    return v2

    .line 61
    :cond_47
    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->flags:Ljava/util/EnumSet;

    iget-object v3, p1, Lin/dragonbra/javasteam/types/FileData;->flags:Ljava/util/EnumSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    return v2

    .line 62
    :cond_52
    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->fileHash:[B

    iget-object v3, p1, Lin/dragonbra/javasteam/types/FileData;->fileHash:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5d

    return v2

    .line 63
    :cond_5d
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->linkTarget:Ljava/lang/String;

    iget-object p1, p1, Lin/dragonbra/javasteam/types/FileData;->linkTarget:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    return v2

    :cond_68
    return v0
.end method

.method public final getChunks()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->chunks:Ljava/util/List;

    return-object p0
.end method

.method public final getFileHash()[B
    .registers 1

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->fileHash:[B

    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileNameHash()[B
    .registers 1

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->fileNameHash:[B

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

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->flags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getLinkTarget()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->linkTarget:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotalSize()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/FileData;->totalSize:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .line 69
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/FileData;->totalSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->fileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->fileNameHash:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->chunks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->flags:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->fileHash:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->linkTarget:Ljava/lang/String;

    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    add-int/2addr v0, p0

    return v0
.end method

.method public final setChunks(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/types/ChunkData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lin/dragonbra/javasteam/types/FileData;->chunks:Ljava/util/List;

    return-void
.end method

.method public final setFileHash([B)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lin/dragonbra/javasteam/types/FileData;->fileHash:[B

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lin/dragonbra/javasteam/types/FileData;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setFileNameHash([B)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lin/dragonbra/javasteam/types/FileData;->fileNameHash:[B

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

    .line 24
    iput-object p1, p0, Lin/dragonbra/javasteam/types/FileData;->flags:Ljava/util/EnumSet;

    return-void
.end method

.method public final setLinkTarget(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lin/dragonbra/javasteam/types/FileData;->linkTarget:Ljava/lang/String;

    return-void
.end method

.method public final setTotalSize(J)V
    .registers 3

    .line 25
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/FileData;->totalSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/types/FileData;->fileName:Ljava/lang/String;

    iget-object v1, p0, Lin/dragonbra/javasteam/types/FileData;->fileNameHash:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lin/dragonbra/javasteam/types/FileData;->chunks:Ljava/util/List;

    iget-object v3, p0, Lin/dragonbra/javasteam/types/FileData;->flags:Ljava/util/EnumSet;

    iget-wide v4, p0, Lin/dragonbra/javasteam/types/FileData;->totalSize:J

    iget-object v6, p0, Lin/dragonbra/javasteam/types/FileData;->fileHash:[B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lin/dragonbra/javasteam/types/FileData;->linkTarget:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileData(fileName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fileNameHash="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", chunks="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", flags="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", totalSize="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", fileHash="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", linkTarget="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

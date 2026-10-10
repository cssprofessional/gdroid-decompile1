###### Class org.apache.commons.lang3.Strings (org.apache.commons.lang3.Strings)
.class public abstract Lorg/apache/commons/lang3/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/Strings$CiStrings;,
        Lorg/apache/commons/lang3/Strings$CsStrings;
    }
.end annotation


# static fields
.field public static final CI:Lorg/apache/commons/lang3/Strings;

.field public static final CS:Lorg/apache/commons/lang3/Strings;


# instance fields
.field public final ignoreCase:Z

.field public final nullIsLess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 268
    new-instance v0, Lorg/apache/commons/lang3/Strings$CiStrings;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/Strings$CiStrings;-><init>(ZLorg/apache/commons/lang3/Strings$1;)V

    sput-object v0, Lorg/apache/commons/lang3/Strings;->CI:Lorg/apache/commons/lang3/Strings;

    .line 273
    new-instance v0, Lorg/apache/commons/lang3/Strings$CsStrings;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/Strings$CsStrings;-><init>(ZLorg/apache/commons/lang3/Strings$1;)V

    sput-object v0, Lorg/apache/commons/lang3/Strings;->CS:Lorg/apache/commons/lang3/Strings;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-boolean p1, p0, Lorg/apache/commons/lang3/Strings;->ignoreCase:Z

    .line 335
    iput-boolean p2, p0, Lorg/apache/commons/lang3/Strings;->nullIsLess:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLorg/apache/commons/lang3/Strings$1;)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/Strings;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public abstract contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
.end method

.method public startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    if-nez p2, :cond_6

    goto :goto_1c

    .line 1407
    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1408
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v6, v1, :cond_11

    return v0

    .line 1411
    :cond_11
    iget-boolean v2, p0, Lorg/apache/commons/lang3/Strings;->ignoreCase:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    if-ne p1, p2, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

###### Class org.apache.commons.lang3.Strings.AnonymousClass1 (org.apache.commons.lang3.Strings$1)
.class public synthetic Lorg/apache/commons/lang3/Strings$1;
.super Ljava/lang/Object;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class org.apache.commons.lang3.Strings.CiStrings (org.apache.commons.lang3.Strings$CiStrings)
.class public final Lorg/apache/commons/lang3/Strings$CiStrings;
.super Lorg/apache/commons/lang3/Strings;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CiStrings"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/lang3/Strings;-><init>(ZZLorg/apache/commons/lang3/Strings$1;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLorg/apache/commons/lang3/Strings$1;)V
    .registers 3

    .line 91
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/Strings$CiStrings;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 12

    const/4 p0, 0x0

    if-eqz p1, :cond_24

    if-nez p2, :cond_6

    goto :goto_24

    .line 117
    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v7, v0, v6

    move v8, p0

    :goto_11
    if-gt v8, v7, :cond_24

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, v8

    move-object v3, p2

    move v5, v6

    .line 120
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_24
    :goto_24
    return p0
.end method

###### Class org.apache.commons.lang3.Strings.CsStrings (org.apache.commons.lang3.Strings$CsStrings)
.class public final Lorg/apache/commons/lang3/Strings$CsStrings;
.super Lorg/apache/commons/lang3/Strings;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CsStrings"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/lang3/Strings;-><init>(ZZLorg/apache/commons/lang3/Strings$1;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLorg/apache/commons/lang3/Strings$1;)V
    .registers 3

    .line 198
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/Strings$CsStrings;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 p0, 0x0

    .line 221
    invoke-static {p1, p2, p0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p0, 0x1

    :cond_8
    return p0
.end method

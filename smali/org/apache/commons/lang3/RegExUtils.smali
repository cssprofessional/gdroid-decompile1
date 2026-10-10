###### Class org.apache.commons.lang3.RegExUtils (org.apache.commons.lang3.RegExUtils)
.class public Lorg/apache/commons/lang3/RegExUtils;
.super Ljava/lang/Object;
.source "RegExUtils.java"


# static fields
.field public static final VERSION_SPLIT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-string v0, "\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/RegExUtils;->VERSION_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

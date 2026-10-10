###### Class com.gmodvr.flat.CustomContentName (com.gmodvr.flat.CustomContentName)
.class public final Lcom/gmodvr/flat/CustomContentName;
.super Ljava/lang/Object;
.source "CustomContentName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/CustomContentName$Parsed;
    }
.end annotation


# static fields
.field public static final DISABLED_MARKER:Ljava/lang/String; = ".sourceandroid-disabled"

.field public static final DISABLED_PREFIX:Ljava/lang/String; = ".sourceandroid-disabled-"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/gmodvr/flat/CustomContentName$Parsed;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_47

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_47

    .line 18
    :cond_a
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x1

    move v3, v2

    move-object v2, p0

    goto :goto_34

    .line 21
    :cond_16
    const-string v2, ".sourceandroid-disabled-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    const/16 v2, 0x18

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_34

    .line 24
    :cond_26
    const-string v2, ".sourcevr-disabled-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    const/16 v2, 0x13

    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    :goto_34
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_47

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_47

    .line 32
    :cond_41
    new-instance v1, Lcom/gmodvr/flat/CustomContentName$Parsed;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/gmodvr/flat/CustomContentName$Parsed;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gmodvr/flat/CustomContentName-IA;)V

    return-object v1

    :cond_47
    :goto_47
    return-object v0
.end method

.method public static physicalName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_25

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    if-eqz p1, :cond_13

    goto :goto_24

    .line 39
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ".sourceandroid-disabled-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_24
    return-object p0

    .line 37
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid custom-content name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.gmodvr.flat.CustomContentName.Parsed (com.gmodvr.flat.CustomContentName$Parsed)
.class public final Lcom/gmodvr/flat/CustomContentName$Parsed;
.super Ljava/lang/Object;
.source "CustomContentName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/CustomContentName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parsed"
.end annotation


# instance fields
.field public final canonicalName:Ljava/lang/String;

.field public final enabled:Z

.field public final physicalName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/gmodvr/flat/CustomContentName$Parsed;->physicalName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/gmodvr/flat/CustomContentName$Parsed;->canonicalName:Ljava/lang/String;

    .line 50
    iput-boolean p3, p0, Lcom/gmodvr/flat/CustomContentName$Parsed;->enabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/gmodvr/flat/CustomContentName-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/CustomContentName$Parsed;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public identityKey()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/gmodvr/flat/CustomContentName$Parsed;->canonicalName:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public oppositePhysicalName()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/gmodvr/flat/CustomContentName$Parsed;->canonicalName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/gmodvr/flat/CustomContentName$Parsed;->enabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/gmodvr/flat/CustomContentName;->physicalName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

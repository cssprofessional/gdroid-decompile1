###### Class com.gmodvr.flat.LauncherFranchise (com.gmodvr.flat.LauncherFranchise)
.class public final Lcom/gmodvr/flat/LauncherFranchise;
.super Ljava/lang/Object;
.source "LauncherFranchise.java"


# static fields
.field public static final GARRYSMOD_ID:Ljava/lang/String; = "garrysmod"

.field public static final HALF_LIFE_ID:Ljava/lang/String; = "half_life"

.field public static final PORTAL_ID:Ljava/lang/String; = "portal"


# instance fields
.field public final accentColor:I

.field public final displayName:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameContentProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameContentProfile;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/gmodvr/flat/LauncherFranchise;->id:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/gmodvr/flat/LauncherFranchise;->displayName:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/gmodvr/flat/LauncherFranchise;->accentColor:I

    .line 25
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherFranchise;->profiles:Ljava/util/List;

    return-void
.end method

.method public static defaultFranchises()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/LauncherFranchise;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/gmodvr/flat/LauncherFranchise;

    sget-object v1, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    .line 30
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "garrysmod"

    const-string v3, "Garry\'s Mod"

    const v4, -0xd26301

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/gmodvr/flat/LauncherFranchise;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

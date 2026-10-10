###### Class com.gmodvr.flat.ModManagerActivity (com.gmodvr.flat.ModManagerActivity)
.class public final Lcom/gmodvr/flat/ModManagerActivity;
.super Landroid/app/Activity;
.source "ModManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;
    }
.end annotation


# instance fields
.field private addons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ">;"
        }
    .end annotation
.end field

.field private addonsRoot:Ljava/io/File;

.field private destroyed:Z

.field private displayedSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ModManager$GameSection;",
            ">;"
        }
    .end annotation
.end field

.field private focusedMod:Ljava/lang/String;

.field private gmodUser:Ljava/io/File;

.field private localAddons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ">;"
        }
    .end annotation
.end field

.field private modList:Landroid/widget/LinearLayout;

.field private operationInProgress:Z

.field private permissionButton:Landroid/widget/Button;

.field private refreshGeneration:I

.field private skin:Lcom/gmodvr/flat/Skin;

.field private status:Landroid/widget/TextView;

.field private final ui:Landroid/os/Handler;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$1uEua9eE7GhLjTcoxtKhmIpf0wc(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/view/View;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderLocalAddons$12(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$55LRBPIeQR3wno3k8LfeOpYvZ-Q(Lcom/gmodvr/flat/ModManagerActivity;ZLcom/gmodvr/flat/ModManager$ModEntry;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$toggleMod$18(ZLcom/gmodvr/flat/ModManager$ModEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8n3T7TGTIa0PZKORLKr8FCxeAEQ(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$ModEntry;Ljava/io/IOException;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$toggleMod$19(Lcom/gmodvr/flat/ModManager$ModEntry;Ljava/io/IOException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8tgbmN2awQAGgsuVSCkLAYCYfGQ(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderAddons$3(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BvUsA91MFzb2i3nNTb_46PuMnNg(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderAddons$4(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EJAIUZVnpo9wKitSdglcmb1k3_E(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/view/View;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderAddons$7(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ki_W7DVs_V93b2pyMjfVBgMsuCo(Lcom/gmodvr/flat/ModManagerActivity;Ljava/lang/String;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderLocalAddons$9(Ljava/lang/String;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tcchre7jJ4FzukXdipes3VwRybE(Lcom/gmodvr/flat/ModManagerActivity;ILjava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$refresh$0(ILjava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UwEdRfqigAWXm3WmCnDwwKlDPRA(Lcom/gmodvr/flat/ModManagerActivity;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$refresh$2(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X5mZnvVlZjhcYW8ctxjyP6mmYtU(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderLocalAddons$10(Lcom/gmodvr/flat/GmodAddons$Addon;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XJhufurw2wNjObNS_Wx3W5OAXHE(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderAddons$6(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xs5NA2CZx4rTEEJPD0WooS_F2rs(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderLocalAddons$11(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YbMUzLSaePtwuJ0f0s5DzlO2bvw(Lcom/gmodvr/flat/ModManagerActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/ModManagerActivity;->requestStorageAccess()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZR3VktBmP6-x-J9DuzQL1uks8oE(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$GameSection;Lcom/gmodvr/flat/ModManager$ModEntry;Landroid/widget/ToggleButton;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderSections$17(Lcom/gmodvr/flat/ModManager$GameSection;Lcom/gmodvr/flat/ModManager$ModEntry;Landroid/widget/ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aW4DJpPe3YXR3Qea5XMhcyweW0U(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderLocalAddons$8(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bQ0lWmC4_FphJX63SPlLFK8KcsM(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$ModEntry;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$toggleMod$20(Lcom/gmodvr/flat/ModManager$ModEntry;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$buDGsnrIMXtyVibZC4sd_c9cwxM(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderAddons$5(Lcom/gmodvr/flat/GmodAddons$Addon;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fYQgZXzjTzSZ9MvPQG_BgdzYTf0(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Group;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderCollections$13(Lcom/gmodvr/flat/GmodAddons$Group;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hJPBBVy9Nm7Rp25Iy1J8PnO86aw(Lcom/gmodvr/flat/ModManagerActivity;ILjava/io/IOException;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$refresh$1(ILjava/io/IOException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jImdgj1xr3_xW5Gzr24pPaySy6A(Lcom/gmodvr/flat/ModManagerActivity;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$runAddon$15(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nLdSO7tiuSJTcAj-odbKB5buDAI(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$runAddon$16(Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wP7w9c8TjH1Bjr-RSH852GMFx_Y(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Group;Landroid/widget/ToggleButton;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/ModManagerActivity;->lambda$renderCollections$14(Lcom/gmodvr/flat/GmodAddons$Group;Landroid/widget/ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->ui:Landroid/os/Handler;

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->displayedSections:Ljava/util/List;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->addons:Ljava/util/List;

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->localAddons:Ljava/util/List;

    return-void
.end method

.method private buildViews()V
    .registers 7

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "franchise"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gmodvr/flat/Skin;->of(Landroid/app/Activity;Ljava/lang/String;)Lcom/gmodvr/flat/Skin;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    .line 69
    const-string v1, "Mod manager"

    const-string v2, "Garry\'s Mod addons (srceng/garrysmod/addons, including Workshop downloads) and asset packs in custom/ folders."

    invoke-virtual {v0, v1, v2}, Lcom/gmodvr/flat/Skin;->screen(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v2, v1, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->panel(I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x41600000    # 14.0f

    const v4, -0x191513

    const-string v5, ""

    invoke-virtual {v2, v5, v3, v4}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->status:Landroid/widget/TextView;

    .line 74
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda11;-><init>(Lcom/gmodvr/flat/ModManagerActivity;)V

    const-string v4, "Grant storage access"

    invoke-virtual {v2, v4, v3}, Lcom/gmodvr/flat/Skin;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->permissionButton:Landroid/widget/Button;

    const/16 v3, 0x8

    .line 76
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->permissionButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$refresh$0(ILjava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 9

    .line 124
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->destroyed:Z

    if-nez v0, :cond_5f

    iget v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->refreshGeneration:I

    if-eq p1, v0, :cond_9

    goto :goto_5f

    .line 125
    :cond_9
    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity;->displayedSections:Ljava/util/List;

    .line 126
    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity;->addonsRoot:Ljava/io/File;

    .line 127
    iput-object p4, p0, Lcom/gmodvr/flat/ModManagerActivity;->gmodUser:Ljava/io/File;

    .line 128
    iput-object p5, p0, Lcom/gmodvr/flat/ModManagerActivity;->addons:Ljava/util/List;

    .line 129
    iput-object p6, p0, Lcom/gmodvr/flat/ModManagerActivity;->localAddons:Ljava/util/List;

    .line 130
    iget-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 131
    invoke-direct {p0, p5}, Lcom/gmodvr/flat/ModManagerActivity;->renderAddons(Ljava/util/List;)V

    .line 132
    invoke-direct {p0, p6}, Lcom/gmodvr/flat/ModManagerActivity;->renderLocalAddons(Ljava/util/List;)V

    .line 133
    invoke-direct {p0, p2}, Lcom/gmodvr/flat/ModManagerActivity;->renderSections(Ljava/util/List;)V

    if-nez p7, :cond_5f

    .line 135
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p1, p3

    .line 136
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmodvr/flat/ModManager$GameSection;

    iget-object p3, p3, Lcom/gmodvr/flat/ModManager$GameSection;->mods:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p1, p3

    goto :goto_30

    .line 137
    :cond_44
    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity;->status:Landroid/widget/TextView;

    if-nez p1, :cond_4b

    const-string p1, "No addons yet. Download Workshop items from Steam, or copy addon folders into srceng/garrysmod/addons."

    goto :goto_5c

    .line 138
    :cond_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " addon(s) and mod(s) found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    :goto_5c
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private synthetic lambda$refresh$1(ILjava/io/IOException;)V
    .registers 4

    .line 143
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->destroyed:Z

    if-nez v0, :cond_23

    iget v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->refreshGeneration:I

    if-eq p1, v0, :cond_9

    goto :goto_23

    .line 144
    :cond_9
    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity;->status:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error scanning mods: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    :goto_23
    return-void
.end method

.method private synthetic lambda$refresh$2(ILjava/lang/String;)V
    .registers 15

    .line 113
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "user"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-static {}, Lcom/gmodvr/flat/GameContentProfile;->all()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/GameContentProfile;

    .line 116
    invoke-static {p0, v2}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v3

    .line 117
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 116
    invoke-static {v3, v0, v2}, Lcom/gmodvr/flat/ModManager;->scan(Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_18

    :catch_34
    move-exception p2

    goto :goto_57

    .line 119
    :cond_36
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v7

    .line 120
    invoke-static {p0, v0}, Lcom/gmodvr/flat/Storage;->user(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v8

    .line 121
    invoke-static {v7}, Lcom/gmodvr/flat/GmodAddons;->list(Ljava/io/File;)Ljava/util/List;

    move-result-object v9

    .line 122
    invoke-static {v7}, Lcom/gmodvr/flat/GmodAddons;->listLocal(Ljava/io/File;)Ljava/util/List;

    move-result-object v10

    .line 123
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move-object v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/ModManagerActivity;ILjava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_56} :catch_34

    goto :goto_61

    .line 142
    :goto_57
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/ModManagerActivity;ILjava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_61
    return-void
.end method

.method private synthetic lambda$renderAddons$3(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->addonsRoot:Ljava/io/File;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity;->gmodUser:Ljava/io/File;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/GmodAddons;->setEnabled(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;Z)Lcom/gmodvr/flat/GmodAddons$Addon;

    return-void
.end method

.method private synthetic lambda$renderAddons$4(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;Landroid/view/View;)V
    .registers 5

    .line 160
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addon/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity;->focusedMod:Ljava/lang/String;

    .line 161
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    if-eqz v0, :cond_21

    const-string v0, "Disabling "

    goto :goto_23

    :cond_21
    const-string v0, "Enabling "

    :goto_23
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda6;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V

    invoke-direct {p0, p3, v0}, Lcom/gmodvr/flat/ModManagerActivity;->runAddon(Ljava/lang/String;Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;)V

    return-void
.end method

.method private synthetic lambda$renderAddons$5(Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->addonsRoot:Ljava/io/File;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity;->gmodUser:Ljava/io/File;

    invoke-static {v0, p0, p1}, Lcom/gmodvr/flat/GmodAddons;->remove(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    return-void
.end method

.method private synthetic lambda$renderAddons$6(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Removing "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda20;

    invoke-direct {p3, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    invoke-direct {p0, p2, p3}, Lcom/gmodvr/flat/ModManagerActivity;->runAddon(Ljava/lang/String;Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;)V

    return-void
.end method

.method private synthetic lambda$renderAddons$7(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/view/View;)Z
    .registers 5

    .line 174
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v0, "Deletes the addon\'s files. Download it again from Steam to restore it."

    .line 175
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    .line 176
    const-string p0, "Remove"

    invoke-virtual {p2, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 p2, 0x0

    .line 178
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$renderCollections$13(Lcom/gmodvr/flat/GmodAddons$Group;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->addonsRoot:Ljava/io/File;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity;->gmodUser:Ljava/io/File;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/GmodAddons;->setGroupEnabled(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Group;Z)I

    return-void
.end method

.method private synthetic lambda$renderCollections$14(Lcom/gmodvr/flat/GmodAddons$Group;Landroid/widget/ToggleButton;Landroid/view/View;)V
    .registers 5

    .line 244
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collection/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/gmodvr/flat/GmodAddons$Group;->id:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity;->focusedMod:Ljava/lang/String;

    .line 245
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    .line 246
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_23

    const-string v0, "Enabling "

    goto :goto_25

    :cond_23
    const-string v0, "Disabling "

    :goto_25
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "collection "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Group;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda10;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Group;Z)V

    invoke-direct {p0, p3, v0}, Lcom/gmodvr/flat/ModManagerActivity;->runAddon(Ljava/lang/String;Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;)V

    return-void
.end method

.method private synthetic lambda$renderLocalAddons$10(Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->addonsRoot:Ljava/io/File;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity;->gmodUser:Ljava/io/File;

    invoke-static {v0, p0, p1}, Lcom/gmodvr/flat/GmodAddons;->remove(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    return-void
.end method

.method private synthetic lambda$renderLocalAddons$11(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Deleting "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    invoke-direct {p0, p2, p3}, Lcom/gmodvr/flat/ModManagerActivity;->runAddon(Ljava/lang/String;Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;)V

    return-void
.end method

.method private synthetic lambda$renderLocalAddons$12(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/view/View;)Z
    .registers 6

    .line 218
    iget-boolean p2, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    if-eqz p2, :cond_7

    const-string p2, "addons"

    goto :goto_9

    :cond_7
    const-string p2, "addons_disabled"

    .line 219
    :goto_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This addon was copied into srceng/garrysmod/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " by hand. It did not come from the Workshop, so the launcher cannot download it again: deleting removes its files for good. Turn it off instead to keep it."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 220
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda14;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    .line 223
    const-string p0, "Delete"

    invoke-virtual {p2, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 p2, 0x0

    .line 225
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$renderLocalAddons$8(Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->addonsRoot:Ljava/io/File;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity;->gmodUser:Ljava/io/File;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/GmodAddons;->setEnabled(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GmodAddons$Addon;Z)Lcom/gmodvr/flat/GmodAddons$Addon;

    return-void
.end method

.method private synthetic lambda$renderLocalAddons$9(Ljava/lang/String;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;Landroid/view/View;)V
    .registers 5

    .line 200
    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity;->focusedMod:Ljava/lang/String;

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p4, p2, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    if-eqz p4, :cond_e

    const-string p4, "Disabling "

    goto :goto_10

    :cond_e
    const-string p4, "Enabling "

    :goto_10
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda8;

    invoke-direct {p4, p0, p2, p3}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda8;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V

    invoke-direct {p0, p1, p4}, Lcom/gmodvr/flat/ModManagerActivity;->runAddon(Ljava/lang/String;Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;)V

    return-void
.end method

.method private synthetic lambda$renderSections$17(Lcom/gmodvr/flat/ModManager$GameSection;Lcom/gmodvr/flat/ModManager$ModEntry;Landroid/widget/ToggleButton;Landroid/view/View;)V
    .registers 5

    .line 287
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/gmodvr/flat/ModManager$GameSection;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object p1, p1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity;->focusedMod:Ljava/lang/String;

    .line 288
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/gmodvr/flat/ModManagerActivity;->toggleMod(Lcom/gmodvr/flat/ModManager$ModEntry;Z)V

    return-void
.end method

.method private synthetic lambda$runAddon$15(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->refresh(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$runAddon$16(Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;Ljava/lang/String;)V
    .registers 4

    .line 269
    :try_start_0
    invoke-interface {p1}, Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;->run()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Done: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_31

    :catch_1b
    move-exception p1

    .line 270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 272
    :goto_31
    iget-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity;->ui:Landroid/os/Handler;

    new-instance v0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda13;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$toggleMod$18(ZLcom/gmodvr/flat/ModManager$ModEntry;)V
    .registers 4

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_d

    const-string p1, "Enabled "

    goto :goto_f

    :cond_d
    const-string p1, "Disabled "

    :goto_f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->refresh(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$toggleMod$19(Lcom/gmodvr/flat/ModManager$ModEntry;Ljava/io/IOException;)V
    .registers 5

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->refresh(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$toggleMod$20(Lcom/gmodvr/flat/ModManager$ModEntry;Z)V
    .registers 5

    .line 312
    :try_start_0
    invoke-static {p1, p2}, Lcom/gmodvr/flat/ModManager;->setEnabled(Lcom/gmodvr/flat/ModManager$ModEntry;Z)Lcom/gmodvr/flat/ModManager$ModEntry;

    .line 313
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p2, p1}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda18;-><init>(Lcom/gmodvr/flat/ModManagerActivity;ZLcom/gmodvr/flat/ModManager$ModEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_19

    :catch_e
    move-exception p2

    .line 318
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda19;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$ModEntry;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_19
    return-void
.end method

.method private refresh(Ljava/lang/String;)V
    .registers 5

    .line 100
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->destroyed:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_48

    .line 101
    :cond_d
    iget v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->refreshGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->refreshGeneration:I

    .line 102
    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 103
    iget-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity;->status:Landroid/widget/TextView;

    const-string v0, "Allow storage access to view and manage game mods."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity;->permissionButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    .line 108
    :cond_2c
    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->permissionButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->status:Landroid/widget/TextView;

    if-eqz p1, :cond_39

    move-object v2, p1

    goto :goto_3b

    :cond_39
    const-string v2, "Scanning for custom mods\u2026"

    :goto_3b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0, p1}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda12;-><init>(Lcom/gmodvr/flat/ModManagerActivity;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_48
    :goto_48
    return-void
.end method

.method private renderAddons(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 153
    :cond_7
    invoke-static {p1}, Lcom/gmodvr/flat/GmodAddons;->groups(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/ModManagerActivity;->renderCollections(Ljava/util/List;)V

    .line 154
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v2, "Garry\'s Mod addons"

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/GmodAddons$Addon;

    .line 156
    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-boolean v2, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->toggle(Z)Landroid/widget/ToggleButton;

    move-result-object v1

    .line 157
    iget-boolean v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    if-nez v2, :cond_45

    iget-boolean v2, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-nez v2, :cond_45

    const/4 v2, 0x1

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :goto_46
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v2, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, v1}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    .line 165
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 166
    iget-object v3, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-boolean v4, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-eqz v4, :cond_6b

    const-string v4, "Conflict"

    goto :goto_71

    :cond_6b
    iget-wide v4, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->size:J

    invoke-static {v4, v5}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v4

    .line 167
    :goto_71
    iget-boolean v5, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-eqz v5, :cond_79

    const v5, -0x179fb1

    goto :goto_7c

    :cond_79
    const v5, -0xa49991

    .line 166
    :goto_7c
    invoke-virtual {v3, v4, v5}, Lcom/gmodvr/flat/Skin;->tag(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v5, 0x42500000    # 52.0f

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    iget-object v5, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-virtual {v5, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    iget-object v4, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 170
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Addon;->author()Ljava/lang/String;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Workshop "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_c8
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 173
    new-instance v3, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    iget-object v3, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addon/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->focusedMod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_27

    :cond_fa
    return-void
.end method

.method private renderCollections(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Group;",
            ">;)V"
        }
    .end annotation

    .line 236
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 237
    :cond_7
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v2, "Workshop collections"

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/GmodAddons$Group;

    .line 239
    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Group;->enabled()I

    move-result v1

    .line 240
    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-object v3, v0, Lcom/gmodvr/flat/GmodAddons$Group;->addons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_3d

    move v3, v4

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->toggle(Z)Landroid/widget/ToggleButton;

    move-result-object v2

    .line 241
    iget-boolean v3, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 242
    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Group;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 243
    new-instance v3, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0, v2}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda9;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Group;Landroid/widget/ToggleButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x10

    .line 250
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 251
    iget-object v4, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/gmodvr/flat/GmodAddons$Group;->addons:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " on"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_88

    const v1, -0xa49991

    goto :goto_8b

    :cond_88
    const v1, -0x72665d

    :goto_8b
    invoke-virtual {v4, v5, v1}, Lcom/gmodvr/flat/Skin;->tag(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 252
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v5, 0x42500000    # 52.0f

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    iget-object v5, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-virtual {v5, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    iget-object v4, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 254
    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Group;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/gmodvr/flat/GmodAddons$Group;->addons:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " addon(s), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Group;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". The switch turns all of them on or off."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collection/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/gmodvr/flat/GmodAddons$Group;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->focusedMod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_20

    :cond_10b
    return-void
.end method

.method private renderLocalAddons(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodAddons$Addon;",
            ">;)V"
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v2, "Local addons (added by hand)"

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_172

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/GmodAddons$Addon;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-boolean v3, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->enabled:Z

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->toggle(Z)Landroid/widget/ToggleButton;

    move-result-object v2

    .line 197
    iget-boolean v3, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    if-nez v3, :cond_55

    iget-boolean v3, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-nez v3, :cond_55

    iget-boolean v3, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->builtin:Z

    if-nez v3, :cond_55

    const/4 v3, 0x1

    goto :goto_56

    :cond_55
    const/4 v3, 0x0

    :goto_56
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v3, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Ljava/lang/String;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x10

    .line 205
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 206
    iget-object v4, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-boolean v5, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-eqz v5, :cond_7b

    const-string v5, "Conflict"

    goto :goto_8c

    :cond_7b
    iget-boolean v5, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->builtin:Z

    if-eqz v5, :cond_86

    sget v5, Lcom/gmodvr/flat/R$string;->app_name:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8c

    :cond_86
    iget-wide v5, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->size:J

    invoke-static {v5, v6}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v5

    .line 207
    :goto_8c
    iget-boolean v6, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-eqz v6, :cond_94

    const v6, -0x179fb1

    goto :goto_97

    :cond_94
    const v6, -0xa49991

    .line 206
    :goto_97
    invoke-virtual {v4, v5, v6}, Lcom/gmodvr/flat/Skin;->tag(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v6, 0x42500000    # 52.0f

    invoke-virtual {v5, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    iget-object v6, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {v6, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    iget-object v5, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 210
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->kind:Lcom/gmodvr/flat/GmodAddons$Kind;

    sget-object v6, Lcom/gmodvr/flat/GmodAddons$Kind;->LOCAL_GMA:Lcom/gmodvr/flat/GmodAddons$Kind;

    if-ne v5, v6, :cond_ce

    const-string v5, "Archive "

    goto :goto_d0

    :cond_ce
    const-string v5, "Folder "

    :goto_d0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    iget-boolean v5, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->builtin:Z

    if-eqz v5, :cond_102

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Part of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/gmodvr/flat/R$string;->app_name:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_149

    .line 213
    :cond_102
    iget-boolean v5, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->conflict:Z

    if-eqz v5, :cond_118

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is in both addons and addons_disabled; remove one copy"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_149

    .line 214
    :cond_118
    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Addon;->author()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v6, "Local \u00b7 "

    if-eqz v5, :cond_134

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_12c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_149

    :cond_134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Addon;->author()Ljava/lang/String;

    move-result-object v4

    goto :goto_12c

    .line 215
    :goto_149
    iget-object v5, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v0}, Lcom/gmodvr/flat/GmodAddons$Addon;->title()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v3, v7}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 216
    iget-boolean v4, v0, Lcom/gmodvr/flat/GmodAddons$Addon;->builtin:Z

    if-nez v4, :cond_160

    .line 217
    new-instance v4, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0, v0}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda16;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 229
    :cond_160
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->focusedMod:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_20

    :cond_172
    return-void
.end method

.method private renderSections(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/ModManager$GameSection;",
            ">;)V"
        }
    .end annotation

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/ModManager$GameSection;

    .line 278
    iget-object v1, v0, Lcom/gmodvr/flat/ModManager$GameSection;->mods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_4

    .line 279
    :cond_19
    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-object v3, v0, Lcom/gmodvr/flat/ModManager$GameSection;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v3, v3, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v1, v0, Lcom/gmodvr/flat/ModManager$GameSection;->mods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/ModManager$ModEntry;

    .line 282
    iget-object v3, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-boolean v4, v2, Lcom/gmodvr/flat/ModManager$ModEntry;->enabled:Z

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/Skin;->toggle(Z)Landroid/widget/ToggleButton;

    move-result-object v3

    .line 283
    iget-boolean v4, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    if-nez v4, :cond_54

    iget-boolean v4, v2, Lcom/gmodvr/flat/ModManager$ModEntry;->conflict:Z

    if-nez v4, :cond_54

    const/4 v4, 0x1

    goto :goto_55

    :cond_54
    const/4 v4, 0x0

    :goto_55
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 284
    iget-object v4, v2, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 286
    new-instance v4, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$GameSection;Lcom/gmodvr/flat/ModManager$ModEntry;Landroid/widget/ToggleButton;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    .line 292
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 293
    iget-object v5, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-boolean v6, v2, Lcom/gmodvr/flat/ModManager$ModEntry;->conflict:Z

    if-eqz v6, :cond_78

    const-string v7, "Conflict"

    goto :goto_8a

    :cond_78
    iget-object v7, v2, Lcom/gmodvr/flat/ModManager$ModEntry;->kind:Lcom/gmodvr/flat/ModManager$Kind;

    sget-object v8, Lcom/gmodvr/flat/ModManager$Kind;->FOLDER:Lcom/gmodvr/flat/ModManager$Kind;

    if-ne v7, v8, :cond_81

    const-string v7, "Folder"

    goto :goto_8a

    .line 294
    :cond_81
    sget-object v8, Lcom/gmodvr/flat/ModManager$Kind;->VPK:Lcom/gmodvr/flat/ModManager$Kind;

    if-ne v7, v8, :cond_88

    const-string v7, "VPK"

    goto :goto_8a

    :cond_88
    const-string v7, "Mixed"

    :goto_8a
    if-eqz v6, :cond_90

    const v6, -0x179fb1

    goto :goto_93

    :cond_90
    const v6, -0xa49991

    .line 293
    :goto_93
    invoke-virtual {v5, v7, v6}, Lcom/gmodvr/flat/Skin;->tag(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 295
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v7, 0x42500000    # 52.0f

    invoke-virtual {v6, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    iget-object v7, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-virtual {v7, v8}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 296
    iget-object v6, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v6, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 297
    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v5, p0, Lcom/gmodvr/flat/ModManagerActivity;->modList:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/gmodvr/flat/ModManagerActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-object v7, v2, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v4, v8}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/gmodvr/flat/ModManager$GameSection;->profile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v5, v5, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/gmodvr/flat/ModManagerActivity;->focusedMod:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_36

    :cond_f1
    return-void
.end method

.method private requestStorageAccess()V
    .registers 4

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_37

    .line 88
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    goto :goto_37

    .line 92
    :catch_2d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_37
    :goto_37
    return-void
.end method

.method private runAddon(Ljava/lang/String;Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;)V
    .registers 6

    .line 264
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->destroyed:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_34

    :cond_11
    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    .line 266
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p2, p1}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda17;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_34
    :goto_34
    return-void
.end method

.method private toggleMod(Lcom/gmodvr/flat/ModManager$ModEntry;Z)V
    .registers 6

    .line 306
    iget-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->operationInProgress:Z

    .line 308
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_14

    const-string v2, "Enabling "

    goto :goto_16

    :cond_14
    const-string v2, "Disabling "

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/gmodvr/flat/ModManager$ModEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda21;-><init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$ModEntry;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/gmodvr/flat/ModManagerActivity;->buildViews()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->destroyed:Z

    .line 62
    iget v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->refreshGeneration:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/gmodvr/flat/ModManagerActivity;->refreshGeneration:I

    .line 63
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/ModManagerActivity;->refresh(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity.AddonOperation (com.gmodvr.flat.ModManagerActivity$AddonOperation)
.class interface abstract Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;
.super Ljava/lang/Object;
.source "ModManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ModManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddonOperation"
.end annotation


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda0 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/io/File;

.field public final synthetic f$4:Ljava/io/File;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Ljava/util/List;

.field public final synthetic f$7:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;ILjava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iput-object p5, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$4:Ljava/io/File;

    iput-object p6, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$5:Ljava/util/List;

    iput-object p7, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$6:Ljava/util/List;

    iput-object p8, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iget-object v4, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$4:Ljava/io/File;

    iget-object v5, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$5:Ljava/util/List;

    iget-object v6, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$6:Ljava/util/List;

    iget-object v7, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda0;->f$7:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$Tcchre7jJ4FzukXdipes3VwRybE(Lcom/gmodvr/flat/ModManagerActivity;ILjava/util/List;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda1 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;ILjava/io/IOException;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda1;->f$2:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda1;->f$2:Ljava/io/IOException;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$hJPBBVy9Nm7Rp25Iy1J8PnO86aw(Lcom/gmodvr/flat/ModManagerActivity;ILjava/io/IOException;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda10 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Group;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Group;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda10;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda10;->f$1:Lcom/gmodvr/flat/GmodAddons$Group;

    iput-boolean p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda10;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda10;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda10;->f$1:Lcom/gmodvr/flat/GmodAddons$Group;

    iget-boolean p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda10;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$fYQgZXzjTzSZ9MvPQG_BgdzYTf0(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Group;Z)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda11 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda11;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda11;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$YbMUzLSaePtwuJ0f0s5DzlO2bvw(Lcom/gmodvr/flat/ModManagerActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda12 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda12;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda12;->f$1:I

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda12;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda12;->f$1:I

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$UwEdRfqigAWXm3WmCnDwwKlDPRA(Lcom/gmodvr/flat/ModManagerActivity;ILjava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda13 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda13)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda13;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda13;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$jImdgj1xr3_xW5Gzr24pPaySy6A(Lcom/gmodvr/flat/ModManagerActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda14 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda14)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Addon;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda14;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda14;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda14;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda14;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$Xs5NA2CZx4rTEEJPD0WooS_F2rs(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda15 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda15)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/gmodvr/flat/GmodAddons$Addon;

.field public final synthetic f$3:Landroid/widget/ToggleButton;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Ljava/lang/String;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;->f$2:Lcom/gmodvr/flat/GmodAddons$Addon;

    iput-object p4, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;->f$3:Landroid/widget/ToggleButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;->f$2:Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda15;->f$3:Landroid/widget/ToggleButton;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$Ki_W7DVs_V93b2pyMjfVBgMsuCo(Lcom/gmodvr/flat/ModManagerActivity;Ljava/lang/String;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda16 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda16)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Addon;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda16;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda16;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda16;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda16;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    invoke-static {v0, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$1uEua9eE7GhLjTcoxtKhmIpf0wc(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda17 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda17)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda17;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda17;->f$1:Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda17;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda17;->f$1:Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$nLdSO7tiuSJTcAj-odbKB5buDAI(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda18 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda18)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/gmodvr/flat/ModManager$ModEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;ZLcom/gmodvr/flat/ModManager$ModEntry;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda18;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-boolean p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda18;->f$1:Z

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda18;->f$2:Lcom/gmodvr/flat/ModManager$ModEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda18;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-boolean v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda18;->f$1:Z

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda18;->f$2:Lcom/gmodvr/flat/ModManager$ModEntry;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$55LRBPIeQR3wno3k8LfeOpYvZ-Q(Lcom/gmodvr/flat/ModManagerActivity;ZLcom/gmodvr/flat/ModManager$ModEntry;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda19 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda19)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/ModManager$ModEntry;

.field public final synthetic f$2:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$ModEntry;Ljava/io/IOException;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda19;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda19;->f$1:Lcom/gmodvr/flat/ModManager$ModEntry;

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda19;->f$2:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda19;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda19;->f$1:Lcom/gmodvr/flat/ModManager$ModEntry;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda19;->f$2:Ljava/io/IOException;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$8n3T7TGTIa0PZKORLKr8FCxeAEQ(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$ModEntry;Ljava/io/IOException;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda2 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Addon;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda2;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda2;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$XJhufurw2wNjObNS_Wx3W5OAXHE(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda20 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda20)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Addon;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda20;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda20;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda20;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda20;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$buDGsnrIMXtyVibZC4sd_c9cwxM(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda21 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda21)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/ModManager$ModEntry;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$ModEntry;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda21;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda21;->f$1:Lcom/gmodvr/flat/ModManager$ModEntry;

    iput-boolean p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda21;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda21;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda21;->f$1:Lcom/gmodvr/flat/ModManager$ModEntry;

    iget-boolean p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda21;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$bQ0lWmC4_FphJX63SPlLFK8KcsM(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$ModEntry;Z)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda3 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Addon;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$X5mZnvVlZjhcYW8ctxjyP6mmYtU(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda4 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

.field public final synthetic f$2:Landroid/widget/ToggleButton;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda4;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda4;->f$2:Landroid/widget/ToggleButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda4;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda4;->f$2:Landroid/widget/ToggleButton;

    invoke-static {v0, v1, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$BvUsA91MFzb2i3nNTb_46PuMnNg(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda5 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Addon;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda5;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda5;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    invoke-static {v0, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$EJAIUZVnpo9wKitSdglcmb1k3_E(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda6 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

.field public final synthetic f$2:Landroid/widget/ToggleButton;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda6;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda6;->f$2:Landroid/widget/ToggleButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda6;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda6;->f$2:Landroid/widget/ToggleButton;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$8tgbmN2awQAGgsuVSCkLAYCYfGQ(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda7 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/ModManager$GameSection;

.field public final synthetic f$2:Lcom/gmodvr/flat/ModManager$ModEntry;

.field public final synthetic f$3:Landroid/widget/ToggleButton;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$GameSection;Lcom/gmodvr/flat/ModManager$ModEntry;Landroid/widget/ToggleButton;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;->f$1:Lcom/gmodvr/flat/ModManager$GameSection;

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;->f$2:Lcom/gmodvr/flat/ModManager$ModEntry;

    iput-object p4, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;->f$3:Landroid/widget/ToggleButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;->f$1:Lcom/gmodvr/flat/ModManager$GameSection;

    iget-object v2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;->f$2:Lcom/gmodvr/flat/ModManager$ModEntry;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda7;->f$3:Landroid/widget/ToggleButton;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$ZR3VktBmP6-x-J9DuzQL1uks8oE(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/ModManager$GameSection;Lcom/gmodvr/flat/ModManager$ModEntry;Landroid/widget/ToggleButton;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda8 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/ModManagerActivity$AddonOperation;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

.field public final synthetic f$2:Landroid/widget/ToggleButton;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda8;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda8;->f$2:Landroid/widget/ToggleButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda8;->f$1:Lcom/gmodvr/flat/GmodAddons$Addon;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda8;->f$2:Landroid/widget/ToggleButton;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$aW4DJpPe3YXR3Qea5XMhcyweW0U(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Addon;Landroid/widget/ToggleButton;)V

    return-void
.end method

###### Class com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda9 (com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ModManagerActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GmodAddons$Group;

.field public final synthetic f$2:Landroid/widget/ToggleButton;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Group;Landroid/widget/ToggleButton;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda9;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda9;->f$1:Lcom/gmodvr/flat/GmodAddons$Group;

    iput-object p3, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda9;->f$2:Landroid/widget/ToggleButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda9;->f$0:Lcom/gmodvr/flat/ModManagerActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda9;->f$1:Lcom/gmodvr/flat/GmodAddons$Group;

    iget-object p0, p0, Lcom/gmodvr/flat/ModManagerActivity$$ExternalSyntheticLambda9;->f$2:Landroid/widget/ToggleButton;

    invoke-static {v0, v1, p0, p1}, Lcom/gmodvr/flat/ModManagerActivity;->$r8$lambda$wP7w9c8TjH1Bjr-RSH852GMFx_Y(Lcom/gmodvr/flat/ModManagerActivity;Lcom/gmodvr/flat/GmodAddons$Group;Landroid/widget/ToggleButton;Landroid/view/View;)V

    return-void
.end method

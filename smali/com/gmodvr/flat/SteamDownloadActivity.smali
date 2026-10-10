###### Class com.gmodvr.flat.SteamDownloadActivity (com.gmodvr.flat.SteamDownloadActivity)
.class public final Lcom/gmodvr/flat/SteamDownloadActivity;
.super Landroid/app/Activity;
.source "SteamDownloadActivity.java"


# static fields
.field private static final LANGUAGE_KEYS:[Ljava/lang/String;

.field private static final LANGUAGE_NAMES:[Ljava/lang/String;


# instance fields
.field private access:Landroid/widget/LinearLayout;

.field private accountStatus:Landroid/widget/TextView;

.field private authPrompt:Landroid/widget/TextView;

.field private bytes:Landroid/widget/TextView;

.field private code:Landroid/widget/EditText;

.field private collection:Landroid/widget/Button;

.field private controls:Landroid/widget/LinearLayout;

.field private discard:Landroid/widget/Button;

.field private error:Ljava/lang/String;

.field private franchise:Ljava/lang/String;

.field private gameDownload:Landroid/widget/Button;

.field private games:Landroid/widget/Spinner;

.field private guard:Landroid/widget/LinearLayout;

.field private languages:Landroid/widget/Spinner;

.field private password:Landroid/widget/EditText;

.field private pause:Landroid/widget/Button;

.field private final profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GameContentProfile;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Landroid/widget/ProgressBar;

.field private final refresh:Ljava/lang/Runnable;

.field private remember:Landroid/widget/CheckBox;

.field private resume:Landroid/widget/Button;

.field private reviewOpened:Ljava/lang/String;

.field private sendCode:Landroid/widget/Button;

.field private signIn:Landroid/widget/Button;

.field private signout:Landroid/widget/TextView;

.field private skin:Lcom/gmodvr/flat/Skin;

.field private status:Landroid/widget/TextView;

.field private transfer:Landroid/widget/LinearLayout;

.field private final ui:Landroid/os/Handler;

.field private username:Landroid/widget/EditText;

.field private workshop:Landroid/widget/EditText;

.field private workshopDownload:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$0yLldz13uBdjI5YQKkuUIg7xMDs(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->signIn()V

    return-void
.end method

.method public static synthetic $r8$lambda$34FZMIVMWsJ1OHUCI7XnG9Hcuic(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$3HjQxEHD--U9xUhthze4bSW4RqE(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->lambda$onCreate$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$QaAKxJ4tq3wp2Jg5aSxDEc8-jKo(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->lambda$onCreate$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$T5_K-SpA4RFTjorNUQ6iyAJqCdk(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->discard()V

    return-void
.end method

.method public static synthetic $r8$lambda$TC6FfZ5fp20QPiO73oghEzvnmwQ(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->lambda$onCreate$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$VsiBkD_I7TZ6EY1xFpM6thZvwmo(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->openCollection()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZDzOSXdk9C6FyZ07JY1fqm2y9rQ(Lcom/gmodvr/flat/SteamDownloadActivity;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamDownloadActivity;->lambda$discard$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t9LaZzjS9tIUXAkC5LSStPNY9Ko(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->lambda$onCreate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$xJtIK7qO26wr1ejIaikUoL0OKn8(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->lambda$onCreate$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$xeivYl4S19lTVtK-NTbLQjiLioQ(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->lambda$onCreate$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetui(Lcom/gmodvr/flat/SteamDownloadActivity;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->ui:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrender(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->render()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 15

    .line 32
    const-string v12, "japanese"

    const-string v13, "koreana"

    const-string v0, "english"

    const-string v1, "german"

    const-string v2, "french"

    const-string v3, "spanish"

    const-string v4, "latam"

    const-string v5, "italian"

    const-string v6, "russian"

    const-string v7, "polish"

    const-string v8, "portuguese"

    const-string v9, "brazilian"

    const-string v10, "schinese"

    const-string v11, "tchinese"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/SteamDownloadActivity;->LANGUAGE_KEYS:[Ljava/lang/String;

    .line 36
    const-string v13, "\u65e5\u672c\u8a9e"

    const-string v14, "\ud55c\uad6d\uc5b4"

    const-string v1, "English"

    const-string v2, "Deutsch"

    const-string v3, "Fran\u00e7ais"

    const-string v4, "Espa\u00f1ol (Espa\u00f1a)"

    const-string v5, "Espa\u00f1ol (Latinoam\u00e9rica)"

    const-string v6, "Italiano"

    const-string v7, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    const-string v8, "Polski"

    const-string v9, "Portugu\u00eas"

    const-string v10, "Portugu\u00eas (Brasil)"

    const-string v11, "\u7b80\u4f53\u4e2d\u6587"

    const-string v12, "\u7e41\u9ad4\u4e2d\u6587"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/SteamDownloadActivity;->LANGUAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->ui:Landroid/os/Handler;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->reviewOpened:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->profiles:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/gmodvr/flat/SteamDownloadActivity$1;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/SteamDownloadActivity$1;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->refresh:Ljava/lang/Runnable;

    return-void
.end method

.method private discard()V
    .registers 2

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->error:Ljava/lang/String;

    .line 223
    new-instance v0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamDownloadService;->discard(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 227
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->render()V

    return-void
.end method

.method private field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/EditText;
    .registers 7

    .line 179
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const v1, -0x72665d

    invoke-virtual {v0, p2, v1}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object p2, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p2, p3, p4}, Lcom/gmodvr/flat/Skin;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object p2

    const/4 p3, 0x0

    .line 181
    invoke-virtual {p2, p3}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 182
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-virtual {p0, p3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method private synthetic lambda$discard$7(Ljava/lang/String;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->error:Ljava/lang/String;

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->render()V

    :cond_b
    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 4

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_37

    .line 60
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
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

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    goto :goto_37

    .line 64
    :catch_2d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_37
    :goto_37
    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/gmodvr/flat/SteamDownloadActivity;->start(ZZ)V

    return-void
.end method

.method private synthetic lambda$onCreate$2()V
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/SteamDownloadService;->submitCode(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->code:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreate$3()V
    .registers 3

    .line 129
    new-instance v0, Lcom/gmodvr/flat/SteamCredentialStore;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/SteamCredentialStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/gmodvr/flat/SteamCredentialStore;->clear()V

    .line 130
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->clearSignInMessage()V

    .line 131
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->username:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->remember:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 134
    const-string v0, "Saved Steam account removed."

    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->error:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onCreate$4()V
    .registers 2

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, v0, v0}, Lcom/gmodvr/flat/SteamDownloadActivity;->start(ZZ)V

    return-void
.end method

.method private synthetic lambda$onCreate$5()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, v0, v1}, Lcom/gmodvr/flat/SteamDownloadActivity;->start(ZZ)V

    return-void
.end method

.method private synthetic lambda$onCreate$6()V
    .registers 4

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/ModManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "franchise"

    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->franchise:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openCollection()V
    .registers 4

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "franchise"

    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->franchise:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private render()V
    .registers 18

    move-object/from16 v0, p0

    .line 231
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v1

    .line 232
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->discarding()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v1, :cond_12

    if-eqz v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v5, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    move v5, v4

    .line 234
    :goto_13
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->activationPending(Landroid/content/Context;)Z

    move-result v6

    .line 235
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "token"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    .line 236
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "state"

    const-string v12, "idle"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 238
    iget-object v11, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->gameDownload:Landroid/widget/Button;

    if-nez v5, :cond_3b

    if-nez v6, :cond_3b

    move v12, v4

    goto :goto_3c

    :cond_3b
    const/4 v12, 0x0

    :goto_3c
    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 239
    iget-object v11, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->signIn:Landroid/widget/Button;

    xor-int/lit8 v12, v5, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 240
    iget-object v11, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->workshopDownload:Landroid/widget/Button;

    if-nez v5, :cond_4e

    if-nez v6, :cond_4e

    move v6, v4

    goto :goto_4f

    :cond_4e
    const/4 v6, 0x0

    :goto_4f
    invoke-virtual {v11, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 241
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->resume:Landroid/widget/Button;

    const-string v11, "complete"

    if-nez v5, :cond_62

    if-nez v7, :cond_62

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_62

    move v12, v4

    goto :goto_63

    :cond_62
    const/4 v12, 0x0

    :goto_63
    invoke-virtual {v6, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 242
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->discard:Landroid/widget/Button;

    if-nez v5, :cond_74

    if-nez v7, :cond_74

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_74

    move v7, v4

    goto :goto_75

    :cond_74
    const/4 v7, 0x0

    :goto_75
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 243
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->pause:Landroid/widget/Button;

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->canPause()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 244
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->pause:Landroid/widget/Button;

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->signingIn()Z

    move-result v7

    if-eqz v7, :cond_8c

    const-string v7, "Cancel sign-in"

    goto :goto_8e

    :cond_8c
    const-string v7, "Pause"

    :goto_8e
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->signout:Landroid/widget/TextView;

    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 246
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->games:Landroid/widget/Spinner;

    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 247
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->languages:Landroid/widget/Spinner;

    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 248
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->username:Landroid/widget/EditText;

    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 249
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->password:Landroid/widget/EditText;

    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 250
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->workshop:Landroid/widget/EditText;

    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->remember:Landroid/widget/CheckBox;

    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->signInMessage()Ljava/lang/String;

    move-result-object v6

    .line 253
    iget-object v7, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->accountStatus:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_cf

    goto :goto_df

    .line 254
    :cond_cf
    new-instance v6, Lcom/gmodvr/flat/SteamCredentialStore;

    invoke-direct {v6, v0}, Lcom/gmodvr/flat/SteamCredentialStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/gmodvr/flat/SteamCredentialStore;->hasSavedSession()Z

    move-result v6

    if-eqz v6, :cond_dd

    const-string v6, "Steam sign-in saved on this device."

    goto :goto_df

    .line 255
    :cond_dd
    const-string v6, "No Steam sign-in is saved on this device."

    .line 253
    :goto_df
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->challenge()Ljava/lang/String;

    move-result-object v6

    .line 258
    iget-object v7, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->authPrompt:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v7, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->guard:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/16 v12, 0x8

    if-eqz v6, :cond_f7

    move v6, v12

    goto :goto_f8

    :cond_f7
    const/4 v6, 0x0

    :goto_f8
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->access:Landroid/widget/LinearLayout;

    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_105

    move v7, v12

    goto :goto_106

    :cond_105
    const/4 v7, 0x0

    :goto_106
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->status:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->error:Ljava/lang/String;

    if-eqz v7, :cond_110

    goto :goto_119

    :cond_110
    if-eqz v2, :cond_115

    const-string v7, "Removing unfinished download\u2026"

    goto :goto_119

    :cond_115
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->status(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    :goto_119
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->transfer:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->error:Ljava/lang/String;

    if-eqz v6, :cond_126

    const v5, -0x179fb1

    goto :goto_13a

    :cond_126
    if-eqz v5, :cond_12d

    iget-object v5, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v5, v5, Lcom/gmodvr/flat/Skin;->accent:I

    goto :goto_13a

    :cond_12d
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_137

    const v5, -0x793691

    goto :goto_13a

    :cond_137
    const v5, -0xa49991

    :goto_13a
    invoke-static {v2, v5}, Lcom/gmodvr/flat/Skin;->mark(Landroid/view/View;I)V

    .line 264
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->completed(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->total(Landroid/content/Context;)J

    move-result-wide v10

    .line 265
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->progress:Landroid/widget/ProgressBar;

    const-wide/16 v13, 0x0

    if-eqz v1, :cond_150

    cmp-long v7, v10, v13

    if-nez v7, :cond_150

    goto :goto_151

    :cond_150
    const/4 v4, 0x0

    :goto_151
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 266
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->progress:Landroid/widget/ProgressBar;

    cmp-long v4, v10, v13

    if-nez v4, :cond_15f

    move v15, v4

    move-object/from16 v16, v8

    const/4 v3, 0x0

    goto :goto_170

    :cond_15f
    long-to-double v13, v5

    move v15, v4

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v13, v3

    move-object/from16 v16, v8

    long-to-double v7, v10

    div-double/2addr v13, v7

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-int v3, v3

    :goto_170
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 267
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->progress:Landroid/widget/ProgressBar;

    if-nez v1, :cond_17c

    if-lez v15, :cond_17a

    goto :goto_17c

    :cond_17a
    move v1, v12

    goto :goto_17d

    :cond_17c
    :goto_17c
    const/4 v1, 0x0

    :goto_17d
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->bytes:Landroid/widget/TextView;

    if-nez v15, :cond_186

    move-object v2, v9

    goto :goto_1a0

    :cond_186
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    long-to-double v3, v5

    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    long-to-double v7, v10

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.2f / %.2f GiB verified"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1a0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->bytes:Landroid/widget/TextView;

    if-nez v15, :cond_1a9

    move v2, v12

    goto :goto_1aa

    :cond_1a9
    const/4 v2, 0x0

    :goto_1aa
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->controls:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->pause:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1ca

    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->resume:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1ca

    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->discard:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c8

    goto :goto_1ca

    :cond_1c8
    move v2, v12

    goto :goto_1cb

    :cond_1ca
    :goto_1ca
    const/4 v2, 0x0

    :goto_1cb
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->collection:Landroid/widget/Button;

    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->hasQueue(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1df

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->awaitingSelection()Z

    move-result v2

    if-eqz v2, :cond_1dd

    goto :goto_1df

    :cond_1dd
    move v3, v12

    goto :goto_1e0

    :cond_1df
    :goto_1df
    const/4 v3, 0x0

    :goto_1e0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->awaitingSelection()Z

    move-result v2

    if-eqz v2, :cond_200

    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->reviewOpened:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_200

    .line 275
    iput-object v1, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->reviewOpened:Ljava/lang/String;

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->openCollection()V

    :cond_200
    return-void
.end method

.method private signIn()V
    .registers 6

    .line 206
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->error:Ljava/lang/String;

    .line 208
    :try_start_5
    new-instance v1, Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->username:Landroid/widget/EditText;

    .line 209
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->remember:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/gmodvr/flat/SteamDownloadService$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 208
    invoke-static {p0, v1}, Lcom/gmodvr/flat/SteamDownloadService;->signIn(Landroid/content/Context;Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V

    .line 210
    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->password:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_4f

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4f

    .line 212
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_47} :catch_48

    goto :goto_4f

    :catch_48
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->error:Ljava/lang/String;

    .line 214
    :cond_4f
    :goto_4f
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->render()V

    return-void
.end method

.method private start(ZZ)V
    .registers 12

    .line 187
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->error:Ljava/lang/String;

    .line 189
    const-string v1, ""

    if-eqz p2, :cond_18

    :try_start_9
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "profile"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_13
    move-object v4, v2

    goto :goto_29

    :catch_15
    move-exception p1

    goto/16 :goto_89

    :cond_18
    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->profiles:Ljava/util/List;

    iget-object v3, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->games:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/GameContentProfile;

    iget-object v2, v2, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    goto :goto_13

    :goto_29
    if-eqz p1, :cond_3b

    .line 190
    iget-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->workshop:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_3c

    :cond_3b
    move-object v5, v1

    .line 191
    :goto_3c
    new-instance v7, Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    iget-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->username:Landroid/widget/EditText;

    .line 192
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->remember:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-direct {v7, p1, v2, v3}, Lcom/gmodvr/flat/SteamDownloadService$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    sget-object p1, Lcom/gmodvr/flat/SteamDownloadActivity;->LANGUAGE_KEYS:[Ljava/lang/String;

    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->languages:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    aget-object v6, p1, v2

    move-object v3, p0

    move v8, p2

    invoke-static/range {v3 .. v8}, Lcom/gmodvr/flat/SteamDownloadService;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/SteamDownloadService$Credentials;Z)V

    .line 195
    iget-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->password:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_8f

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8f

    .line 197
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_88} :catch_15

    goto :goto_8f

    .line 200
    :goto_89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->error:Ljava/lang/String;

    .line 202
    :cond_8f
    :goto_8f
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->render()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 18

    move-object/from16 v0, p0

    .line 48
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->profiles:Ljava/util/List;

    invoke-static {}, Lcom/gmodvr/flat/GameContentProfile;->all()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "franchise"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->franchise:Ljava/lang/String;

    .line 51
    invoke-static {v0, v1}, Lcom/gmodvr/flat/Skin;->of(Landroid/app/Activity;Ljava/lang/String;)Lcom/gmodvr/flat/Skin;

    move-result-object v1

    iput-object v1, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    .line 52
    const-string v2, "Steam downloads"

    const-string v3, "Download your owned Source games directly from Steam to this device."

    invoke-virtual {v1, v2, v3}, Lcom/gmodvr/flat/Skin;->screen(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 54
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const v3, -0x179fb1

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->panel(I)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->access:Landroid/widget/LinearLayout;

    .line 55
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v5, "Storage access needed"

    invoke-virtual {v4, v5, v3}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->access:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "Downloads are written to shared storage, which needs all-files access."

    const/high16 v5, 0x41600000    # 14.0f

    const v6, -0x191513

    invoke-virtual {v3, v4, v5, v6}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v4, v7}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->access:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v4, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    const-string v8, "Grant storage access"

    invoke-virtual {v3, v8, v4}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v8, 0x41400000    # 12.0f

    .line 67
    invoke-virtual {v4, v8}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 57
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->access:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v3, v2, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->panel(I)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->transfer:Landroid/widget/LinearLayout;

    .line 72
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v3, ""

    invoke-virtual {v2, v3, v5, v6}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->status:Landroid/widget/TextView;

    .line 73
    iget-object v9, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->transfer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const v9, -0x72665d

    invoke-virtual {v2, v3, v9}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->bytes:Landroid/widget/TextView;

    .line 75
    iget-object v10, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->transfer:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-virtual {v11, v12}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v2}, Lcom/gmodvr/flat/Skin;->progress()Landroid/widget/ProgressBar;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v10, 0x3e8

    .line 77
    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 78
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v2, v10}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 79
    iget-object v11, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v13, 0x40400000    # 3.0f

    invoke-virtual {v11, v13}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v11

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 80
    iget-object v11, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->transfer:Landroid/widget/LinearLayout;

    iget-object v13, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v11, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->controls:Landroid/widget/LinearLayout;

    .line 82
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v11, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda3;

    invoke-direct {v11}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda3;-><init>()V

    const-string v13, "Pause"

    invoke-virtual {v2, v13, v11}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->pause:Landroid/widget/Button;

    .line 83
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v11, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda4;

    invoke-direct {v11, v0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    const-string v13, "Resume"

    invoke-virtual {v2, v13, v11}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->resume:Landroid/widget/Button;

    .line 84
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v11, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    const-string v13, "Discard"

    invoke-virtual {v2, v13, v11}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->discard:Landroid/widget/Button;

    .line 85
    iget-object v11, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->pause:Landroid/widget/Button;

    iget-object v13, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->resume:Landroid/widget/Button;

    filled-new-array {v11, v13, v2}, [Landroid/widget/Button;

    move-result-object v2

    const/4 v11, 0x0

    move v13, v11

    :goto_114
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x41000000    # 8.0f

    const/4 v12, -0x2

    const/4 v9, 0x3

    if-ge v13, v9, :cond_142

    aget-object v9, v2, v13

    .line 86
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v11, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 87
    iget-object v12, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->controls:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_133

    iget-object v12, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v12, v15}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v12

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 88
    :cond_133
    iget-object v12, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->controls:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v13, v13, 0x1

    const/high16 v8, 0x41400000    # 12.0f

    const v9, -0x72665d

    const/high16 v12, 0x40c00000    # 6.0f

    goto :goto_114

    .line 90
    :cond_142
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->transfer:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->controls:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v9, v5}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v8, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda6;

    invoke-direct {v8, v0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda6;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    const-string v9, "Workshop collection: review and progress"

    invoke-virtual {v2, v9, v8}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->collection:Landroid/widget/Button;

    .line 92
    iget-object v8, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->transfer:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v9, v10}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->transfer:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v8, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v4, v2, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v2, v4}, Lcom/gmodvr/flat/Skin;->panel(I)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->guard:Landroid/widget/LinearLayout;

    .line 96
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v8, "Steam Guard"

    iget v9, v4, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v4, v8, v9}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v2, v3, v5, v6}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->authPrompt:Landroid/widget/TextView;

    .line 98
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->guard:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v6, v7}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v6, "Code"

    const/16 v7, 0x1001

    invoke-virtual {v4, v6, v7}, Lcom/gmodvr/flat/Skin;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->code:Landroid/widget/EditText;

    .line 101
    invoke-virtual {v4, v11}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 102
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->code:Landroid/widget/EditText;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v6, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    const-string v7, "Submit"

    invoke-virtual {v4, v7, v6}, Lcom/gmodvr/flat/Skin;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->sendCode:Landroid/widget/Button;

    .line 107
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v7, 0x42300000    # 44.0f

    invoke-virtual {v6, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 108
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v6, v15}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 110
    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->sendCode:Landroid/widget/Button;

    invoke-virtual {v2, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->guard:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v6, v7}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->guard:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v7}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "Account"

    invoke-virtual {v2, v4}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-virtual {v4, v6}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v2, Lcom/gmodvr/flat/SteamCredentialStore;

    invoke-direct {v2, v0}, Lcom/gmodvr/flat/SteamCredentialStore;-><init>(Landroid/content/Context;)V

    .line 116
    const-string v4, "Account name"

    const/16 v6, 0x91

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/gmodvr/flat/SteamDownloadActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->username:Landroid/widget/EditText;

    .line 117
    invoke-virtual {v2}, Lcom/gmodvr/flat/SteamCredentialStore;->username()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const-string v4, "Password"

    const/16 v7, 0x81

    invoke-direct {v0, v1, v4, v3, v7}, Lcom/gmodvr/flat/SteamDownloadActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->password:Landroid/widget/EditText;

    .line 119
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v7, "Remember Steam sign-in on this device"

    invoke-virtual {v4, v7}, Lcom/gmodvr/flat/Skin;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    iput-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->remember:Landroid/widget/CheckBox;

    .line 120
    invoke-virtual {v2}, Lcom/gmodvr/flat/SteamCredentialStore;->username()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 121
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->remember:Landroid/widget/CheckBox;

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v10}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "Save a Steam sign-in here to join servers. Entering account details alone does not sign you in."

    const/high16 v7, 0x41480000    # 12.5f

    const v8, -0x72665d

    invoke-virtual {v2, v4, v7, v8}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    .line 123
    invoke-virtual {v4, v15}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 122
    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v4, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda8;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    const-string v8, "Sign in for multiplayer"

    invoke-virtual {v2, v8, v4}, Lcom/gmodvr/flat/Skin;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->signIn:Landroid/widget/Button;

    .line 125
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v4, v8}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v4, 0x41500000    # 13.0f

    const v8, -0x72665d

    invoke-virtual {v2, v3, v4, v8}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->accountStatus:Landroid/widget/TextView;

    .line 127
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v15}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v4, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda9;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    const-string v8, "Forget saved account"

    invoke-virtual {v2, v8, v4}, Lcom/gmodvr/flat/Skin;->link(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->signout:Landroid/widget/TextView;

    .line 136
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v15}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    neg-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 138
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->signout:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "Game"

    invoke-virtual {v2, v4}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v4, v8}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "Title"

    const v8, -0x72665d

    invoke-virtual {v2, v4, v8}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->profiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2ef
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_301

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gmodvr/flat/GameContentProfile;

    iget-object v8, v8, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2ef

    .line 144
    :cond_301
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v2}, Lcom/gmodvr/flat/Skin;->spinner(Ljava/util/List;)Landroid/widget/Spinner;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->games:Landroid/widget/Spinner;

    .line 145
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-virtual {v4, v8}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "profile"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_32c

    .line 148
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v8, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v8, v8, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_32c
    move v4, v11

    .line 149
    :goto_32d
    iget-object v8, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->profiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_34d

    .line 150
    iget-object v8, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->profiles:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gmodvr/flat/GameContentProfile;

    iget-object v8, v8, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34a

    iget-object v8, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->games:Landroid/widget/Spinner;

    invoke-virtual {v8, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_34a
    add-int/lit8 v4, v4, 0x1

    goto :goto_32d

    .line 153
    :cond_34d
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "Language"

    const v8, -0x72665d

    invoke-virtual {v2, v4, v8}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    sget-object v4, Lcom/gmodvr/flat/SteamDownloadActivity;->LANGUAGE_NAMES:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gmodvr/flat/Skin;->spinner(Ljava/util/List;)Landroid/widget/Spinner;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->languages:Landroid/widget/Spinner;

    .line 155
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "language"

    const-string v5, "english"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    :goto_386
    sget-object v4, Lcom/gmodvr/flat/SteamDownloadActivity;->LANGUAGE_KEYS:[Ljava/lang/String;

    array-length v5, v4

    if-ge v11, v5, :cond_39b

    .line 158
    aget-object v4, v4, v11

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_398

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->languages:Landroid/widget/Spinner;

    invoke-virtual {v4, v11}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_398
    add-int/lit8 v11, v11, 0x1

    goto :goto_386

    .line 161
    :cond_39b
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v4, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda10;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    const-string v5, "Download selected game"

    invoke-virtual {v2, v5, v4}, Lcom/gmodvr/flat/Skin;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->gameDownload:Landroid/widget/Button;

    .line 162
    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "Steam Workshop"

    invoke-virtual {v2, v4}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    iget-object v4, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    const-string v2, "Item or collection"

    const-string v4, "ID or URL"

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/gmodvr/flat/SteamDownloadActivity;->field(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->workshop:Landroid/widget/EditText;

    .line 166
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "workshop"

    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v3, "Paste a Steam Workshop item or collection URL or ID. Garry\'s Mod items install into garrysmod/addons and need no Steam account (leave the account empty); other games\' items go into custom/. A collection is listed first, so you can see its size and choose what to download."

    const v4, -0x72665d

    invoke-virtual {v2, v3, v7, v4}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    .line 169
    invoke-virtual {v3, v15}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda11;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    const-string v4, "Download workshop mod"

    invoke-virtual {v2, v4, v3}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->workshopDownload:Landroid/widget/Button;

    .line 171
    iget-object v3, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v2}, Lcom/gmodvr/flat/Skin;->rule()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v3, v5}, Lcom/gmodvr/flat/Skin;->hairline(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    const-string v0, "Open mod manager"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v4, v3}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->password:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->code:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->ui:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->ui:Landroid/os/Handler;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity.AnonymousClass1 (com.gmodvr.flat.SteamDownloadActivity$1)
.class Lcom/gmodvr/flat/SteamDownloadActivity$1;
.super Ljava/lang/Object;
.source "SteamDownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$1;->this$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$1;->this$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/SteamDownloadActivity;->-$$Nest$mrender(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$1;->this$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/SteamDownloadActivity;->-$$Nest$fgetui(Lcom/gmodvr/flat/SteamDownloadActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda0 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$ZDzOSXdk9C6FyZ07JY1fqm2y9rQ(Lcom/gmodvr/flat/SteamDownloadActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda1 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$34FZMIVMWsJ1OHUCI7XnG9Hcuic(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda10 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda10;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda10;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$xJtIK7qO26wr1ejIaikUoL0OKn8(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda11 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda11;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda11;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$TC6FfZ5fp20QPiO73oghEzvnmwQ(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda2 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$3HjQxEHD--U9xUhthze4bSW4RqE(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda4 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$xeivYl4S19lTVtK-NTbLQjiLioQ(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda5 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$T5_K-SpA4RFTjorNUQ6iyAJqCdk(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda6 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$VsiBkD_I7TZ6EY1xFpM6thZvwmo(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda7 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$t9LaZzjS9tIUXAkC5LSStPNY9Ko(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda8 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$0yLldz13uBdjI5YQKkuUIg7xMDs(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda9 (com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda9;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda9;->f$0:Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadActivity;->$r8$lambda$QaAKxJ4tq3wp2Jg5aSxDEc8-jKo(Lcom/gmodvr/flat/SteamDownloadActivity;)V

    return-void
.end method

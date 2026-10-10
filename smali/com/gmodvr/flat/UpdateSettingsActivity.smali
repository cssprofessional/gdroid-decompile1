###### Class com.gmodvr.flat.UpdateSettingsActivity (com.gmodvr.flat.UpdateSettingsActivity)
.class public final Lcom/gmodvr/flat/UpdateSettingsActivity;
.super Landroid/app/Activity;
.source "UpdateSettingsActivity.java"

# interfaces
.implements Lcom/gmodvr/flat/UpdateManager$Listener;


# static fields
.field private static final DISCORD_SUPPORT_URL:Ljava/lang/String; = "https://discord.gg/rqxyuPxbNF"


# instance fields
.field private cancel:Landroid/widget/Button;

.field private check:Landroid/widget/Button;

.field private detail:Landroid/widget/TextView;

.field private primary:Landroid/widget/Button;

.field private progress:Landroid/widget/ProgressBar;

.field private release:Landroid/widget/TextView;

.field private requestedInstall:Z

.field private resumed:Z

.field private status:Landroid/widget/TextView;

.field private updates:Lcom/gmodvr/flat/UpdateManager;


# direct methods
.method public static synthetic $r8$lambda$qrui2W_c8f2XRxHRmFPSXVS5s9A(Lcom/gmodvr/flat/UpdateSettingsActivity;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/UpdateSettingsActivity;->lambda$onCreate$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uDbXPXdIf11ohHSZGQzHJQia9vQ(Lcom/gmodvr/flat/UpdateSettingsActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->primaryAction()V

    return-void
.end method

.method public static synthetic $r8$lambda$uNJEpjQl95QAAhM2Cl-ow26UMGA(Lcom/gmodvr/flat/UpdateSettingsActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->openDiscordSupport()V

    return-void
.end method

.method public static synthetic $r8$lambda$vyVl9iKrO73NCHc9qjmXQwHDb64(Lcom/gmodvr/flat/UpdateSettingsActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->lambda$onCreate$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$yVU2Ptu08PVjEVHLL7oMVLQB6cY(Lcom/gmodvr/flat/UpdateSettingsActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->lambda$onCreate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ydc88yBFoBbSqBH_sT-o-dQgdF0(Landroid/widget/ToggleButton;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->lambda$onCreate$1(Landroid/widget/ToggleButton;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 42
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {p0, p2}, Lcom/gmodvr/flat/UpdateManager;->setAutomatic(Z)V

    return-void
.end method

.method private static synthetic lambda$onCreate$1(Landroid/widget/ToggleButton;)V
    .registers 2

    .line 44
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$2()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->installing()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->requestedInstall:Z

    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->cancelInstallation()V

    goto :goto_24

    .line 65
    :cond_11
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->busy()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->pause()V

    goto :goto_24

    .line 66
    :cond_1f
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->discard()V

    :goto_24
    return-void
.end method

.method private synthetic lambda$onCreate$3()V
    .registers 4

    .line 72
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://github.com/tinsarfal/GDroid/releases"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1c

    .line 73
    :catch_11
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    sget v1, Lcom/gmodvr/flat/R$string;->updates_no_browser:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gmodvr/flat/UpdateManager;->message(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method private openDiscordSupport()V
    .registers 5

    .line 87
    const-string v0, "https://discord.gg/rqxyuPxbNF"

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_10} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_45

    .line 89
    :catch_11
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/gmodvr/flat/R$string;->launcher_discord_support:I

    .line 90
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/gmodvr/flat/R$string;->launcher_discord_support_unavailable:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    const v0, 0x102000b

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_45

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :cond_45
    :goto_45
    return-void
.end method

.method private primaryAction()V
    .registers 5

    .line 114
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->snapshot()Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v1}, Lcom/gmodvr/flat/UpdateManager;->busy()Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 116
    :cond_f
    sget-object v1, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    iget-object v0, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_33

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_29

    goto :goto_90

    .line 141
    :cond_29
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->check()V

    goto :goto_90

    .line 138
    :cond_2f
    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->showConfirmation()V

    goto :goto_90

    .line 122
    :cond_33
    :try_start_33
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateInstaller;->requireIdle(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_81

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 125
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    sget v1, Lcom/gmodvr/flat/R$string;->updates_permission_help:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/UpdateManager;->message(Ljava/lang/String;)V

    .line 127
    :try_start_4b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_6e} :catch_6f

    goto :goto_7a

    .line 130
    :catch_6f
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    sget v1, Lcom/gmodvr/flat/R$string;->updates_permission_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gmodvr/flat/UpdateManager;->message(Ljava/lang/String;)V

    :goto_7a
    return-void

    .line 134
    :cond_7b
    iput-boolean v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->requestedInstall:Z

    .line 135
    invoke-direct {p0, v1}, Lcom/gmodvr/flat/UpdateSettingsActivity;->startTransfer(Z)V

    goto :goto_90

    :catch_81
    move-exception v0

    .line 123
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/UpdateManager;->message(Ljava/lang/String;)V

    return-void

    :cond_8c
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->startTransfer(Z)V

    :goto_90
    return-void
.end method

.method private showConfirmation()V
    .registers 2

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->requestedInstall:Z

    .line 161
    :try_start_3
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateInstaller;->requireIdle(Landroid/content/Context;)V

    .line 162
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->confirmation()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_1a

    :catch_10
    move-exception v0

    .line 164
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-static {v0}, Lcom/gmodvr/flat/UpdateManager;->readable(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/UpdateManager;->message(Ljava/lang/String;)V

    :goto_1a
    return-void
.end method

.method private startTransfer(Z)V
    .registers 4

    .line 150
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/UpdateDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_c

    .line 151
    const-string p1, "com.gmodvr.flat.UPDATE_INSTALL"

    goto :goto_e

    :cond_c
    const-string p1, "com.gmodvr.flat.UPDATE_DOWNLOAD"

    :goto_e
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_24

    :catch_16
    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->requestedInstall:Z

    .line 154
    iget-object p1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    sget v0, Lcom/gmodvr/flat/R$string;->updates_start_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/gmodvr/flat/UpdateManager;->message(Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method public static status(Landroid/content/Context;Lcom/gmodvr/flat/UpdateManager$Snapshot;)Ljava/lang/String;
    .registers 6

    .line 207
    sget-object v0, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    iget-object v1, p1, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    .line 218
    :pswitch_d
    sget p1, Lcom/gmodvr/flat/R$string;->updates_idle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 216
    :pswitch_14
    sget p1, Lcom/gmodvr/flat/R$string;->updates_installing:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 213
    :pswitch_1b
    sget p1, Lcom/gmodvr/flat/R$string;->updates_verifying:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 210
    :pswitch_22
    sget v0, Lcom/gmodvr/flat/R$string;->updates_downloading:I

    iget-wide v1, p1, Lcom/gmodvr/flat/UpdateManager$Snapshot;->downloaded:J

    .line 211
    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    iget-wide v2, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    .line 212
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 210
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 208
    :pswitch_3b
    sget p1, Lcom/gmodvr/flat/R$string;->updates_checking:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :pswitch_42
    sget p1, Lcom/gmodvr/flat/R$string;->updates_confirmation:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 215
    :pswitch_49
    sget v0, Lcom/gmodvr/flat/R$string;->updates_ready:I

    iget-object p1, p1, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    iget-object p1, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->tag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 214
    :pswitch_58
    sget p1, Lcom/gmodvr/flat/R$string;->updates_paused:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 209
    :pswitch_5f
    sget v0, Lcom/gmodvr/flat/R$string;->updates_available:I

    iget-object p1, p1, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    iget-object p1, p1, Lcom/gmodvr/flat/UpdateRelease$Candidate;->tag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_58
        :pswitch_49
        :pswitch_42
        :pswitch_d
        :pswitch_3b
        :pswitch_22
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public changed()V
    .registers 13

    .line 169
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->snapshot()Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->status:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->status(Landroid/content/Context;Lcom/gmodvr/flat/UpdateManager$Snapshot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->detail:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->detail:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    move v2, v3

    goto :goto_26

    :cond_25
    move v2, v4

    :goto_26
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v1, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v2, Lcom/gmodvr/flat/UpdateManager$Phase;->DOWNLOADING:Lcom/gmodvr/flat/UpdateManager$Phase;

    const/4 v5, 0x1

    if-ne v1, v2, :cond_32

    move v2, v5

    goto :goto_33

    :cond_32
    move v2, v4

    :goto_33
    if-nez v2, :cond_44

    .line 174
    sget-object v6, Lcom/gmodvr/flat/UpdateManager$Phase;->CHECKING:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-eq v1, v6, :cond_44

    sget-object v6, Lcom/gmodvr/flat/UpdateManager$Phase;->VERIFYING:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-eq v1, v6, :cond_44

    sget-object v6, Lcom/gmodvr/flat/UpdateManager$Phase;->INSTALLING:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-ne v1, v6, :cond_42

    goto :goto_44

    :cond_42
    move v1, v4

    goto :goto_45

    :cond_44
    :goto_44
    move v1, v5

    .line 176
    :goto_45
    iget-object v6, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->progress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_4b

    move v7, v4

    goto :goto_4c

    :cond_4b
    move v7, v3

    :goto_4c
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v6, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->progress:Landroid/widget/ProgressBar;

    xor-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    if-eqz v2, :cond_6a

    .line 178
    iget-object v6, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    if-eqz v6, :cond_6a

    .line 179
    iget-object v7, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->progress:Landroid/widget/ProgressBar;

    const-wide/16 v8, 0x64

    iget-wide v10, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->downloaded:J

    mul-long/2addr v10, v8

    iget-wide v8, v6, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    div-long/2addr v10, v8

    long-to-int v6, v10

    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 181
    :cond_6a
    sget v6, Lcom/gmodvr/flat/R$string;->updates_check:I

    .line 182
    sget-object v7, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    iget-object v8, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_8b

    const/4 v8, 0x2

    if-eq v7, v8, :cond_88

    const/4 v8, 0x3

    if-eq v7, v8, :cond_85

    const/4 v8, 0x4

    if-eq v7, v8, :cond_82

    goto :goto_8d

    .line 186
    :cond_82
    sget v6, Lcom/gmodvr/flat/R$string;->updates_confirm:I

    goto :goto_8d

    .line 185
    :cond_85
    sget v6, Lcom/gmodvr/flat/R$string;->updates_install:I

    goto :goto_8d

    .line 184
    :cond_88
    sget v6, Lcom/gmodvr/flat/R$string;->updates_resume:I

    goto :goto_8d

    .line 183
    :cond_8b
    sget v6, Lcom/gmodvr/flat/R$string;->updates_download:I

    .line 189
    :goto_8d
    iget-object v7, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->primary:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v6, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->primary:Landroid/widget/Button;

    if-eqz v1, :cond_98

    move v7, v3

    goto :goto_99

    :cond_98
    move v7, v4

    :goto_99
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v6, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->primary:Landroid/widget/Button;

    iget-object v7, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v7}, Lcom/gmodvr/flat/UpdateManager;->busy()Z

    move-result v7

    xor-int/2addr v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 192
    iget-object v6, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->check:Landroid/widget/Button;

    iget-object v7, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    if-eqz v7, :cond_ba

    if-nez v1, :cond_ba

    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v1}, Lcom/gmodvr/flat/UpdateManager;->installing()Z

    move-result v1

    if-nez v1, :cond_ba

    move v1, v4

    goto :goto_bb

    :cond_ba
    move v1, v3

    :goto_bb
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->check:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v6}, Lcom/gmodvr/flat/UpdateManager;->busy()Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    iget-object v1, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v6, Lcom/gmodvr/flat/UpdateManager$Phase;->PAUSED:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-eq v1, v6, :cond_d7

    sget-object v6, Lcom/gmodvr/flat/UpdateManager$Phase;->READY:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-ne v1, v6, :cond_d5

    goto :goto_d7

    :cond_d5
    move v6, v4

    goto :goto_d8

    :cond_d7
    :goto_d7
    move v6, v5

    .line 195
    :goto_d8
    iget-object v7, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->cancel:Landroid/widget/Button;

    if-nez v6, :cond_ea

    if-nez v2, :cond_ea

    .line 196
    sget-object v2, Lcom/gmodvr/flat/UpdateManager$Phase;->VERIFYING:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-eq v1, v2, :cond_ea

    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v1}, Lcom/gmodvr/flat/UpdateManager;->installing()Z

    move-result v1

    if-eqz v1, :cond_eb

    :cond_ea
    move v3, v4

    .line 195
    :cond_eb
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->cancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v2}, Lcom/gmodvr/flat/UpdateManager;->installing()Z

    move-result v2

    if-eqz v2, :cond_fb

    sget v2, Lcom/gmodvr/flat/R$string;->updates_cancel_install:I

    goto :goto_108

    .line 198
    :cond_fb
    iget-object v2, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v2}, Lcom/gmodvr/flat/UpdateManager;->busy()Z

    move-result v2

    if-eqz v2, :cond_106

    sget v2, Lcom/gmodvr/flat/R$string;->updates_pause:I

    goto :goto_108

    :cond_106
    sget v2, Lcom/gmodvr/flat/R$string;->updates_discard:I

    .line 197
    :goto_108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 199
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->cancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v2}, Lcom/gmodvr/flat/UpdateManager;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v2}, Lcom/gmodvr/flat/UpdateManager;->busy()Z

    move-result v2

    if-nez v2, :cond_11e

    goto :goto_11f

    :cond_11e
    move v5, v4

    :cond_11f
    :goto_11f
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->release:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    if-nez v2, :cond_12b

    const-string v2, ""

    goto :goto_141

    :cond_12b
    sget v3, Lcom/gmodvr/flat/R$string;->updates_release_notes:I

    iget-object v5, v2, Lcom/gmodvr/flat/UpdateRelease$Candidate;->tag:Ljava/lang/String;

    iget-wide v6, v2, Lcom/gmodvr/flat/UpdateRelease$Candidate;->size:J

    .line 201
    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->candidate:Lcom/gmodvr/flat/UpdateRelease$Candidate;

    iget-object v6, v6, Lcom/gmodvr/flat/UpdateRelease$Candidate;->notes:Ljava/lang/String;

    filled-new-array {v5, v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 200
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_141
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-boolean v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->resumed:Z

    if-eqz v1, :cond_155

    iget-boolean v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->requestedInstall:Z

    if-eqz v1, :cond_155

    iget-object v1, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v2, Lcom/gmodvr/flat/UpdateManager$Phase;->CONFIRMATION:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-ne v1, v2, :cond_155

    invoke-direct {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->showConfirmation()V

    .line 203
    :cond_155
    iget-object v0, v0, Lcom/gmodvr/flat/UpdateManager$Snapshot;->phase:Lcom/gmodvr/flat/UpdateManager$Phase;

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->READY:Lcom/gmodvr/flat/UpdateManager$Phase;

    if-ne v0, v1, :cond_165

    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->busy()Z

    move-result v0

    if-nez v0, :cond_165

    iput-boolean v4, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->requestedInstall:Z

    :cond_165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateManager;->get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "franchise"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->of(Landroid/app/Activity;Ljava/lang/String;)Lcom/gmodvr/flat/Skin;

    move-result-object p1

    .line 36
    sget v0, Lcom/gmodvr/flat/R$string;->updates_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/gmodvr/flat/R$string;->updates_installed:I

    const/16 v2, 0x2b

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "arm64-v8a"

    const-string v4, "0.1.29"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 37
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/gmodvr/flat/Skin;->screen(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v1}, Lcom/gmodvr/flat/UpdateManager;->automatic()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/gmodvr/flat/Skin;->toggle(Z)Landroid/widget/ToggleButton;

    move-result-object v1

    .line 41
    sget v2, Lcom/gmodvr/flat/R$string;->updates_automatic:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v2, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/UpdateSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    sget v2, Lcom/gmodvr/flat/R$string;->updates_automatic:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ToggleButton;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v1, v3}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    .line 44
    invoke-virtual {p1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 43
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    sget v1, Lcom/gmodvr/flat/R$string;->updates_explanation:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41500000    # 13.0f

    const v5, -0x72665d

    invoke-virtual {p1, v1, v3, v5}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget v1, p1, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {p1, v1}, Lcom/gmodvr/flat/Skin;->panel(I)Landroid/widget/LinearLayout;

    move-result-object v1

    const/high16 v3, 0x41900000    # 18.0f

    const v6, -0x191513

    .line 48
    const-string v7, ""

    invoke-virtual {p1, v7, v3, v6}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->status:Landroid/widget/TextView;

    const/4 v6, 0x1

    .line 49
    invoke-virtual {v3, v6}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 50
    iget-object v3, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    new-instance v3, Landroid/widget/ProgressBar;

    const v8, 0x1010078

    invoke-direct {v3, p0, v4, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    .line 52
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 53
    iget-object v3, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->progress:Landroid/widget/ProgressBar;

    iget v4, p1, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 54
    iget-object v3, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->progress:Landroid/widget/ProgressBar;

    iget v4, p1, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 55
    iget-object v3, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 56
    invoke-virtual {p1, v7, v2, v5}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->detail:Landroid/widget/TextView;

    const/high16 v4, 0x41000000    # 8.0f

    .line 57
    invoke-virtual {p1, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    sget v3, Lcom/gmodvr/flat/R$string;->updates_check:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/UpdateSettingsActivity;)V

    invoke-virtual {p1, v3, v8}, Lcom/gmodvr/flat/Skin;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->primary:Landroid/widget/Button;

    const/high16 v8, 0x41800000    # 16.0f

    .line 60
    invoke-virtual {p1, v8}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    sget v3, Lcom/gmodvr/flat/R$string;->updates_check:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v10, v9}, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/UpdateManager;)V

    invoke-virtual {p1, v3, v10}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->check:Landroid/widget/Button;

    .line 62
    invoke-virtual {p1, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    sget v3, Lcom/gmodvr/flat/R$string;->updates_discard:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0}, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/UpdateSettingsActivity;)V

    invoke-virtual {p1, v3, v9}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->cancel:Landroid/widget/Button;

    .line 68
    invoke-virtual {p1, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x41c00000    # 24.0f

    .line 69
    invoke-virtual {p1, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    sget v1, Lcom/gmodvr/flat/R$string;->updates_releases:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/UpdateSettingsActivity;)V

    invoke-virtual {p1, v1, v4}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    .line 75
    invoke-virtual {p1, v8}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {p1, v7, v2, v5}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->release:Landroid/widget/TextView;

    .line 77
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 78
    iget-object v1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->release:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    sget v1, Lcom/gmodvr/flat/R$string;->launcher_discord_support:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/gmodvr/flat/UpdateSettingsActivity;)V

    invoke-virtual {p1, v1, v2}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    .line 80
    sget v2, Lcom/gmodvr/flat/R$string;->launcher_discord_support_description:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->changed()V

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->resumed:Z

    .line 109
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0, p0}, Lcom/gmodvr/flat/UpdateManager;->unlisten(Lcom/gmodvr/flat/UpdateManager$Listener;)V

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->resumed:Z

    .line 103
    iget-object v0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity;->updates:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {v0, p0}, Lcom/gmodvr/flat/UpdateManager;->listen(Lcom/gmodvr/flat/UpdateManager$Listener;)V

    .line 104
    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->changed()V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateSettingsActivity.AnonymousClass1 (com.gmodvr.flat.UpdateSettingsActivity$1)
.class synthetic Lcom/gmodvr/flat/UpdateSettingsActivity$1;
.super Ljava/lang/Object;
.source "UpdateSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/UpdateSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 116
    invoke-static {}, Lcom/gmodvr/flat/UpdateManager$Phase;->values()[Lcom/gmodvr/flat/UpdateManager$Phase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    :try_start_9
    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->AVAILABLE:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->PAUSED:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->READY:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->CONFIRMATION:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->IDLE:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->CHECKING:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->DOWNLOADING:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->VERIFYING:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/gmodvr/flat/UpdateSettingsActivity$1;->$SwitchMap$com$gmodvr$flat$UpdateManager$Phase:[I

    sget-object v1, Lcom/gmodvr/flat/UpdateManager$Phase;->INSTALLING:Lcom/gmodvr/flat/UpdateManager$Phase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    return-void
.end method

###### Class com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda0 (com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateSettingsActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/UpdateSettingsActivity;->$r8$lambda$qrui2W_c8f2XRxHRmFPSXVS5s9A(Lcom/gmodvr/flat/UpdateSettingsActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda1 (com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/ToggleButton;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ToggleButton;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ToggleButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ToggleButton;

    invoke-static {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->$r8$lambda$ydc88yBFoBbSqBH_sT-o-dQgdF0(Landroid/widget/ToggleButton;)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda2 (com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateSettingsActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->$r8$lambda$uDbXPXdIf11ohHSZGQzHJQia9vQ(Lcom/gmodvr/flat/UpdateSettingsActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda3 (com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/UpdateManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/UpdateManager;

    invoke-virtual {p0}, Lcom/gmodvr/flat/UpdateManager;->check()V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda4 (com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateSettingsActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->$r8$lambda$yVU2Ptu08PVjEVHLL7oMVLQB6cY(Lcom/gmodvr/flat/UpdateSettingsActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda5 (com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateSettingsActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->$r8$lambda$vyVl9iKrO73NCHc9qjmXQwHDb64(Lcom/gmodvr/flat/UpdateSettingsActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda6 (com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/UpdateSettingsActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/UpdateSettingsActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/UpdateSettingsActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/UpdateSettingsActivity;->$r8$lambda$uNJEpjQl95QAAhM2Cl-ow26UMGA(Lcom/gmodvr/flat/UpdateSettingsActivity;)V

    return-void
.end method

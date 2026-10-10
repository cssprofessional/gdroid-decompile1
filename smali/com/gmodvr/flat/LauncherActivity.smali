###### Class com.gmodvr.flat.LauncherActivity (com.gmodvr.flat.LauncherActivity)
.class public final Lcom/gmodvr/flat/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/LauncherActivity$Work;
    }
.end annotation


# static fields
.field private static final EXPORT:I = 0x2

.field private static final FOLDER:I = 0x4

.field private static final GAME_ACCESS:I = 0x5

.field private static final IMPORT:I = 0x1

.field private static final MOD_FOLDER:I = 0x6

.field private static final RESTORE:I = 0x3


# instance fields
.field private busy:Z

.field private crashBanner:Lcom/gmodvr/flat/CrashBanner;

.field private franchises:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/LauncherFranchise;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private importProgress:Landroid/widget/ProgressBar;

.field private play:Landroid/widget/Button;

.field private playAfterMapChoice:Z

.field private final refresh:Ljava/lang/Runnable;

.field private selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

.field private selectedMod:Lcom/gmodvr/flat/GameMod;

.field private selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

.field private skin:Lcom/gmodvr/flat/Skin;

.field private status:Landroid/widget/TextView;

.field private statusLabel:Landroid/widget/TextView;

.field private statusPanel:Landroid/widget/LinearLayout;

.field private final updateListener:Lcom/gmodvr/flat/UpdateManager$Listener;

.field private updateStatus:Landroid/widget/TextView;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$-3k7n8mXP_cwi2Fds_Vb_nr-_yE(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseSave$22(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1Mzb74LZVKRiUqip3Bb31bzHRcw(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$coop$67(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1SSODduwvItj_-AjT5hZiqlHH8g(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseModFolder$33(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2bWVd92QeniLzavdw6rDKxY_ruE(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;Lcom/gmodvr/flat/GameMod;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$launch$19(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;Lcom/gmodvr/flat/GameMod;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3EiwFznRy8-WTJbqEfSnGDomSKY(Lcom/gmodvr/flat/LauncherActivity;Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$onActivityResult$43(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3SA1nmIjLtD98YO-8pCtgRsstB4(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$coop$66(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3fWZoEIrdimZtbbmU0Ed3u5bhBc(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->coop()V

    return-void
.end method

.method public static synthetic $r8$lambda$3rnJK5Vccg-XkE7ILEFgUOPxFdU(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/Exception;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$work$16(Ljava/lang/Exception;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4wnUF1DXBTndE90x7Fs3WYDUTtM(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$launchSandboxMap$62(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4y73hrkIDNgdVfeFoI60pNWDTyU(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/SharedPreferences;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseStartAt$55(Landroid/content/SharedPreferences;[Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5K2OaTyCbtr9EcEXz1Y7ZttsC0Q(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->refreshUpdateStatus()V

    return-void
.end method

.method public static synthetic $r8$lambda$5aqKFTg3HE4hTi-rnIL7aIeya7I(Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;[ILandroid/widget/SeekBar;Landroid/content/DialogInterface;I)V
    .registers 9

    .line 0
    invoke-static/range {p0 .. p8}, Lcom/gmodvr/flat/LauncherActivity;->lambda$settings$71(Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;[ILandroid/widget/SeekBar;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6DbKOpG0-c69xQsi9S4NA3TO30A(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$6QMZBJD9ygEUTtAMFilA3GZ7ffE(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->chooseFolder()V

    return-void
.end method

.method public static synthetic $r8$lambda$7ZJmEEJ0kL_wC8-HkGuMCVt1oeE(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseModFolder$35(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-mLPOxle8DJoOlAv5ss9Q73H1A(Landroid/widget/EditText;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseFolder$39(Landroid/widget/EditText;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Ccnpr0XUfcnxqus0-rA2kEsUoU(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderSandbox$50()V

    return-void
.end method

.method public static synthetic $r8$lambda$9W_lSgIPu2xzyvID0d_7c8hJJEE(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/GameContentProfile;Ljava/util/List;Ljava/util/Set;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseSandboxMap$56(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ZIMqHDFhWKbnJnqcvqF3oKPDEc(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->settings()V

    return-void
.end method

.method public static synthetic $r8$lambda$9yq2SVLcpo1HPkgXS8EZ2K2f8zA(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$work$17(Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BIakmEfv-qq5Pp0m9vezyQXy2io(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseWorkshopMap$32(Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DSDVCoumM8TxYvTOB1KFtomyvAs(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->launchArguments()V

    return-void
.end method

.method public static synthetic $r8$lambda$EipobJB3lNMAdcdAGKreiaeUwhU(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderSandbox$48()V

    return-void
.end method

.method public static synthetic $r8$lambda$FFeB7NwZ7puBQqSXLTm2MztObak(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseWorkshopMap$31(Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GkQmApXaAW9zTNabY6EIoyWjnRQ(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$KWXDHzzwZOHcULgM6XZBzL-i0lQ(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$Kr1hzn8jfto_OUx2dDxhMshsIU4(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseMod$26(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MXsQ_Bqho79rpTgpdU6jiRuwCpc(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$NixLeYDr__pqgoo7ypQV88IspDY(Ljava/lang/String;Lcom/gmodvr/flat/WorkshopMaps$Entry;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$launch$18(Ljava/lang/String;Lcom/gmodvr/flat/WorkshopMaps$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Oe30hskuBb-YSNVG24sOgw8suDo(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->chooseWorkshopMap()V

    return-void
.end method

.method public static synthetic $r8$lambda$OedFdhxvl5WgRPj6hGOapN167-s(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseFolder$40(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OxNN-CfwDVCgfBHxp2B_y329y3I(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderSandbox$49()V

    return-void
.end method

.method public static synthetic $r8$lambda$P1Lkp9CMtWEgIIOB2zCv0t5we2Y(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderSandbox$47()V

    return-void
.end method

.method public static synthetic $r8$lambda$POSsJAdudI4-qOxw0lGAVOe_xmc(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$launchSandboxMap$63([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QRc1zKCS9nf01IIqMsTEMILGu3E(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$coop$69(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QZqLFv-pg6t5xtBdStqk1kSHGMg(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseSandboxMapIn$60(Ljava/util/List;Ljava/util/Set;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RcyiLXFtmxIjhT6F18oyGXoMt18(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$onActivityResult$46()V

    return-void
.end method

.method public static synthetic $r8$lambda$RwcUTB96mSmR6HMPM3FHNPP6f4k(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->chooseStartAt()V

    return-void
.end method

.method public static synthetic $r8$lambda$S2bEstqBx9q5poKCPR-zGNwBYwU(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$S64AqyHbk1EZL8rrXvGab0gKqNw(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$coop$64(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Smjy9N3B1Ti56A5hAbyH6VQNJrg(Lcom/gmodvr/flat/GameMod;Lcom/gmodvr/flat/GameMod;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseMod$23(Lcom/gmodvr/flat/GameMod;Lcom/gmodvr/flat/GameMod;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Te0qKbdYp1UXLcdTDlOStBGFL0c(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseFolder$42(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tkse6iJGSHgOn_jeR46voAST0fY(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$coop$68(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$U7bM76XGj8MBnU6P_n2EQNCnbo8(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderSession$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$UdtGt7d2BuWUbKTGmayZbv76fTo(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseModMap$38(Landroid/app/AlertDialog;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UoqnY22Malo-KDsIGM8vtX8zhUY(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$playerName$53(Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ups2oeI27Ru72LynXvo_jDR2qGI(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseModMap$37(Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UvhkK855UDwxhvIBAj1N8-WPnso(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->chooseMod()V

    return-void
.end method

.method public static synthetic $r8$lambda$W_9z81cJeMOf7_2VgEd605GUh88(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->playerName()V

    return-void
.end method

.method public static synthetic $r8$lambda$WmjJkoBkuA3hB2e88ikBXWUGZjY(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseModFolder$34(Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X45tXWTcAvY3GDec4P8ukOQOXR8(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseSandboxMapCategory$58(Ljava/util/List;Ljava/util/Set;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YG3SGOdXjTYmVVKSWSTcXsVS86E(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseSandboxMap$57(Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YUtm-tcJXs9GdYbPW5HUHkVQi1g(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseMod$24(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YVlac4-m9whHEVAa0lJX4G5MPso(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->controlLayout()V

    return-void
.end method

.method public static synthetic $r8$lambda$YXhVM5qMxN2CDAs2acTUHclGplc(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$_BYwioWTgjcLpR1-XnGzOxtvSbo(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseFolder$41(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aUjKSFiRNTDswmXtf4pgueHEbQQ(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$aXZQ8jFS_ek6ckZtwcaceIdsevs(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseMod$27(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aeTmup5gVRm-Gwn9zWKJU4G85f8(Ljava/io/File;Ljava/io/File;)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$saves$21(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$amu8n7ydeANiLbnJKZFVDBqdaeo(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseSandboxMapIn$59([Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$asXj7fMKhS1nSF5nV7t_vr8o6_A(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$onActivityResult$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$axBKJyDtr7oTeqEZeB-RpiieKAc(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$gameToggle$51(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bC7wZCnrVAadezI1c33oK1Yl4WA(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$playerName$54(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bgm1GsMWwb49IVkc8GzUexkY81U(Landroid/widget/SeekBar;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$settings$70(Landroid/widget/SeekBar;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$cqOUWj8-nlkN7Va8bR_T84Rrd8w(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/GameMod;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$launch$20(Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/GameMod;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eo9PknUDozHi0RlqLbE2CneW-YU(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseWorkshopMap$29(Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ep0j8mzIkh4Ulki3vLpG-4NLguM(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$launchArguments$72(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$i4IR-5fI_novVeYNDs_jRe3sVEQ(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$jB0seWpalfzAJuMabd20a8j1dBI(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/GameMod;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseMod$25(Lcom/gmodvr/flat/GameMod;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kxh6v6AiY1WPCBL39nvbEU-6dek(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/LauncherFranchise;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$franchiseTabs$0(Lcom/gmodvr/flat/LauncherFranchise;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m4pX3i1CZ_xO-aVSVNL3eRLF5AE(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->chooseSave()V

    return-void
.end method

.method public static synthetic $r8$lambda$m_H-X0uWFo5qIjDx8btuO8aV3Js(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseMod$28(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mm5keVu7MBxsLIKsmHBh5hDwfOs(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/LauncherActivity;->lambda$launchSandboxMap$61([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pEbieyfVMwhGDEj0k0mHIVz4llk(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$peu4f2zBgFkZ6On-oPCbsl1-JEA(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$psn9jL1ozRw7NuQWHNjaazInWqc(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/WorkshopMaps$Entry;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseWorkshopMap$30(Lcom/gmodvr/flat/WorkshopMaps$Entry;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q50UVipBBTCuARqBxXDWN3TwI2s(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$coop$65(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8jVCHxns4zQHVjIX2b8QtVyiB0(Lcom/gmodvr/flat/LauncherActivity;Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$onActivityResult$45(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sDNrYSkaarNyreE6UUfCGvxQUHU(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderTools$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$tIVOIe1cIsd18DGj3v5IBpIqkMU(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$gamePicker$1(Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$te5jYG01KVMiUPrPUtWJsDfEEKE(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderSession$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$w-3RIUBBlud2PzQx2TaFWdf2bxo(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->lambda$playerName$52(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wUkzeLl2HkmjTkwW2n82HOCGsYI(Landroid/widget/AutoCompleteTextView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->lambda$chooseModMap$36(Landroid/widget/AutoCompleteTextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x62bsS7JA7c9iJj3RhuoU7Tmj8E(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->lambda$renderSession$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgethandler(Lcom/gmodvr/flat/LauncherActivity;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateStatus(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->updateStatus()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda82;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda82;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->updateListener:Lcom/gmodvr/flat/UpdateManager$Listener;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->handler:Landroid/os/Handler;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 41
    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$1;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/LauncherActivity$1;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->refresh:Ljava/lang/Runnable;

    return-void
.end method

.method private argumentKey()Ljava/lang/String;
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    if-nez v0, :cond_7

    const-string p0, "launch_args"

    goto :goto_28

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mod_launch_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v1, v1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    iget-object p0, p0, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_28
    return-object p0
.end method

.method private chooseFolder()V
    .registers 26

    move-object/from16 v0, p0

    .line 611
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/gmodvr/flat/LauncherActivity;->requestFileAccess(I)V

    return-void

    .line 613
    :cond_d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play from Folder \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v3, v3, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 616
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 617
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41c00000    # 24.0f

    .line 618
    invoke-direct {v0, v4}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-direct {v0, v6}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v7

    invoke-direct {v0, v4}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v4

    invoke-direct {v0, v6}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v6

    invoke-virtual {v2, v5, v7, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 620
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 621
    const-string v5, "Choose your game folder to play without copying.\n\n\u2022 Tap \'Browse System Picker\' to select the folder directly.\n\u2022 Or select a detected shared folder below and tap \'Use Path\'."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x72665d

    .line 624
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41500000    # 13.0f

    .line 625
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v6, 0x41400000    # 12.0f

    .line 626
    invoke-direct {v0, v6}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 627
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 629
    iget-object v4, v0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v4, v4, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/gmodvr/flat/Storage;->customContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 630
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 631
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/LocalFolder;->volumes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_81
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "Download/srceng"

    const-string v12, "srceng"

    if-eqz v10, :cond_bd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 632
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v11, Ljava/io/File;

    iget-object v12, v0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v12, v12, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 637
    :cond_bd
    new-instance v9, Ljava/io/File;

    .line 638
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    new-instance v9, Ljava/io/File;

    .line 639
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    new-instance v9, Ljava/io/File;

    .line 644
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "$MuMu12Shared/srceng"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    new-instance v9, Ljava/io/File;

    .line 645
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "$MuMu12Shared"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    const-string v23, "/mnt/shared/srceng"

    const-string v24, "/mnt/shared"

    const-string v15, "/sdcard/srceng"

    const-string v16, "/sdcard/Download/srceng"

    const-string v17, "/storage/emulated/0/srceng"

    const-string v18, "/storage/emulated/0/Download/srceng"

    const-string v21, "/sdcard/$MuMu12Shared/srceng"

    const-string v22, "/sdcard/$MuMu12Shared"

    filled-new-array/range {v13 .. v24}, [Ljava/lang/String;

    move-result-object v9

    move v10, v8

    :goto_10a
    const/16 v11, 0xc

    if-ge v10, v11, :cond_11c

    .line 637
    aget-object v11, v9, v10

    .line 651
    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_119

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_119
    add-int/lit8 v10, v10, 0x1

    goto :goto_10a

    .line 654
    :cond_11c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 657
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v10, 0x0

    move-object v11, v10

    :catch_127
    :cond_127
    :goto_127
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_150

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 658
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_127

    invoke-interface {v9, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_127

    .line 660
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_127

    .line 663
    :try_start_149
    iget-object v15, v0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v15, v14}, Lcom/gmodvr/flat/GameFolder;->locate(Lcom/gmodvr/flat/GameContentProfile;Ljava/io/File;)Ljava/io/File;
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14e} :catch_127

    move-object v11, v13

    goto :goto_127

    :cond_150
    if-eqz v4, :cond_15b

    .line 671
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_159

    goto :goto_15b

    :cond_159
    move-object v11, v4

    goto :goto_179

    :cond_15b
    :goto_15b
    if-eqz v11, :cond_15e

    goto :goto_179

    .line 673
    :cond_15e
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16c

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    goto :goto_179

    :cond_16c
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-direct {v7, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 676
    :goto_179
    iget-object v7, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v12, ""

    invoke-virtual {v7, v12, v3}, Lcom/gmodvr/flat/Skin;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v7

    .line 677
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 679
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 681
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v13, 0x41800000    # 16.0f

    if-nez v11, :cond_214

    .line 682
    iget-object v11, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v14, "Detected folders \u00b7 tap to use"

    invoke-virtual {v11, v14, v5}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v11

    .line 683
    invoke-direct {v0, v13}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v14

    invoke-direct {v0, v12}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v15

    invoke-virtual {v11, v8, v14, v8, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 684
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 686
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1b6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_214

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 689
    :try_start_1c2
    iget-object v14, v0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v15}, Lcom/gmodvr/flat/GameFolder;->locate(Lcom/gmodvr/flat/GameContentProfile;Ljava/io/File;)Ljava/io/File;
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1cc} :catch_1ce

    move v14, v3

    goto :goto_1cf

    :catch_1ce
    move v14, v8

    .line 693
    :goto_1cf
    iget-object v15, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    if-eqz v14, :cond_1e5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "READY  "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e6

    :cond_1e5
    move-object v3, v11

    :goto_1e6
    if-eqz v14, :cond_1ec

    const v12, -0x793691

    goto :goto_1ef

    :cond_1ec
    const v12, -0x191513

    :goto_1ef
    invoke-virtual {v15, v3, v6, v12}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v3

    .line 694
    sget-object v12, Lcom/gmodvr/flat/Skin;->MONO:Landroid/graphics/Typeface;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v12, 0x40c00000    # 6.0f

    .line 695
    invoke-direct {v0, v12}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v14

    invoke-direct {v0, v12}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v12

    invoke-virtual {v3, v8, v14, v8, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 696
    new-instance v12, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda78;

    invoke-direct {v12, v7, v11}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda78;-><init>(Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v3, 0x1

    const/high16 v12, 0x40800000    # 4.0f

    goto :goto_1b6

    .line 701
    :cond_214
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 703
    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda79;

    invoke-direct {v3, v0, v7}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda79;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;)V

    const-string v6, "Use Path"

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 736
    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda80;

    invoke-direct {v3, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda80;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v6, "Browse System Picker"

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 740
    const-string v3, "Cancel"

    invoke-virtual {v1, v3, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 742
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v4, :cond_256

    .line 744
    iget-object v3, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "\u21ba Reset to default storage path"

    invoke-virtual {v3, v4, v5}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v3

    .line 745
    invoke-direct {v0, v13}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {v0, v5}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v5

    invoke-virtual {v3, v8, v4, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 746
    new-instance v4, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda81;

    invoke-direct {v4, v0, v1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda81;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 755
    :cond_256
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private chooseImport(Z)V
    .registers 4

    .line 606
    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_b

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->requestFileAccess(I)V

    return-void

    .line 607
    :cond_b
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.content.extra.SHOW_ADVANCED"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private chooseMod()V
    .registers 4

    .line 509
    iget-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    .line 510
    :cond_5
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->gameRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Quit the running game before switching campaigns."

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 511
    :cond_11
    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->requestFileAccess(I)V

    return-void

    .line 512
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda73;

    invoke-direct {v1, p0, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda73;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V

    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda74;

    invoke-direct {v2, p0, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda74;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V

    const-string v0, "Finding installed mods\u2026"

    invoke-direct {p0, v0, v1, v2}, Lcom/gmodvr/flat/LauncherActivity;->work(Ljava/lang/String;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V

    return-void
.end method

.method private chooseModFolder()V
    .registers 6

    .line 567
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "/storage/\u2026/portal_stories"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/gmodvr/flat/Skin;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v0

    .line 568
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Mod folder"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Choose the folder containing the mod\'s gameinfo.txt. The mod uses "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v3, v3, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as its base game. Saves stay separate. Mods requiring custom PC binaries need an Android port."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 571
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->inset(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Use folder"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda60;

    invoke-direct {v2, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda60;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    .line 572
    const-string v4, "Browse"

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    .line 574
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 575
    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda61;

    invoke-direct {v2, p0, v1, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda61;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 579
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private chooseModMap()V
    .registers 8

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    iget-object v0, v0, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/gmodvr/flat/GameMod;->read(Ljava/io/File;)Lcom/gmodvr/flat/GameMod;

    move-result-object v0

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v2, v2, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Landroid/widget/AutoCompleteTextView;

    invoke-direct {v3, p0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    const-string v4, "Starting map (without .bsp)"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/gmodvr/flat/Skin;->input(Landroid/widget/EditText;Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    const/4 v3, 0x0

    .line 587
    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 588
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Lcom/gmodvr/flat/GameMod;->maps()Ljava/util/List;

    move-result-object v5

    const v6, 0x109000a

    invoke-direct {v4, p0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 589
    const-string v4, "mods"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v0}, Lcom/gmodvr/flat/GameMod;->suggestedMap()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda66;

    invoke-direct {v3, v2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda66;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/gmodvr/flat/GameMod;->title:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Choose or enter the starting map. This choice is remembered for this mod."

    .line 592
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 593
    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->inset(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Start"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 594
    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 601
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a9} :catch_aa

    goto :goto_b2

    :catch_aa
    move-exception v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    :goto_b2
    return-void
.end method

.method private chooseSandboxMap()V
    .registers 5

    .line 908
    iget-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    .line 909
    :cond_5
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->usesSharedContent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->requestFileAccess(I)V

    return-void

    .line 910
    :cond_16
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    .line 911
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 912
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 913
    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;-><init>(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/GameContentProfile;Ljava/util/List;Ljava/util/Set;)V

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, v1, v2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;)V

    const-string v1, "Finding maps\u2026"

    invoke-direct {p0, v1, v3, v0}, Lcom/gmodvr/flat/LauncherActivity;->work(Ljava/lang/String;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V

    return-void
.end method

.method private chooseSandboxMapCategory(Ljava/util/List;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodMaps$Category;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 930
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_66

    .line 932
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/GmodMaps$Category;

    iget-object v3, v3, Lcom/gmodvr/flat/GmodMaps$Category;->maps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 933
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/GmodMaps$Category;

    iget-object v4, v4, Lcom/gmodvr/flat/GmodMaps$Category;->name:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/gmodvr/flat/GmodMaps;->missingContentNote(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    .line 934
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gmodvr/flat/GmodMaps$Category;

    iget-object v6, v6, Lcom/gmodvr/flat/GmodMaps$Category;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3f

    const-string v3, " map"

    goto :goto_41

    :cond_3f
    const-string v3, " maps"

    :goto_41
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_49

    const-string v3, ""

    goto :goto_5a

    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 936
    :cond_66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Choose a map"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;)V

    .line 937
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 p2, 0x0

    .line 938
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private chooseSandboxMapIn(Ljava/util/List;Lcom/gmodvr/flat/GmodMaps$Category;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/GmodMaps$Category;",
            ">;",
            "Lcom/gmodvr/flat/GmodMaps$Category;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 942
    iget-object v0, p2, Lcom/gmodvr/flat/GmodMaps$Category;->maps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v0, :cond_1b

    .line 943
    iget-object v4, p2, Lcom/gmodvr/flat/GmodMaps$Category;->maps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/GmodMaps$Entry;

    iget-object v4, v4, Lcom/gmodvr/flat/GmodMaps$Entry;->map:Ljava/lang/String;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 944
    :cond_1b
    iget-object v0, p2, Lcom/gmodvr/flat/GmodMaps$Category;->name:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/gmodvr/flat/GmodMaps;->missingContentNote(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 946
    :goto_29
    array-length v4, v3

    if-ge v2, v4, :cond_4c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (missing assets)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 947
    :cond_4c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p2, Lcom/gmodvr/flat/GmodMaps$Category;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0, v1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda49;-><init>(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;)V

    .line 948
    invoke-virtual {p2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v0, "Cancel"

    const/4 v1, 0x0

    .line 957
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 958
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_78

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p1, p3}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda50;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;)V

    const-string p0, "Back"

    invoke-virtual {p2, p0, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 959
    :cond_78
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private chooseSave()V
    .registers 10

    .line 476
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->saves()Ljava/util/List;

    move-result-object v0

    .line 477
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "No saves yet. Start a new game to create one."

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 478
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_5a

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-direct {p0, v5}, Lcom/gmodvr/flat/LauncherActivity;->saveName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MMM d, HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 482
    :cond_5a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Load a save"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda41;

    invoke-direct {v3, p0, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda41;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V

    .line 483
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Cancel"

    const/4 v1, 0x0

    .line 484
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private chooseStartAt()V
    .registers 8

    .line 888
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 889
    const-string v1, "menu"

    const-string v2, "map"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected map ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "gmod_map"

    const-string v5, "gm_construct"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Main menu"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 891
    const-string v4, "gmod_start_at"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gmodvr/flat/LaunchArguments;->startAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 892
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "Start at"

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda42;

    invoke-direct {v6, p0, v0, v1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda42;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/SharedPreferences;[Ljava/lang/String;)V

    .line 893
    invoke-virtual {v4, v3, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Cancel"

    .line 898
    invoke-virtual {p0, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private chooseWorkshopMap()V
    .registers 5

    .line 535
    iget-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    .line 536
    :cond_5
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->gameRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Quit the running game before launching a Workshop map."

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 537
    :cond_11
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->usesSharedContent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->requestFileAccess(I)V

    return-void

    .line 538
    :cond_22
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 540
    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda62;

    invoke-direct {v2, p0, v1, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda62;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda63;

    invoke-direct {v3, p0, v1, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda63;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V

    const-string v0, "Finding Workshop maps\u2026"

    invoke-direct {p0, v0, v2, v3}, Lcom/gmodvr/flat/LauncherActivity;->work(Ljava/lang/String;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V

    return-void
.end method

.method private controlLayout()V
    .registers 4

    .line 1016
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    iget-object v1, v1, Lcom/gmodvr/flat/LauncherFranchise;->id:Ljava/lang/String;

    .line 1017
    const-string v2, "franchise"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v1, v1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    .line 1018
    const-string v2, "profile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1019
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    if-nez v1, :cond_21

    const/4 v1, 0x0

    goto :goto_27

    :cond_21
    iget-object v1, v1, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_27
    const-string v2, "mod"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1016
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private coop()V
    .registers 6

    .line 988
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v0, v0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    const-string v1, "garrysmod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Cancel"

    if-eqz v0, :cond_3e

    .line 989
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "LAN multiplayer"

    .line 990
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Host a Sandbox game on the selected map, or join one on your Wi-Fi network."

    .line 991
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda52;

    invoke-direct {v3, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda52;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    .line 992
    const-string v4, "Host game"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda53;

    invoke-direct {v3, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda53;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    .line 993
    const-string p0, "Join by IP"

    invoke-virtual {v0, p0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 999
    invoke-virtual {p0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 1002
    :cond_3e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Portal 2 Co-op"

    .line 1003
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "Host a co-op game or connect to another player on your Wi-Fi network."

    .line 1004
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda54;

    invoke-direct {v3, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda54;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    .line 1005
    const-string v4, "Host Game"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda55;

    invoke-direct {v3, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda55;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    .line 1006
    const-string p0, "Connect to IP"

    invoke-virtual {v0, p0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1012
    invoke-virtual {p0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private dp(F)I
    .registers 2

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private franchiseTabs()Landroid/widget/LinearLayout;
    .registers 9

    .line 169
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42300000    # 44.0f

    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->franchises:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/LauncherFranchise;

    .line 172
    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-object v5, v2, Lcom/gmodvr/flat/LauncherFranchise;->displayName:Ljava/lang/String;

    iget-object v6, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    if-ne v2, v6, :cond_30

    const/4 v6, 0x1

    goto :goto_31

    :cond_30
    const/4 v6, 0x0

    :goto_31
    new-instance v7, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0, v2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda11;-><init>(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/LauncherFranchise;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/gmodvr/flat/Skin;->tab(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a

    :cond_44
    return-object v0
.end method

.method private gamePicker()Landroid/view/View;
    .registers 10

    .line 184
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    iget-object v1, v1, Lcom/gmodvr/flat/LauncherFranchise;->profiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/GameContentProfile;

    .line 186
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42180000    # 38.0f

    invoke-direct {p0, v4}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_35

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {p0, v4}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 188
    :cond_35
    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-object v5, v2, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    const-string v7, "Half-Life 2: "

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Half-Life 2"

    const-string v8, "HL2"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v2, v7, :cond_4e

    const/4 v6, 0x1

    :cond_4e
    new-instance v7, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda76;

    invoke-direct {v7, p0, v2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda76;-><init>(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/GameContentProfile;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/gmodvr/flat/Skin;->segment(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_5b
    return-object v0
.end method

.method private gameRunning()Z
    .registers 5

    .line 318
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 320
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 321
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":game"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method private gameToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 843
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 844
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    if-eqz v0, :cond_12

    const-string v0, "On"

    goto :goto_14

    :cond_12
    const-string v0, "Off"

    :goto_14
    const v2, -0x72665d

    invoke-virtual {v1, v0, v2}, Lcom/gmodvr/flat/Skin;->tag(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0, p2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda75;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4, v0, v2}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private header(F)Landroid/view/View;
    .registers 5

    .line 160
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    sget v2, Lcom/gmodvr/flat/R$string;->app_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/gmodvr/flat/Skin;->heading(Ljava/lang/CharSequence;F)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    iget-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Garry\'s Mod // flatscreen runtime"

    iget v2, p1, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {p1, v1, v2}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object p1

    .line 164
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private inset(Landroid/view/View;)Landroid/view/View;
    .registers 6

    .line 94
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41c00000    # 24.0f

    .line 95
    invoke-direct {p0, v1}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, p0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static synthetic lambda$chooseFolder$39(Landroid/widget/EditText;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 696
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$chooseFolder$40(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 9

    .line 704
    const-string p2, "/"

    const-string p3, ""

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 705
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 707
    :cond_17
    :try_start_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9e

    .line 710
    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->volumes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 711
    const-string v2, "/sdcard/"

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/storage/emulated/0/"

    invoke-virtual {v2, v3, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 712
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_51

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_51

    :catch_4e
    move-exception p1

    goto/16 :goto_ef

    .line 713
    :cond_51
    :goto_51
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5e

    :goto_5c
    move-object v0, v3

    goto :goto_7f

    .line 715
    :cond_5e
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_71

    :cond_70
    move-object v2, p1

    .line 716
    :goto_71
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_5c

    :cond_7d
    const/4 p2, 0x0

    move-object v0, p2

    :goto_7f
    if-eqz v0, :cond_82

    goto :goto_9e

    .line 722
    :cond_82
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Folder does not exist on this device:\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\nTip: Tap \'Browse System Picker\' to choose the folder directly, or tap a detected folder above."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 726
    :cond_9e
    :goto_9e
    iget-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p1, v0}, Lcom/gmodvr/flat/GameFolder;->locate(Lcom/gmodvr/flat/GameContentProfile;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 727
    const-string p2, "storage"

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom_content_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v1, v1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 729
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Using "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 730
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->render()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_ee} :catch_4e

    goto :goto_f6

    .line 732
    :goto_ef
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    :goto_f6
    return-void
.end method

.method private synthetic lambda$chooseFolder$41(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 737
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.content.extra.SHOW_ADVANCED"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$chooseFolder$42(Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 6

    .line 747
    const-string p2, "storage"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom_content_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v2, v2, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 749
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 750
    const-string p1, "Reset to default storage"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 751
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->render()V

    return-void
.end method

.method private static synthetic lambda$chooseMod$23(Lcom/gmodvr/flat/GameMod;Lcom/gmodvr/flat/GameMod;)Z
    .registers 2

    .line 519
    iget-object p1, p1, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$chooseMod$24(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v0, v1}, Lcom/gmodvr/flat/GameMod;->discover(Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 515
    const-string v0, "mods"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folders_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object p0, p0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 516
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 515
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_37
    :cond_37
    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 518
    :try_start_43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gmodvr/flat/GameMod;->read(Ljava/io/File;)Lcom/gmodvr/flat/GameMod;

    move-result-object v0

    .line 519
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda58;

    invoke-direct {v2, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda58;-><init>(Lcom/gmodvr/flat/GameMod;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5e} :catch_37

    goto :goto_37

    :cond_5f
    return-void
.end method

.method private synthetic lambda$chooseMod$25(Lcom/gmodvr/flat/GameMod;)Z
    .registers 2

    .line 523
    iget-object p1, p1, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    iget-object p0, p0, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$chooseMod$26(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    if-nez p3, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    :cond_4
    add-int/lit8 p3, p3, -0x1

    .line 528
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/GameMod;

    :goto_c
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->selectMod(Lcom/gmodvr/flat/GameMod;)V

    return-void
.end method

.method private synthetic lambda$chooseMod$27(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 529
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->chooseModFolder()V

    return-void
.end method

.method private synthetic lambda$chooseMod$28(Ljava/util/List;)V
    .registers 7

    .line 523
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v2, v2, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 Base game"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 526
    :goto_38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_68

    add-int/lit8 v1, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/GameMod;

    iget-object v4, v4, Lcom/gmodvr/flat/GameMod;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/GameMod;

    iget-object v2, v2, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v2, v1

    goto :goto_38

    .line 527
    :cond_68
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Choose a campaign"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V

    .line 528
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    .line 529
    const-string p0, "Choose mod folder\u2026"

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 v0, 0x0

    .line 530
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$chooseModFolder$33(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 572
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.content.extra.SHOW_ADVANCED"

    const/4 v0, 0x1

    .line 573
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x6

    .line 572
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$chooseModFolder$34(Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 5

    .line 576
    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/gmodvr/flat/GameMod;->read(Ljava/io/File;)Lcom/gmodvr/flat/GameMod;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/gmodvr/flat/LauncherActivity;->selectMod(Lcom/gmodvr/flat/GameMod;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p0

    .line 577
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :goto_24
    return-void
.end method

.method private synthetic lambda$chooseModFolder$35(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 5

    const/4 p3, -0x1

    .line 575
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p2, p1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda43;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic lambda$chooseModMap$36(Landroid/widget/AutoCompleteTextView;Landroid/view/View;)V
    .registers 2

    .line 590
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void
.end method

.method private synthetic lambda$chooseModMap$37(Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 6

    .line 595
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 596
    invoke-static {p4}, Lcom/gmodvr/flat/GameMod;->validMap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string p0, "Enter a map name without .bsp."

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 597
    :cond_18
    const-string p1, "mods"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 598
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 599
    const-string p1, "map"

    invoke-direct {p0, p1, p4}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$chooseModMap$38(Landroid/app/AlertDialog;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .registers 6

    const/4 p4, -0x1

    .line 594
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p4

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$chooseSandboxMap$56(Lcom/gmodvr/flat/GameContentProfile;Ljava/util/List;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 914
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Storage;->user(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object p0

    .line 915
    invoke-static {v0, p0}, Lcom/gmodvr/flat/GmodMaps;->scan(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/gmodvr/flat/GmodMaps;->group(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 916
    invoke-static {v0, p0}, Lcom/gmodvr/flat/GmodMaps;->mountedGameIds(Ljava/io/File;Ljava/io/File;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$chooseSandboxMap$57(Ljava/util/List;Ljava/util/Set;)V
    .registers 9

    .line 918
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 919
    new-instance v0, Lcom/gmodvr/flat/GmodMaps$Category;

    const-string v1, "Sandbox"

    invoke-direct {v0, v1}, Lcom/gmodvr/flat/GmodMaps$Category;-><init>(Ljava/lang/String;)V

    .line 920
    iget-object v2, v0, Lcom/gmodvr/flat/GmodMaps$Category;->maps:Ljava/util/List;

    new-instance v3, Lcom/gmodvr/flat/GmodMaps$Entry;

    const-string v4, "gm_construct"

    const-string v5, "garrysmod"

    invoke-direct {v3, v4, v1, v5}, Lcom/gmodvr/flat/GmodMaps$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/GmodMaps$Category;

    invoke-direct {p0, p1, v0, p2}, Lcom/gmodvr/flat/LauncherActivity;->chooseSandboxMapIn(Ljava/util/List;Lcom/gmodvr/flat/GmodMaps$Category;Ljava/util/Set;)V

    goto :goto_33

    .line 924
    :cond_30
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->chooseSandboxMapCategory(Ljava/util/List;Ljava/util/Set;)V

    :goto_33
    return-void
.end method

.method private synthetic lambda$chooseSandboxMapCategory$58(Ljava/util/List;Ljava/util/Set;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 937
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmodvr/flat/GmodMaps$Category;

    invoke-direct {p0, p1, p3, p2}, Lcom/gmodvr/flat/LauncherActivity;->chooseSandboxMapIn(Ljava/util/List;Lcom/gmodvr/flat/GmodMaps$Category;Ljava/util/Set;)V

    return-void
.end method

.method private synthetic lambda$chooseSandboxMapIn$59([Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 6

    .line 949
    const-string p2, "settings"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "gmod_map"

    aget-object p1, p1, p3

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 950
    iget-boolean p1, p0, Lcom/gmodvr/flat/LauncherActivity;->playAfterMapChoice:Z

    if-eqz p1, :cond_22

    .line 951
    iput-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->playAfterMapChoice:Z

    .line 952
    const-string p1, "map"

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->launchSandboxMap(Ljava/lang/String;)V

    goto :goto_25

    .line 954
    :cond_22
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :goto_25
    return-void
.end method

.method private synthetic lambda$chooseSandboxMapIn$60(Ljava/util/List;Ljava/util/Set;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 958
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->chooseSandboxMapCategory(Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method private synthetic lambda$chooseSave$22(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 483
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->saveName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "load"

    invoke-direct {p0, p2, p1}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$chooseStartAt$55(Landroid/content/SharedPreferences;[Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 6

    .line 894
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "gmod_start_at"

    aget-object p2, p2, p4

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 895
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 896
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method private synthetic lambda$chooseWorkshopMap$29(Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 541
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->lock(Landroid/content/Context;)Lcom/gmodvr/flat/Storage$Lease;

    move-result-object v0

    .line 542
    :try_start_4
    invoke-static {p0, p2}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/gmodvr/flat/Storage;->user(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object p0

    invoke-static {v1, p0, p2}, Lcom/gmodvr/flat/WorkshopMaps;->scan(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_19

    if-eqz v0, :cond_18

    .line 543
    invoke-virtual {v0}, Lcom/gmodvr/flat/Storage$Lease;->close()V

    :cond_18
    return-void

    :catchall_19
    move-exception p0

    if-eqz v0, :cond_24

    .line 541
    :try_start_1c
    invoke-virtual {v0}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw p0
.end method

.method private synthetic lambda$chooseWorkshopMap$30(Lcom/gmodvr/flat/WorkshopMaps$Entry;Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 p2, 0x0

    .line 559
    invoke-direct {p0, p2}, Lcom/gmodvr/flat/LauncherActivity;->selectMod(Lcom/gmodvr/flat/GameMod;)V

    .line 560
    const-string p2, "workshop"

    iget-object p1, p1, Lcom/gmodvr/flat/WorkshopMaps$Entry;->map:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$chooseWorkshopMap$31(Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;Landroid/content/DialogInterface;I)V
    .registers 6

    .line 555
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/WorkshopMaps$Entry;

    .line 556
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/gmodvr/flat/WorkshopMaps$Entry;->title:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Map: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/gmodvr/flat/WorkshopMaps$Entry;->map:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nUses "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and its enabled mods. Autosaves may be replaced; manual saves remain available."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 557
    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda68;

    invoke-direct {p3, p0, p1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda68;-><init>(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/WorkshopMaps$Entry;)V

    .line 558
    const-string p0, "Play"

    invoke-virtual {p2, p0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 p2, 0x0

    .line 561
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$chooseWorkshopMap$32(Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 8

    .line 545
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 546
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "No enabled Workshop maps"

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Download a map through Download from Steam and enable it in Mod manager. Asset-only mods apply automatically and do not have a map to launch."

    .line 547
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    .line 548
    invoke-virtual {p0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 551
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 552
    :goto_29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/WorkshopMaps$Entry;

    iget-object v4, v4, Lcom/gmodvr/flat/WorkshopMaps$Entry;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/WorkshopMaps$Entry;

    iget-object v4, v4, Lcom/gmodvr/flat/WorkshopMaps$Entry;->map:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 553
    :cond_58
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Workshop maps \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda10;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V

    .line 554
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    .line 562
    invoke-virtual {p0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$coop$64(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 992
    const-string p1, "host"

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->launchSandboxMap(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$coop$65(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 996
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "connect"

    invoke-direct {p0, p2, p1}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$coop$66(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 994
    iget-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string p2, "192.168.1.xxx"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/gmodvr/flat/Skin;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object p1

    .line 995
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Join a game"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->inset(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda15;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;)V

    .line 996
    const-string p0, "Join"

    invoke-virtual {p2, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 p2, 0x0

    .line 997
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$coop$67(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1005
    const-string p1, "host"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$coop$68(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1009
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "connect"

    invoke-direct {p0, p2, p1}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$coop$69(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1007
    iget-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string p2, "192.168.1.xxx"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/gmodvr/flat/Skin;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object p1

    .line 1008
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Connect to Partner"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->inset(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda44;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;)V

    .line 1009
    const-string p0, "Connect"

    invoke-virtual {p2, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 p2, 0x0

    .line 1010
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$franchiseTabs$0(Lcom/gmodvr/flat/LauncherFranchise;)V
    .registers 3

    .line 173
    iget-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->busy:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    if-ne p1, v0, :cond_9

    goto :goto_1c

    .line 174
    :cond_9
    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    .line 175
    iget-object p1, p1, Lcom/gmodvr/flat/LauncherFranchise;->profiles:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/GameContentProfile;

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    .line 177
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->render()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private synthetic lambda$gamePicker$1(Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 3

    .line 189
    iget-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->busy:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 190
    :cond_9
    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    .line 192
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->render()V

    :cond_11
    :goto_11
    return-void
.end method

.method private synthetic lambda$gameToggle$51(Ljava/lang/String;)V
    .registers 5

    .line 845
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 846
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 847
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method private static synthetic lambda$launch$18(Ljava/lang/String;Lcom/gmodvr/flat/WorkshopMaps$Entry;)Z
    .registers 2

    .line 438
    iget-object p1, p1, Lcom/gmodvr/flat/WorkshopMaps$Entry;->map:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$launch$19(Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;Lcom/gmodvr/flat/GameMod;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 436
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->lock(Landroid/content/Context;)Lcom/gmodvr/flat/Storage$Lease;

    move-result-object v0

    .line 437
    :try_start_4
    const-string v1, "workshop"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-static {p0, p2}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object p1

    .line 438
    invoke-static {p0, p2}, Lcom/gmodvr/flat/Storage;->user(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v1

    .line 437
    invoke-static {p1, v1, p2}, Lcom/gmodvr/flat/WorkshopMaps;->scan(Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/util/List;

    move-result-object p1

    .line 438
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_32

    .line 439
    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This Workshop map is no longer available. Check that it is enabled in Mod manager."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_30
    move-exception p0

    goto :goto_45

    :cond_32
    :goto_32
    if-nez p4, :cond_36

    const/4 p1, 0x0

    goto :goto_3c

    .line 440
    :cond_36
    iget-object p1, p4, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-static {p1}, Lcom/gmodvr/flat/GameMod;->read(Ljava/io/File;)Lcom/gmodvr/flat/GameMod;

    move-result-object p1

    :goto_3c
    invoke-static {p0, p2, p1}, Lcom/gmodvr/flat/RuntimeAssets;->prepare(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/GameMod;)V
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_30

    if-eqz v0, :cond_44

    .line 441
    invoke-virtual {v0}, Lcom/gmodvr/flat/Storage$Lease;->close()V

    :cond_44
    return-void

    :goto_45
    if-eqz v0, :cond_4f

    .line 436
    :try_start_47
    invoke-virtual {v0}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw p0
.end method

.method private synthetic lambda$launch$20(Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/GameMod;)V
    .registers 7

    .line 443
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateManager;->get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->installing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 444
    sget p1, Lcom/gmodvr/flat/R$string;->updates_install_busy:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 448
    :cond_14
    const-string v0, "continue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 449
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->saves()Ljava/util/List;

    move-result-object p1

    .line 450
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->saveName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    const-string p1, "load"

    goto :goto_36

    .line 451
    :cond_34
    const-string p1, "new"

    .line 453
    :cond_36
    :goto_36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/GameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "profile"

    iget-object p3, p3, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    .line 454
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    if-nez p4, :cond_49

    const/4 p4, 0x0

    goto :goto_4f

    .line 455
    :cond_49
    iget-object p4, p4, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    :goto_4f
    const-string v0, "mod_path"

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string p4, "action"

    .line 456
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "target"

    .line 457
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 453
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$launchArguments$72(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1110
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$launchSandboxMap$61([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 979
    invoke-static {p0, p4}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, p4}, Lcom/gmodvr/flat/Storage;->user(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gmodvr/flat/GmodMaps;->mountedGameIds(Ljava/io/File;Ljava/io/File;)Ljava/util/Set;

    move-result-object p0

    .line 978
    invoke-static {p2, p3, p0}, Lcom/gmodvr/flat/GmodMaps;->missingContentWarning(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, p1, p2

    return-void
.end method

.method private synthetic lambda$launchSandboxMap$62(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 982
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$launchSandboxMap$63([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 980
    aget-object v1, p1, v0

    if-nez v1, :cond_9

    invoke-direct {p0, p2, p3}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 981
    :cond_9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Game content missing"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda71;

    invoke-direct {v0, p0, p2, p3}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda71;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string p0, "Launch anyway"

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 p2, 0x0

    .line 983
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$onActivityResult$43(Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 793
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    .line 794
    :try_start_8
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sessionUser()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Storage;->exportSaves(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_15

    if-eqz p1, :cond_14

    .line 795
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    if-eqz p1, :cond_20

    .line 793
    :try_start_18
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw p0
.end method

.method private synthetic lambda$onActivityResult$44()V
    .registers 3

    .line 796
    const-string v0, "Saves exported successfully"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$onActivityResult$45(Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 799
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 800
    :try_start_8
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sessionUser()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Storage;->restoreSaves(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_15

    if-eqz p1, :cond_14

    .line 801
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    if-eqz p1, :cond_20

    .line 799
    :try_start_18
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw p0
.end method

.method private synthetic lambda$onActivityResult$46()V
    .registers 3

    .line 802
    const-string v0, "Saves restored successfully"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$playerName$52(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 869
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "gmod_player_name"

    const-string p3, "unnamed"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 870
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->render()V

    return-void
.end method

.method private synthetic lambda$playerName$53(Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 6

    .line 875
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/gmodvr/flat/PlayerName;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 876
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "gmod_player_name"

    invoke-interface {p2, v0, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 877
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 878
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->render()V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p0

    .line 880
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :goto_28
    return-void
.end method

.method private synthetic lambda$playerName$54(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;)V
    .registers 6

    const/4 p4, -0x1

    .line 873
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p4

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$renderSandbox$47()V
    .registers 2

    const/4 v0, 0x0

    .line 818
    iput-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->playAfterMapChoice:Z

    .line 819
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->chooseSandboxMap()V

    return-void
.end method

.method private synthetic lambda$renderSandbox$48()V
    .registers 3

    .line 823
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sandboxStartAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "menu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 824
    :cond_11
    const-string v0, "map"

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->launchSandboxMap(Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method private synthetic lambda$renderSandbox$49()V
    .registers 2

    const/4 v0, 0x1

    .line 830
    iput-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->playAfterMapChoice:Z

    .line 831
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->chooseSandboxMap()V

    return-void
.end method

.method private synthetic lambda$renderSandbox$50()V
    .registers 3

    .line 833
    const-string v0, "menu"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$renderSession$2()V
    .registers 3

    .line 221
    const-string v0, "continue"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$renderSession$3(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 228
    const-string p1, "new"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$renderSession$4()V
    .registers 3

    .line 225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Start a new game?"

    .line 226
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Your manual saves remain available. Autosaves will be replaced as you play."

    .line 227
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda83;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda83;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    .line 228
    const-string p0, "Start"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Cancel"

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$renderTools$10()V
    .registers 4

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/CustomButtonsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    iget-object v1, v1, Lcom/gmodvr/flat/LauncherFranchise;->id:Ljava/lang/String;

    const-string v2, "franchise"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$renderTools$11()V
    .registers 6

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v2, v2, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    if-nez v2, :cond_26

    const-string v2, ""

    goto :goto_3b

    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    iget-object v3, v3, Lcom/gmodvr/flat/GameMod;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-saves-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd-HHmm"

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 287
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$renderTools$12()V
    .registers 3

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$renderTools$13()V
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->crashBanner:Lcom/gmodvr/flat/CrashBanner;

    invoke-virtual {p0}, Lcom/gmodvr/flat/CrashBanner;->refresh()V

    return-void
.end method

.method private synthetic lambda$renderTools$14()V
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda70;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda70;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/gmodvr/flat/LogShare;->share(Landroid/app/Activity;Lcom/gmodvr/flat/Skin;Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$renderTools$15()V
    .registers 3

    .line 293
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/gmodvr/flat/R$string;->app_name:I

    .line 294
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "GDroid brings Garry\'s Mod to Android phones and tablets.\n\nDeveloper: s3551\nDiscord: https://discord.gg/rqxyuPxbNF\n\nControls: the left of the screen moves, the right looks. Top right: spawn menu, context menu, undo. Right side: use, jump, attack, crouch, reload, secondary attack, push/pull a held prop (physgun), noclip. Hold use while dragging to rotate a held prop. The gear button edits the layout. In menus, tap to select, drag to move controls, or hold an element for half a second to right-click it. Custom buttons (Settings & tools) add on-screen keys for addons that react to a key press. Bluetooth controllers, keyboards and mice also work (Q / C hold the menus).\n\nGame data is user-supplied (your Garry\'s Mod folder) or downloaded via Steam.\n\nLauncher from SourceAndroid; engine from SourceVRPort with nillerusr\'s Android work."

    .line 295
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Close"

    const/4 v1, 0x0

    .line 306
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    const v0, 0x102000b

    .line 307
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_32

    const/4 v0, 0x1

    .line 309
    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 310
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_32
    return-void
.end method

.method private synthetic lambda$renderTools$5()V
    .registers 4

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/UpdateSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    iget-object v1, v1, Lcom/gmodvr/flat/LauncherFranchise;->id:Ljava/lang/String;

    .line 243
    const-string v2, "franchise"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 242
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$renderTools$6()V
    .registers 4

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/SteamDownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v1, v1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    const-string v2, "profile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    iget-object v1, v1, Lcom/gmodvr/flat/LauncherFranchise;->id:Ljava/lang/String;

    const-string v2, "franchise"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$renderTools$7()V
    .registers 4

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/ModManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    iget-object v1, v1, Lcom/gmodvr/flat/LauncherFranchise;->id:Ljava/lang/String;

    const-string v2, "franchise"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$renderTools$8()V
    .registers 2

    const/4 v0, 0x0

    .line 260
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->chooseImport(Z)V

    return-void
.end method

.method private synthetic lambda$renderTools$9()V
    .registers 2

    const/4 v0, 0x1

    .line 261
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/LauncherActivity;->chooseImport(Z)V

    return-void
.end method

.method private static synthetic lambda$saves$21(Ljava/io/File;Ljava/io/File;)I
    .registers 4

    .line 469
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$settings$70(Landroid/widget/SeekBar;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1046
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private static synthetic lambda$settings$71(Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;[ILandroid/widget/SeekBar;Landroid/content/DialogInterface;I)V
    .registers 9

    .line 1089
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p7, "touch"

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-interface {p0, p7, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "touch_opacity"

    .line 1090
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "invert"

    .line 1091
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "autoexposure"

    .line 1092
    invoke-virtual {p4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1093
    invoke-virtual {p6}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    aget p1, p5, p1

    const-string p2, "fps"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1094
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$work$16(Ljava/lang/Exception;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->busy:Z

    .line 404
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_22

    .line 405
    :cond_10
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->updateStatus()V

    if-eqz p1, :cond_1d

    .line 406
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    goto :goto_22

    :cond_1d
    if-eqz p2, :cond_22

    .line 407
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_22
    :goto_22
    return-void
.end method

.method private synthetic lambda$work$17(Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V
    .registers 5

    .line 400
    :try_start_0
    invoke-interface {p1}, Lcom/gmodvr/flat/LauncherActivity$Work;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p1, 0x0

    goto :goto_6

    :catch_5
    move-exception p1

    .line 402
    :goto_6
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda59;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/Exception;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private launch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 413
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateManager;->get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->installing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 414
    sget p1, Lcom/gmodvr/flat/R$string;->updates_install_busy:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 417
    :cond_14
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->usesSharedContent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 p1, 0x5

    .line 418
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->requestFileAccess(I)V

    return-void

    .line 421
    :cond_25
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->gameRunning()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 422
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/gmodvr/flat/GameActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x20000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 425
    :cond_3c
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/Storage;->ready(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Install or import game files for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object p2, p2, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " first."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 429
    :cond_62
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    if-eqz v0, :cond_84

    const-string v0, "new"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    const-string v0, "continue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->saves()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 430
    :cond_80
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->chooseModMap()V

    return-void

    .line 433
    :cond_84
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    .line 434
    iget-object v7, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sessionTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;Lcom/gmodvr/flat/GameMod;)V

    new-instance v10, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;

    move-object v1, v10

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;-><init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/GameMod;)V

    invoke-direct {p0, v8, v9, v10}, Lcom/gmodvr/flat/LauncherActivity;->work(Ljava/lang/String;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V

    return-void
.end method

.method private launchArguments()V
    .registers 7

    .line 1100
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1101
    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v3, "-novid -console +sv_cheats 1"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/gmodvr/flat/Skin;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v2

    .line 1102
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1103
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->argumentKey()Ljava/lang/String;

    move-result-object v1

    .line 1104
    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launch arguments \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sessionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Add custom Source engine command-line flags or cvars:"

    .line 1107
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1108
    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->inset(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda51;

    invoke-direct {v3, v0, v1, v2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda51;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 1109
    const-string v0, "Save"

    invoke-virtual {p0, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Cancel"

    const/4 v1, 0x0

    .line 1112
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private launchSandboxMap(Ljava/lang/String;)V
    .registers 11

    .line 969
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmod_map"

    const-string v2, "gm_construct"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 970
    invoke-static {v0, v1}, Lcom/gmodvr/flat/GmodMaps;->category(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 971
    invoke-static {v7}, Lcom/gmodvr/flat/GmodMaps;->requiredGames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/gmodvr/flat/LauncherActivity;->busy:Z

    if-nez v2, :cond_4f

    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->gameRunning()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 972
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->usesSharedContent(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_4f

    .line 976
    :cond_35
    iget-object v8, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    .line 977
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 978
    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v1

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;-><init>(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)V

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;-><init>(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Checking game content\u2026"

    invoke-direct {p0, p1, v2, v3}, Lcom/gmodvr/flat/LauncherActivity;->work(Ljava/lang/String;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V

    return-void

    .line 973
    :cond_4f
    :goto_4f
    invoke-direct {p0, p1, v0}, Lcom/gmodvr/flat/LauncherActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private pane(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 8

    .line 150
    invoke-static {p0}, Lcom/gmodvr/flat/Skin;->scroller(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object v0

    .line 151
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41c00000    # 24.0f

    .line 153
    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-direct {p0, v4}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result p0

    invoke-virtual {v1, v3, v4, v5, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 155
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private playerName()V
    .registers 7

    .line 858
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 859
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const v2, 0x80001

    const-string v3, "Player name"

    invoke-virtual {v1, v3, v2}, Lcom/gmodvr/flat/Skin;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v1

    .line 860
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 861
    const-string v2, "gmod_player_name"

    const-string v4, ""

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 862
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 863
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 864
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "The name other players see in multiplayer. Applies the next time you launch Garry\'s Mod."

    .line 865
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 866
    invoke-direct {p0, v1}, Lcom/gmodvr/flat/LauncherActivity;->inset(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 867
    const-string v3, "Save"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda17;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/SharedPreferences;)V

    .line 868
    const-string v5, "Use default"

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    .line 872
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 873
    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 883
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private refreshUpdateStatus()V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->updateStatus:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 329
    :cond_5
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateManager;->get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->snapshot()Lcom/gmodvr/flat/UpdateManager$Snapshot;

    move-result-object v1

    .line 331
    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->automatic()Z

    move-result v0

    invoke-static {v0, v1}, Lcom/gmodvr/flat/UpdateManager;->announces(ZLcom/gmodvr/flat/UpdateManager$Snapshot;)Z

    move-result v0

    .line 332
    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->updateStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    const/4 v3, 0x0

    goto :goto_1d

    :cond_1b
    const/16 v3, 0x8

    :goto_1d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2b

    .line 333
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->updateStatus:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/gmodvr/flat/UpdateSettingsActivity;->status(Landroid/content/Context;Lcom/gmodvr/flat/UpdateManager$Snapshot;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    return-void
.end method

.method private render()V
    .registers 14

    .line 101
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    iget-object v0, v0, Lcom/gmodvr/flat/LauncherFranchise;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/Skin;->of(Landroid/app/Activity;Ljava/lang/String;)Lcom/gmodvr/flat/Skin;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x280

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v3

    .line 104
    :goto_1d
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, -0xf4f1f0

    .line 106
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    invoke-static {v1}, Lcom/gmodvr/flat/Skin;->fitSystemBars(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/high16 v4, 0x41e00000    # 28.0f

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    if-eqz v0, :cond_a5

    .line 112
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x50

    .line 113
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v9, 0x41c00000    # 24.0f

    .line 114
    invoke-direct {p0, v9}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v10

    const/high16 v11, 0x41400000    # 12.0f

    invoke-direct {p0, v11}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v11

    invoke-direct {p0, v9}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v12

    invoke-virtual {v2, v10, v11, v12, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v6, 0x41200000    # 10.0f

    .line 116
    invoke-direct {p0, v6}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v6

    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 117
    invoke-direct {p0, v9}, Lcom/gmodvr/flat/LauncherActivity;->header(F)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v2}, Lcom/gmodvr/flat/Skin;->rule()Landroid/view/View;

    move-result-object v2

    iget-object v6, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v6, v5}, Lcom/gmodvr/flat/Skin;->hairline(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->pane(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 125
    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v3}, Lcom/gmodvr/flat/Skin;->rule()Landroid/view/View;

    move-result-object v3

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v7}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v7

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->pane(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    goto :goto_105

    .line 128
    :cond_a5
    invoke-static {p0}, Lcom/gmodvr/flat/Skin;->scroller(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object v9

    .line 129
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v1, Lcom/gmodvr/flat/Skin$Column;

    const/high16 v3, 0x44200000    # 640.0f

    invoke-direct {p0, v3}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v3

    invoke-direct {v1, p0, v3}, Lcom/gmodvr/flat/Skin$Column;-><init>(Landroid/content/Context;I)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 131
    invoke-direct {p0, v3}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v7

    invoke-direct {p0, v3}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v10

    invoke-direct {p0, v3}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v11

    invoke-virtual {v1, v7, v10, v3, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v8, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41f00000    # 30.0f

    .line 133
    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->header(F)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v2}, Lcom/gmodvr/flat/Skin;->rule()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v6}, Lcom/gmodvr/flat/Skin;->hairline(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v6}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v6

    invoke-direct {v3, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v1

    .line 142
    :goto_105
    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity;->crashBanner:Lcom/gmodvr/flat/CrashBanner;

    iget-object v6, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v3, v6}, Lcom/gmodvr/flat/CrashBanner;->view(Lcom/gmodvr/flat/Skin;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    invoke-direct {p0, v1}, Lcom/gmodvr/flat/LauncherActivity;->renderSession(Landroid/widget/LinearLayout;)V

    .line 144
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_11d

    move v4, v5

    :cond_11d
    invoke-direct {p0, v4}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v0

    invoke-direct {v3, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->renderTools(Landroid/widget/LinearLayout;)V

    .line 146
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->updateStatus()V

    return-void
.end method

.method private renderSandbox(Landroid/widget/LinearLayout;)V
    .registers 9

    .line 811
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "gmod_map"

    const-string v3, "gm_construct"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    const-string v2, "menu"

    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sandboxStartAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 817
    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const v4, -0x72665d

    invoke-virtual {v3, v0, v4}, Lcom/gmodvr/flat/Skin;->tag(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda45;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda45;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v5, "Map"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v0, v4}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v4, 0x40800000    # 4.0f

    .line 820
    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 817
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    :cond_3b
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda46;

    invoke-direct {v3, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda46;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v4, "Play"

    invoke-virtual {v0, v4, v3}, Lcom/gmodvr/flat/Skin;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->play:Landroid/widget/Button;

    .line 826
    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_6a

    .line 829
    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda47;

    invoke-direct {v3, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda47;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v4, "Play a map\u2026"

    invoke-virtual {v2, v4, v3}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    goto :goto_77

    .line 833
    :cond_6a
    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda48;

    invoke-direct {v3, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda48;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v4, "Main menu"

    invoke-virtual {v2, v4, v3}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    :goto_77
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 828
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 836
    invoke-direct {p0, v1}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 837
    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v4, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda9;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v5, "LAN multiplayer"

    invoke-virtual {v3, v5, v4}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private renderSession(Landroid/widget/LinearLayout;)V
    .registers 8

    .line 201
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const v1, -0xa49991

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->panel(I)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->statusPanel:Landroid/widget/LinearLayout;

    .line 202
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->statusLabel:Landroid/widget/TextView;

    .line 203
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->statusPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v1, 0x41600000    # 14.0f

    const v2, -0x191513

    const-string v3, "Checking game files\u2026"

    invoke-virtual {v0, v3, v1, v2}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->status:Landroid/widget/TextView;

    .line 205
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->statusPanel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v0}, Lcom/gmodvr/flat/Skin;->progress()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->importProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 208
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->importProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 210
    invoke-direct {p0, v1}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 211
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->statusPanel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->importProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->statusPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v0, v0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    const-string v1, "garrysmod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 215
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->renderSandbox(Landroid/widget/LinearLayout;)V

    return-void

    .line 219
    :cond_7d
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    if-nez v1, :cond_86

    const-string v1, "Base game"

    goto :goto_88

    :cond_86
    iget-object v1, v1, Lcom/gmodvr/flat/GameMod;->title:Ljava/lang/String;

    :goto_88
    const v2, -0x72665d

    invoke-virtual {v0, v1, v2}, Lcom/gmodvr/flat/Skin;->tag(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v4, "Campaign"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v1, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda6;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Play"

    invoke-virtual {v0, v2, v1}, Lcom/gmodvr/flat/Skin;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->play:Landroid/widget/Button;

    .line 222
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 225
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v3, "New game"

    invoke-virtual {v1, v3, v2}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 231
    invoke-direct {p0, v2}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 232
    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v4, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda8;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v5, "Load a save"

    invoke-virtual {v3, v5, v4}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    if-nez v0, :cond_128

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v0, v0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    const-string v1, "portal2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 236
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda9;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v3, "LAN co-op \u00b7 Experimental"

    invoke-virtual {v0, v3, v1}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_128
    return-void
.end method

.method private renderTools(Landroid/widget/LinearLayout;)V
    .registers 11

    .line 241
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda21;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Updates"

    const-string v3, "Check for and install new GDroid releases."

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, ""

    const/high16 v2, 0x41500000    # 13.0f

    const v3, -0x72665d

    invoke-virtual {v0, v1, v2, v3}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->updateStatus:Landroid/widget/TextView;

    .line 245
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->refreshUpdateStatus()V

    .line 247
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Downloads & mods"

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda30;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Download from Steam"

    invoke-virtual {v0, v2, v4, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda31;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Mod manager"

    invoke-virtual {v0, v2, v4, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda32;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Play Workshop map\u2026"

    const-string v5, "Choose a map from enabled Workshop downloads."

    invoke-virtual {v0, v2, v5, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Launch a mod\u2026"

    invoke-virtual {v0, v2, v4, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Local game files"

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda33;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v5, "Import game files"

    const-string v6, "Fast move from local storage, USB, or SD card into /storage/emulated/0/srceng."

    invoke-virtual {v0, v5, v6, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Keep source"

    const v5, -0xa49991

    invoke-virtual {v0, v1, v5}, Lcom/gmodvr/flat/Skin;->tag(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v6, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda34;

    invoke-direct {v6, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda34;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v7, "Copy game files"

    invoke-virtual {v0, v7, v4, v1, v6}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "No copy"

    invoke-virtual {v0, v1, v5}, Lcom/gmodvr/flat/Skin;->tag(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v6, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda35;

    invoke-direct {v6, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda35;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v7, "Play from a folder"

    const-string v8, "Plays directly from internal storage, SD card, or USB drive."

    invoke-virtual {v0, v7, v8, v1, v6}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Settings & tools"

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda36;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Display & controls"

    invoke-virtual {v0, v2, v4, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda13;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Control layout"

    const-string v6, "Preview touch controls and adjust their color, position and size."

    invoke-virtual {v0, v2, v6, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v0, v0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    const-string v1, "garrysmod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175

    .line 268
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmod_player_name"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    if-nez v0, :cond_125

    .line 270
    const-string v0, "Set the name other players see in multiplayer."

    :cond_125
    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda22;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    .line 269
    const-string v6, "Player name"

    invoke-virtual {v1, v6, v0, v4, v2}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    const-string v0, "menu"

    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sandboxStartAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    if-eqz v0, :cond_144

    .line 273
    const-string v0, "Main menu"

    goto :goto_146

    :cond_144
    const-string v0, "Selected map"

    :goto_146
    invoke-virtual {v1, v0, v3}, Lcom/gmodvr/flat/Skin;->tag(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda23;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    .line 272
    const-string v3, "Start at"

    const-string v6, "What Play opens: the main menu (new game, options, quit) or the selected map."

    invoke-virtual {v1, v3, v6, v0, v2}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    const-string v0, "Walk through friendly NPCs"

    const-string v1, "Off: you bump into citizens and other allies, who step aside (like Garry\'s Mod). On: you pass through them."

    const-string v2, "gmod_npc_walkthrough"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/gmodvr/flat/LauncherActivity;->gameToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "Walking animation when not sprinting"

    const-string v1, "Off: the run animation plays at normal speed (like Garry\'s Mod). On: walk animation unless sprinting."

    const-string v2, "gmod_walk_anim"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/gmodvr/flat/LauncherActivity;->gameToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "Mute failed grab sound"

    const-string v1, "Silence the beep when a grab or use attempt fails. Applies next time you launch the game."

    const-string v2, "gmod_mute_failed_grab"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/gmodvr/flat/LauncherActivity;->gameToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_175
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda24;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Custom buttons"

    const-string v3, "Touch buttons that press a key for addons (G, F, mouse 3, ...)."

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda25;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Launch arguments"

    invoke-virtual {v0, v2, v4, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda26;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Back up saves"

    invoke-virtual {v0, v2, v4, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda27;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Restore a backup"

    invoke-virtual {v0, v2, v4, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda28;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Share logs"

    const-string v3, "Logs, crash reports and device details as a zip, for a bug report."

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda29;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v2, "Help & credits"

    invoke-virtual {v0, v2, v4, v4, v1}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 314
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/gmodvr/flat/R$string;->app_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0.1.29"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private requestFileAccess(I)V
    .registers 5

    .line 759
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_38

    .line 761
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
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

    .line 763
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    goto :goto_41

    .line 765
    :catch_2d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_41

    .line 768
    :cond_38
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_41
    return-void
.end method

.method private sandboxStartAction()Ljava/lang/String;
    .registers 3

    .line 853
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "gmod_start_at"

    const/4 v1, 0x0

    .line 854
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 853
    invoke-static {p0}, Lcom/gmodvr/flat/LaunchArguments;->startAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private saveName(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 473
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private saves()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sessionUser()Ljava/io/File;

    move-result-object p0

    const-string v2, "save"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 466
    array-length v1, p0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_34

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[A-Za-z0-9_-]+\\.sav"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_31} :catch_34

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 469
    :catch_34
    :cond_34
    new-instance p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda72;

    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda72;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private selectMod(Lcom/gmodvr/flat/GameMod;)V
    .registers 7

    .line 499
    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    .line 500
    const-string v0, "mods"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 501
    new-instance v1, Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folders_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v4, v4, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_36

    .line 502
    iget-object v2, p1, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_36
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v4, v4, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_54

    const-string p1, ""

    goto :goto_5a

    :cond_54
    iget-object p1, p1, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    :goto_5a
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v2, v2, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 505
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->render()V

    return-void
.end method

.method private sessionTitle()Ljava/lang/String;
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object p0, p0, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    goto :goto_b

    :cond_9
    iget-object p0, v0, Lcom/gmodvr/flat/GameMod;->title:Ljava/lang/String;

    :goto_b
    return-object p0
.end method

.method private sessionUser()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/Storage;->user(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object p0

    goto :goto_15

    .line 491
    :cond_b
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-virtual {v0, v1, p0}, Lcom/gmodvr/flat/GameMod;->userDirectory(Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method private settings()V
    .registers 17

    move-object/from16 v0, p0

    .line 1023
    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1024
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1025
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41a00000    # 20.0f

    .line 1026
    invoke-direct {v0, v5}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {v0, v7}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v8

    invoke-direct {v0, v5}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v9

    invoke-direct {v0, v7}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v7

    invoke-virtual {v1, v6, v8, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1028
    iget-object v6, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v7, "Enable Touch Controls"

    invoke-virtual {v6, v7}, Lcom/gmodvr/flat/Skin;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v6

    .line 1029
    const-string v7, "touch"

    invoke-interface {v4, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1030
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1032
    const-string v7, "touch_opacity"

    const/16 v8, 0x64

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1033
    iget-object v9, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Control Opacity: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const v11, -0x72665d

    invoke-virtual {v9, v10, v11}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v9

    const/high16 v10, 0x40c00000    # 6.0f

    .line 1034
    invoke-direct {v0, v10}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v12

    const/high16 v13, 0x41400000    # 12.0f

    invoke-direct {v0, v13}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v14

    const/high16 v15, 0x40800000    # 4.0f

    invoke-direct {v0, v15}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v13

    invoke-virtual {v9, v12, v14, v2, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1035
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1037
    new-instance v12, Landroid/widget/SeekBar;

    invoke-direct {v12, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 1038
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1039
    iget-object v14, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v14, v14, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v14, 0x41000000    # 8.0f

    .line 1040
    invoke-direct {v0, v14}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v15

    invoke-direct {v0, v5}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v14

    invoke-virtual {v13, v15, v14}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 1041
    invoke-virtual {v12, v13}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1042
    invoke-virtual {v12, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1043
    invoke-virtual {v12, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1044
    const-string v7, "Control opacity"

    invoke-virtual {v12, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1045
    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    invoke-virtual {v12, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1046
    new-instance v7, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda12;

    invoke-direct {v7, v12}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda12;-><init>(Landroid/widget/SeekBar;)V

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1047
    new-instance v7, Lcom/gmodvr/flat/LauncherActivity$2;

    invoke-direct {v7, v0, v9}, Lcom/gmodvr/flat/LauncherActivity$2;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/TextView;)V

    invoke-virtual {v12, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1052
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1054
    iget-object v7, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v8, "Invert Y-Axis (Pitch)"

    invoke-virtual {v7, v8}, Lcom/gmodvr/flat/Skin;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v7

    .line 1055
    const-string v8, "invert"

    invoke-interface {v4, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1056
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1058
    iget-object v8, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v9, "Auto-Exposure Correction"

    invoke-virtual {v8, v9}, Lcom/gmodvr/flat/Skin;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v8

    .line 1059
    const-string v9, "autoexposure"

    invoke-interface {v4, v9, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1060
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1062
    iget-object v9, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Framerate Limit: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "fps"

    const/16 v15, 0x3c

    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " FPS"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v11}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v3

    .line 1063
    invoke-direct {v0, v10}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v9

    const/high16 v10, 0x41800000    # 16.0f

    invoke-direct {v0, v10}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v10

    const/high16 v11, 0x40800000    # 4.0f

    invoke-direct {v0, v11}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v11

    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1064
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1066
    new-instance v10, Landroid/widget/SeekBar;

    invoke-direct {v10, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 1067
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1068
    iget-object v11, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v11, v11, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v11, 0x41000000    # 8.0f

    .line 1069
    invoke-direct {v0, v11}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v11

    invoke-direct {v0, v5}, Lcom/gmodvr/flat/LauncherActivity;->dp(F)I

    move-result v5

    invoke-virtual {v9, v11, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 1070
    invoke-virtual {v10, v9}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x3

    .line 1071
    invoke-virtual {v10, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1072
    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/16 v11, 0x5a

    const/16 v13, 0x1e

    if-ne v9, v13, :cond_15c

    goto :goto_165

    :cond_15c
    if-ne v9, v15, :cond_160

    const/4 v2, 0x1

    goto :goto_165

    :cond_160
    if-ne v9, v11, :cond_164

    const/4 v2, 0x2

    goto :goto_165

    :cond_164
    move v2, v5

    .line 1073
    :goto_165
    invoke-virtual {v10, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v2, 0x78

    .line 1074
    filled-new-array {v13, v15, v11, v2}, [I

    move-result-object v9

    .line 1075
    new-instance v2, Lcom/gmodvr/flat/LauncherActivity$3;

    invoke-direct {v2, v0, v3, v9}, Lcom/gmodvr/flat/LauncherActivity$3;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/TextView;[I)V

    invoke-virtual {v10, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1080
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1082
    iget-object v2, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda13;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string v5, "Edit control layout"

    invoke-virtual {v2, v5, v3}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, v0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v3, v5}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/Skin;->scroller(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object v2

    .line 1084
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1085
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Display & Controls"

    .line 1086
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1087
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;

    move-object v3, v1

    move-object v5, v6

    move-object v6, v12

    invoke-direct/range {v3 .. v10}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;-><init>(Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;[ILandroid/widget/SeekBar;)V

    .line 1088
    const-string v2, "Save"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    .line 1096
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .registers 3

    .line 385
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 386
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/gmodvr/flat/R$string;->app_name:I

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_25
    return-void
.end method

.method private updateStatus()V
    .registers 13

    .line 337
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_1c0

    iget-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->busy:Z

    if-eqz v0, :cond_a

    goto/16 :goto_1c0

    .line 338
    :cond_a
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p0, v0}, Lcom/gmodvr/flat/Storage;->ready(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Z

    move-result v0

    .line 339
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->usesSharedContent(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_20

    move v1, v2

    goto :goto_21

    :cond_20
    move v1, v3

    .line 340
    :goto_21
    const-string v4, "import"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "status"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 341
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 342
    const-string v6, "progress"

    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 343
    const-string v8, "error"

    invoke-interface {v4, v8, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 344
    iget-object v8, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v8, v8, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/gmodvr/flat/Storage;->customContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_56

    .line 348
    iget-object v5, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v5, v5, Lcom/gmodvr/flat/Skin;->accent:I

    const-string v7, "Allow file access to read game files."

    const-string v8, "Access needed"

    move-object v11, v7

    move v7, v5

    move-object v5, v11

    goto/16 :goto_12b

    .line 349
    :cond_56
    sget-boolean v9, Lcom/gmodvr/flat/ImportService;->running:Z

    if-eqz v9, :cond_8a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v6, :cond_65

    goto :goto_7b

    :cond_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v7, v7, Lcom/gmodvr/flat/Skin;->accent:I

    const-string v8, "Importing"

    goto/16 :goto_12b

    :cond_8a
    const v7, -0x179fb1

    const v9, -0x793691

    if-eqz v8, :cond_bd

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ready to play from "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_b3

    :cond_a6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Folder missing files for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v8, v8, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    goto :goto_9e

    :goto_b3
    if-eqz v0, :cond_b8

    .line 352
    const-string v8, "Ready \u00b7 external folder"

    goto :goto_ba

    :cond_b8
    const-string v8, "Files missing"

    :goto_ba
    if-eqz v0, :cond_12b

    goto :goto_109

    :cond_bd
    if-eqz v4, :cond_c2

    .line 355
    const-string v8, "Import failed"

    goto :goto_12b

    :cond_c2
    if-eqz v0, :cond_10b

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ready to play ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sessionTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 359
    :try_start_de
    const-string v7, "garrysmod"

    iget-object v8, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v8, v8, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_107

    iget-object v7, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    .line 360
    invoke-static {p0, v7}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/gmodvr/flat/GameFolder;->usesHalfLife2Packs(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_107

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u00b7 Half-Life 2 content from srceng/hl2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_107} :catch_107

    .line 363
    :catch_107
    :cond_107
    const-string v8, "Ready"

    :goto_109
    move v7, v9

    goto :goto_12b

    .line 366
    :cond_10b
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_126

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download via Steam or import game files for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v7, v7, Lcom/gmodvr/flat/GameContentProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 368
    :cond_126
    const-string v8, "Not installed"

    const v7, -0xa49991

    .line 371
    :cond_12b
    :goto_12b
    iget-object v9, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    if-eqz v9, :cond_155

    if-eqz v0, :cond_155

    sget-boolean v9, Lcom/gmodvr/flat/ImportService;->running:Z

    if-nez v9, :cond_155

    if-nez v4, :cond_155

    if-nez v1, :cond_155

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sessionTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;

    iget-object v5, v5, Lcom/gmodvr/flat/GameMod;->directory:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 373
    :cond_155
    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->statusLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->statusLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->statusPanel:Landroid/widget/LinearLayout;

    invoke-static {v4, v7}, Lcom/gmodvr/flat/Skin;->mark(Landroid/view/View;I)V

    .line 377
    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->importProgress:Landroid/widget/ProgressBar;

    sget-boolean v5, Lcom/gmodvr/flat/ImportService;->running:Z

    if-eqz v5, :cond_171

    move v5, v3

    goto :goto_173

    :cond_171
    const/16 v5, 0x8

    :goto_173
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->importProgress:Landroid/widget/ProgressBar;

    if-gez v6, :cond_17c

    move v5, v2

    goto :goto_17d

    :cond_17c
    move v5, v3

    :goto_17d
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 379
    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->importProgress:Landroid/widget/ProgressBar;

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 380
    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity;->play:Landroid/widget/Button;

    if-nez v0, :cond_18f

    if-eqz v1, :cond_194

    :cond_18f
    sget-boolean v0, Lcom/gmodvr/flat/ImportService;->running:Z

    if-nez v0, :cond_194

    goto :goto_195

    :cond_194
    move v2, v3

    :goto_195
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->play:Landroid/widget/Button;

    if-eqz v1, :cond_19f

    const-string p0, "Allow game file access"

    goto :goto_1bd

    :cond_19f
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->gameRunning()Z

    move-result v1

    if-eqz v1, :cond_1a8

    const-string p0, "Return to game"

    goto :goto_1bd

    :cond_1a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->sessionTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1bd
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c0
    :goto_1c0
    return-void
.end method

.method private work(Ljava/lang/String;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V
    .registers 5

    .line 393
    iget-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->busy:Z

    if-nez v0, :cond_3b

    sget-boolean v0, Lcom/gmodvr/flat/ImportService;->running:Z

    if-eqz v0, :cond_9

    goto :goto_3b

    :cond_9
    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcom/gmodvr/flat/LauncherActivity;->busy:Z

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->play:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 395
    iget-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->statusLabel:Landroid/widget/TextView;

    const-string v0, "Working"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->statusLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v0, v0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->statusPanel:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v0, v0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-static {p1, v0}, Lcom/gmodvr/flat/Skin;->mark(Landroid/view/View;I)V

    .line 398
    iget-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda77;

    invoke-direct {v0, p0, p2, p3}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda77;-><init>(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 393
    :cond_3b
    :goto_3b
    const-string p1, "Wait for the current operation to finish."

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b3

    if-nez p3, :cond_7

    goto/16 :goto_b3

    .line 774
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x1

    if-ne p1, p3, :cond_28

    .line 776
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/gmodvr/flat/ImportService;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object p2, p2, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    const-string p3, "profile"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 777
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_b3

    :cond_28
    const/4 p3, 0x6

    if-ne p1, p3, :cond_43

    if-eqz p2, :cond_43

    .line 779
    :try_start_2d
    invoke-static {p0, p2}, Lcom/gmodvr/flat/LocalFolder;->path(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/gmodvr/flat/GameMod;->read(Ljava/io/File;)Lcom/gmodvr/flat/GameMod;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->selectMod(Lcom/gmodvr/flat/GameMod;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_38} :catch_3a

    goto/16 :goto_b3

    :catch_3a
    move-exception p1

    .line 780
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    goto :goto_b3

    :cond_43
    const/4 p3, 0x4

    if-ne p1, p3, :cond_8a

    if-eqz p2, :cond_8a

    .line 783
    :try_start_48
    invoke-static {p0, p2}, Lcom/gmodvr/flat/LocalFolder;->path(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 784
    iget-object p2, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p2, p1}, Lcom/gmodvr/flat/GameFolder;->locate(Lcom/gmodvr/flat/GameContentProfile;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 785
    const-string p2, "storage"

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "custom_content_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v0, v0, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 786
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 787
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->render()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_80} :catch_81

    goto :goto_b3

    :catch_81
    move-exception p1

    .line 789
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    goto :goto_b3

    :cond_8a
    const/4 p3, 0x2

    if-ne p1, p3, :cond_9f

    if-eqz p2, :cond_9f

    .line 792
    new-instance p1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda37;

    invoke-direct {p1, p0, p2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda37;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/net/Uri;)V

    new-instance p2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda38;

    invoke-direct {p2, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda38;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string p3, "Backing up saves\u2026"

    invoke-direct {p0, p3, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->work(Ljava/lang/String;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V

    goto :goto_b3

    :cond_9f
    const/4 p3, 0x3

    if-ne p1, p3, :cond_b3

    if-eqz p2, :cond_b3

    .line 798
    new-instance p1, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda39;

    invoke-direct {p1, p0, p2}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda39;-><init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/net/Uri;)V

    new-instance p2, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda40;

    invoke-direct {p2, p0}, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda40;-><init>(Lcom/gmodvr/flat/LauncherActivity;)V

    const-string p3, "Restoring saves\u2026"

    invoke-direct {p0, p3, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->work(Ljava/lang/String;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->render()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance p1, Lcom/gmodvr/flat/CrashBanner;

    invoke-direct {p1, p0}, Lcom/gmodvr/flat/CrashBanner;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->crashBanner:Lcom/gmodvr/flat/CrashBanner;

    .line 48
    invoke-static {}, Lcom/gmodvr/flat/LauncherFranchise;->defaultFranchises()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->franchises:Ljava/util/List;

    const/4 v0, 0x0

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/LauncherFranchise;

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedFranchise:Lcom/gmodvr/flat/LauncherFranchise;

    .line 50
    iget-object p1, p1, Lcom/gmodvr/flat/LauncherFranchise;->profiles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/GameContentProfile;

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    .line 51
    const-string p1, "mods"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v1, v1, Lcom/gmodvr/flat/GameContentProfile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 54
    :try_start_4a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gmodvr/flat/GameMod;->read(Ljava/io/File;)Lcom/gmodvr/flat/GameMod;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedMod:Lcom/gmodvr/flat/GameMod;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_6d

    :catch_56
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Previously selected mod is unavailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 p1, 0x0

    .line 58
    :goto_6e
    :try_start_6e
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->lock(Landroid/content/Context;)Lcom/gmodvr/flat/Storage$Lease;

    move-result-object v0
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_72} :catch_90

    .line 59
    :try_start_72
    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->selectedProfile:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {p0, v1}, Lcom/gmodvr/flat/Storage;->user(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/gmodvr/flat/Storage;->recoverUser(Ljava/io/File;)V

    .line 60
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->recoverContent(Landroid/content/Context;)V
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_84

    if-eqz v0, :cond_90

    .line 61
    :try_start_80
    invoke-virtual {v0}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_90

    goto :goto_90

    :catchall_84
    move-exception v1

    if-eqz v0, :cond_8f

    .line 58
    :try_start_87
    invoke-virtual {v0}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8f

    :catchall_8b
    move-exception v0

    :try_start_8c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8f
    :goto_8f
    throw v1
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_90

    .line 63
    :catch_90
    :cond_90
    :goto_90
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->render()V

    if-eqz p1, :cond_98

    .line 64
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    .line 65
    :cond_98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a7

    .line 66
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->showError(Ljava/lang/String;)V

    :cond_a7
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 80
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateManager;->get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->updateListener:Lcom/gmodvr/flat/UpdateManager$Listener;

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/UpdateManager;->unlisten(Lcom/gmodvr/flat/UpdateManager$Listener;)V

    .line 81
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->crashBanner:Lcom/gmodvr/flat/CrashBanner;

    invoke-virtual {v0}, Lcom/gmodvr/flat/CrashBanner;->stop()V

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 76
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateManager;->get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->updateListener:Lcom/gmodvr/flat/UpdateManager$Listener;

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/UpdateManager;->unlisten(Lcom/gmodvr/flat/UpdateManager$Listener;)V

    .line 77
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity;->crashBanner:Lcom/gmodvr/flat/CrashBanner;

    invoke-virtual {v0}, Lcom/gmodvr/flat/CrashBanner;->refresh()V

    .line 71
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateManager;->get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity;->updateListener:Lcom/gmodvr/flat/UpdateManager$Listener;

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/UpdateManager;->listen(Lcom/gmodvr/flat/UpdateManager$Listener;)V

    .line 72
    invoke-static {p0}, Lcom/gmodvr/flat/UpdateManager;->get(Landroid/content/Context;)Lcom/gmodvr/flat/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmodvr/flat/UpdateManager;->checkAutomatic()V

    .line 73
    invoke-direct {p0}, Lcom/gmodvr/flat/LauncherActivity;->refreshUpdateStatus()V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity.AnonymousClass1 (com.gmodvr.flat.LauncherActivity$1)
.class Lcom/gmodvr/flat/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$1;->this$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$1;->this$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/LauncherActivity;->-$$Nest$mupdateStatus(Lcom/gmodvr/flat/LauncherActivity;)V

    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$1;->this$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/LauncherActivity;->-$$Nest$fgethandler(Lcom/gmodvr/flat/LauncherActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity.AnonymousClass2 (com.gmodvr.flat.LauncherActivity$2)
.class Lcom/gmodvr/flat/LauncherActivity$2;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/LauncherActivity;->settings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/LauncherActivity;

.field final synthetic val$opacityLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/TextView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1047
    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$2;->this$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$2;->val$opacityLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 1048
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$2;->val$opacityLabel:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Control Opacity: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity.AnonymousClass3 (com.gmodvr.flat.LauncherActivity$3)
.class Lcom/gmodvr/flat/LauncherActivity$3;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/LauncherActivity;->settings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/LauncherActivity;

.field final synthetic val$fpsLabel:Landroid/widget/TextView;

.field final synthetic val$fpsValues:[I


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/TextView;[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1075
    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$3;->this$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$3;->val$fpsLabel:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$3;->val$fpsValues:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    .line 1076
    iget-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$3;->val$fpsLabel:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Framerate Limit: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$3;->val$fpsValues:[I

    aget p0, p0, p2

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " FPS"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity.Work (com.gmodvr.flat.LauncherActivity$Work)
.class interface abstract Lcom/gmodvr/flat/LauncherActivity$Work;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Work"
.end annotation


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda0 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/gmodvr/flat/WorkshopMaps$Entry;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$NixLeYDr__pqgoo7ypQV88IspDY(Ljava/lang/String;Lcom/gmodvr/flat/WorkshopMaps$Entry;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda1 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    check-cast p1, Lcom/gmodvr/flat/GameMod;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$jB0seWpalfzAJuMabd20a8j1dBI(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/GameMod;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda10 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/gmodvr/flat/GameContentProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda10;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda10;->f$2:Lcom/gmodvr/flat/GameContentProfile;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda10;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda10;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda10;->f$2:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$FFeB7NwZ7puBQqSXLTm2MztObak(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda11 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/LauncherFranchise;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/LauncherFranchise;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda11;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda11;->f$1:Lcom/gmodvr/flat/LauncherFranchise;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda11;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda11;->f$1:Lcom/gmodvr/flat/LauncherFranchise;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$kxh6v6AiY1WPCBL39nvbEU-6dek(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/LauncherFranchise;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda12 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/SeekBar;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/SeekBar;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda12;->f$0:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda12;->f$0:Landroid/widget/SeekBar;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$bgm1GsMWwb49IVkc8GzUexkY81U(Landroid/widget/SeekBar;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda14 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda14)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Landroid/widget/CheckBox;

.field public final synthetic f$2:Landroid/widget/SeekBar;

.field public final synthetic f$3:Landroid/widget/CheckBox;

.field public final synthetic f$4:Landroid/widget/CheckBox;

.field public final synthetic f$5:[I

.field public final synthetic f$6:Landroid/widget/SeekBar;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;[ILandroid/widget/SeekBar;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$1:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$2:Landroid/widget/SeekBar;

    iput-object p4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$3:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$4:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$5:[I

    iput-object p7, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$6:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$1:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$2:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$3:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$4:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$5:[I

    iget-object v6, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda14;->f$6:Landroid/widget/SeekBar;

    move-object v7, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$5aqKFTg3HE4hTi-rnIL7aIeya7I(Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;[ILandroid/widget/SeekBar;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda15 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda15)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda15;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda15;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda15;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda15;->f$1:Landroid/widget/EditText;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$q50UVipBBTCuARqBxXDWN3TwI2s(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda16 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda16)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/content/SharedPreferences;

.field public final synthetic f$3:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;->f$2:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;->f$3:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;->f$2:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda16;->f$3:Landroid/app/AlertDialog;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$UoqnY22Malo-KDsIGM8vtX8zhUY(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda17 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda17)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/SharedPreferences;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda17;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda17;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda17;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda17;->f$1:Landroid/content/SharedPreferences;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$w-3RIUBBlud2PzQx2TaFWdf2bxo(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda18 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda18)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;->f$3:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;->f$2:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda18;->f$3:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$bC7wZCnrVAadezI1c33oK1Yl4WA(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda19 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda19)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/LauncherActivity$Work;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GameContentProfile;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/GameContentProfile;Ljava/util/List;Ljava/util/Set;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;->f$1:Lcom/gmodvr/flat/GameContentProfile;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;->f$3:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;->f$1:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;->f$2:Ljava/util/List;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda19;->f$3:Ljava/util/Set;

    invoke-static {v0, v1, v2, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$9W_lSgIPu2xzyvID0d_7c8hJJEE(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/GameContentProfile;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda2 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$Kr1hzn8jfto_OUx2dDxhMshsIU4(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda20 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda20)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda20;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda20;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda20;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda20;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda20;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda20;->f$2:Ljava/util/Set;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$YG3SGOdXjTYmVVKSWSTcXsVS86E(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda21 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda21)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda21;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda21;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$i4IR-5fI_novVeYNDs_jRe3sVEQ(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda22 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda22)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda22;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda22;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$W_9z81cJeMOf7_2VgEd605GUh88(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda23 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda23)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda23;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda23;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$RwcUTB96mSmR6HMPM3FHNPP6f4k(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda24 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda24)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda24;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda24;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$MXsQ_Bqho79rpTgpdU6jiRuwCpc(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda25 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda25)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda25;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda25;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$DSDVCoumM8TxYvTOB1KFtomyvAs(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda26 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda26)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda26;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda26;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$KWXDHzzwZOHcULgM6XZBzL-i0lQ(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda27 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda27)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda27;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda27;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$pEbieyfVMwhGDEj0k0mHIVz4llk(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda28 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda28)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda28;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda28;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$aUjKSFiRNTDswmXtf4pgueHEbQQ(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda29 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda29)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda29;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda29;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$sDNrYSkaarNyreE6UUfCGvxQUHU(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda3 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$aXZQ8jFS_ek6ckZtwcaceIdsevs(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda30 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda30)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda30;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda30;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$S2bEstqBx9q5poKCPR-zGNwBYwU(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda31 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda31)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda31;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda31;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$YXhVM5qMxN2CDAs2acTUHclGplc(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda32 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda32)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda32;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda32;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$Oe30hskuBb-YSNVG24sOgw8suDo(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda33 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda33)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda33;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda33;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$GkQmApXaAW9zTNabY6EIoyWjnRQ(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda34 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda34)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda34;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda34;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$6DbKOpG0-c69xQsi9S4NA3TO30A(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda35 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda35)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda35;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda35;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$6QMZBJD9ygEUTtAMFilA3GZ7ffE(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda36 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda36)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda36;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda36;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$9ZIMqHDFhWKbnJnqcvqF3oKPDEc(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda37 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda37)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/LauncherActivity$Work;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda37;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda37;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda37;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda37;->f$1:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$3EiwFznRy8-WTJbqEfSnGDomSKY(Lcom/gmodvr/flat/LauncherActivity;Landroid/net/Uri;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda38 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda38)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda38;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda38;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$asXj7fMKhS1nSF5nV7t_vr8o6_A(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda39 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda39)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/LauncherActivity$Work;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda39;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda39;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda39;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda39;->f$1:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$s8jVCHxns4zQHVjIX2b8QtVyiB0(Lcom/gmodvr/flat/LauncherActivity;Landroid/net/Uri;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda4 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda4;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda4;->f$2:Ljava/util/Set;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$X45tXWTcAvY3GDec4P8ukOQOXR8(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda40 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda40)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda40;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda40;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$RcyiLXFtmxIjhT6F18oyGXoMt18(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda41 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda41)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda41;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda41;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda41;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda41;->f$1:Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$-3k7n8mXP_cwi2Fds_Vb_nr-_yE(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda42 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda42)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/SharedPreferences;[Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda42;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda42;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda42;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda42;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda42;->f$1:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda42;->f$2:[Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$4y73hrkIDNgdVfeFoI60pNWDTyU(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/SharedPreferences;[Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda43 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda43)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda43;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda43;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda43;->f$2:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda43;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda43;->f$1:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda43;->f$2:Landroid/app/AlertDialog;

    invoke-static {v0, v1, p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$WmjJkoBkuA3hB2e88ikBXWUGZjY(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda44 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda44)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda44;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda44;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda44;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda44;->f$1:Landroid/widget/EditText;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$Tkse6iJGSHgOn_jeR46voAST0fY(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda45 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda45)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda45;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda45;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$P1Lkp9CMtWEgIIOB2zCv0t5we2Y(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda46 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda46)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda46;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda46;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$EipobJB3lNMAdcdAGKreiaeUwhU(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda47 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda47)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda47;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda47;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$OxNN-CfwDVCgfBHxp2B_y329y3I(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda48 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda48)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda48;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda48;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$9Ccnpr0XUfcnxqus0-rA2kEsUoU(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda49 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda49)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda49;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda49;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda49;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda49;->f$1:[Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$amu8n7ydeANiLbnJKZFVDBqdaeo(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda50 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda50)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda50;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda50;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda50;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda50;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda50;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda50;->f$2:Ljava/util/Set;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$QZqLFv-pg6t5xtBdStqk1kSHGMg(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Ljava/util/Set;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda51 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda51)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/widget/EditText;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda51;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda51;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda51;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda51;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda51;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda51;->f$2:Landroid/widget/EditText;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$ep0j8mzIkh4Ulki3vLpG-4NLguM(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda52 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda52)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda52;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda52;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$S64AqyHbk1EZL8rrXvGab0gKqNw(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda53 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda53)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda53;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda53;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$3SA1nmIjLtD98YO-8pCtgRsstB4(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda54 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda54)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda54;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda54;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$1Mzb74LZVKRiUqip3Bb31bzHRcw(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda55 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda55)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda55;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda55;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$QRc1zKCS9nf01IIqMsTEMILGu3E(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda56 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda56)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/LauncherActivity$Work;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/gmodvr/flat/GameContentProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;->f$4:Lcom/gmodvr/flat/GameContentProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda56;->f$4:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$mm5keVu7MBxsLIKsmHBh5hDwfOs(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda57 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda57)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda57;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$POSsJAdudI4-qOxw0lGAVOe_xmc(Lcom/gmodvr/flat/LauncherActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda58 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda58)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/GameMod;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/GameMod;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda58;->f$0:Lcom/gmodvr/flat/GameMod;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda58;->f$0:Lcom/gmodvr/flat/GameMod;

    check-cast p1, Lcom/gmodvr/flat/GameMod;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$Smjy9N3B1Ti56A5hAbyH6VQNJrg(Lcom/gmodvr/flat/GameMod;Lcom/gmodvr/flat/GameMod;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda59 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda59)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/lang/Exception;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/Exception;Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda59;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda59;->f$1:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda59;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda59;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda59;->f$1:Ljava/lang/Exception;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda59;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$3rnJK5Vccg-XkE7ILEFgUOPxFdU(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/Exception;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda6 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$U7bM76XGj8MBnU6P_n2EQNCnbo8(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda60 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda60)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda60;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda60;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$1SSODduwvItj_-AjT5hZiqlHH8g(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda61 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda61)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda61;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda61;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda61;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda61;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda61;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda61;->f$1:Landroid/app/AlertDialog;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda61;->f$2:Landroid/widget/EditText;

    invoke-static {v0, v1, p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$7ZJmEEJ0kL_wC8-HkGuMCVt1oeE(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda62 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda62)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/LauncherActivity$Work;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/gmodvr/flat/GameContentProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda62;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda62;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda62;->f$2:Lcom/gmodvr/flat/GameContentProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda62;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda62;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda62;->f$2:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$eo9PknUDozHi0RlqLbE2CneW-YU(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda63 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda63)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda63;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/gmodvr/flat/GameContentProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda63;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda63;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda63;->f$2:Lcom/gmodvr/flat/GameContentProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda63;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda63;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda63;->f$2:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$BIakmEfv-qq5Pp0m9vezyQXy2io(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda64 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda64)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/LauncherActivity$Work;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/gmodvr/flat/GameContentProfile;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/gmodvr/flat/GameMod;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;Lcom/gmodvr/flat/GameMod;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;->f$2:Lcom/gmodvr/flat/GameContentProfile;

    iput-object p4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;->f$4:Lcom/gmodvr/flat/GameMod;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;->f$2:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda64;->f$4:Lcom/gmodvr/flat/GameMod;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$2bWVd92QeniLzavdw6rDKxY_ruE(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;Lcom/gmodvr/flat/GameMod;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda65 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda65)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/gmodvr/flat/GameContentProfile;

.field public final synthetic f$4:Lcom/gmodvr/flat/GameMod;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/GameMod;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;->f$3:Lcom/gmodvr/flat/GameContentProfile;

    iput-object p5, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;->f$4:Lcom/gmodvr/flat/GameMod;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;->f$3:Lcom/gmodvr/flat/GameContentProfile;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda65;->f$4:Lcom/gmodvr/flat/GameMod;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$cqOUWj8-nlkN7Va8bR_T84Rrd8w(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/GameContentProfile;Lcom/gmodvr/flat/GameMod;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda66 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda66)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda66;->f$0:Landroid/widget/AutoCompleteTextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda66;->f$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$wUkzeLl2HkmjTkwW2n82HOCGsYI(Landroid/widget/AutoCompleteTextView;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda67 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda67)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Landroid/widget/AutoCompleteTextView;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;->f$2:Landroid/widget/AutoCompleteTextView;

    iput-object p4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;->f$2:Landroid/widget/AutoCompleteTextView;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda67;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$UdtGt7d2BuWUbKTGmayZbv76fTo(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda68 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda68)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/WorkshopMaps$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/WorkshopMaps$Entry;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda68;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda68;->f$1:Lcom/gmodvr/flat/WorkshopMaps$Entry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda68;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda68;->f$1:Lcom/gmodvr/flat/WorkshopMaps$Entry;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$psn9jL1ozRw7NuQWHNjaazInWqc(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/WorkshopMaps$Entry;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda69 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda69)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/widget/AutoCompleteTextView;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;->f$1:Landroid/widget/AutoCompleteTextView;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;->f$3:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;->f$1:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda69;->f$3:Landroid/app/AlertDialog;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$Ups2oeI27Ru72LynXvo_jDR2qGI(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda7 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$te5jYG01KVMiUPrPUtWJsDfEEKE(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda70 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda70)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda70;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda70;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$peu4f2zBgFkZ6On-oPCbsl1-JEA(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda71 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda71)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda71;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda71;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda71;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda71;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda71;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda71;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda71;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$4wnUF1DXBTndE90x7Fs3WYDUTtM(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda72 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda72)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda72;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$aeTmup5gVRm-Gwn9zWKJU4G85f8(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda73 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda73)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda73;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/LauncherActivity$Work;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda73;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda73;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda73;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda73;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$YUtm-tcJXs9GdYbPW5HUHkVQi1g(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda74 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda74)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda74;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda74;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda74;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda74;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda74;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$m_H-X0uWFo5qIjDx8btuO8aV3Js(Lcom/gmodvr/flat/LauncherActivity;Ljava/util/List;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda75 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda75)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda75;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda75;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda75;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda75;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda75;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$axBKJyDtr7oTeqEZeB-RpiieKAc(Lcom/gmodvr/flat/LauncherActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda76 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda76)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda76;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/GameContentProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/GameContentProfile;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda76;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda76;->f$1:Lcom/gmodvr/flat/GameContentProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda76;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda76;->f$1:Lcom/gmodvr/flat/GameContentProfile;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$tIVOIe1cIsd18DGj3v5IBpIqkMU(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/GameContentProfile;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda77 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda77)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda77;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/LauncherActivity$Work;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda77;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda77;->f$1:Lcom/gmodvr/flat/LauncherActivity$Work;

    iput-object p3, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda77;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda77;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda77;->f$1:Lcom/gmodvr/flat/LauncherActivity$Work;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda77;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$9yq2SVLcpo1HPkgXS8EZ2K2f8zA(Lcom/gmodvr/flat/LauncherActivity;Lcom/gmodvr/flat/LauncherActivity$Work;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda78 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda78)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda78;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda78;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda78;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda78;->f$0:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda78;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$8-mLPOxle8DJoOlAv5ss9Q73H1A(Landroid/widget/EditText;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda79 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda79)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda79;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda79;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda79;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda79;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda79;->f$1:Landroid/widget/EditText;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$OedFdhxvl5WgRPj6hGOapN167-s(Lcom/gmodvr/flat/LauncherActivity;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda8 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$m4pX3i1CZ_xO-aVSVNL3eRLF5AE(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda80 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda80)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda80;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda80;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda80;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$_BYwioWTgjcLpR1-XnGzOxtvSbo(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda81 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda81)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda81;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda81;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda81;->f$1:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda81;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda81;->f$1:Landroid/app/AlertDialog;

    invoke-static {v0, p0, p1}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$Te0qKbdYp1UXLcdTDlOStBGFL0c(Lcom/gmodvr/flat/LauncherActivity;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda82 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda82)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda82;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/UpdateManager$Listener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda82;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final changed()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda82;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$5K2OaTyCbtr9EcEXz1Y7ZttsC0Q(Lcom/gmodvr/flat/LauncherActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda83 (com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda83)
.class public final synthetic Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda83;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/LauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/LauncherActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda83;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/LauncherActivity$$ExternalSyntheticLambda83;->f$0:Lcom/gmodvr/flat/LauncherActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/LauncherActivity;->$r8$lambda$x62bsS7JA7c9iJj3RhuoU7Tmj8E(Lcom/gmodvr/flat/LauncherActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

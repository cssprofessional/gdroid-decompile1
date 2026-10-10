###### Class in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator (in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator)
.class public final Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator;
.super Ljava/lang/Object;
.source "UserConsoleAuthenticator.kt"

# interfaces
.implements Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;


# direct methods
.method public static synthetic $r8$lambda$J64G0pF-vuMn3QP2aBqHUjOM5fg()Ljava/lang/Boolean;
    .registers 1

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator;->acceptDeviceConfirmation$lambda$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$aNwWpkCT7L7T3Q6SqhN5ZpDG9wQ(ZLjava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator;->getEmailCode$lambda$0(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kbB3qnx688G7Qy7EgydilbVy-HM(Z)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator;->getDeviceCode$lambda$0(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final acceptDeviceConfirmation$lambda$0()Ljava/lang/Boolean;
    .registers 2

    .line 43
    const-string v0, "STEAM GUARD! Use the Steam Mobile App to confirm your sign in..."

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 44
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static final getDeviceCode$lambda$0(Z)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 17
    const-string p0, "The previous 2-factor auth code you have provided is incorrect."

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 22
    :cond_9
    const-string p0, "STEAM GUARD! Please enter your 2-factor auth code from your authenticator app: "

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lkotlin/io/ConsoleKt;->readln()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {p0}, Lin/dragonbra/javasteam/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object p0
.end method

.method private static final getEmailCode$lambda$0(ZLjava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_9

    .line 31
    const-string p0, "The previous 2-factor auth code you have provided is incorrect."

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 35
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "STEAM GUARD! Please enter the auth code sent to the email at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lkotlin/io/ConsoleKt;->readln()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lin/dragonbra/javasteam/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object p0
.end method


# virtual methods
.method public acceptDeviceConfirmation()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const-string v0, "supplyAsync(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getDeviceCode(Z)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const-string p1, "supplyAsync(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getEmailCode(Ljava/lang/String;Z)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance p0, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2, p1}, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda1;-><init>(ZLjava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const-string p1, "supplyAsync(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda0;->f$0:Z

    invoke-static {p0}, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator;->$r8$lambda$kbB3qnx688G7Qy7EgydilbVy-HM(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-boolean v0, p0, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda1;->f$0:Z

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator;->$r8$lambda$aNwWpkCT7L7T3Q6SqhN5ZpDG9wQ(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator$$ExternalSyntheticLambda2 (in.dragonbra.javasteam.steam.authentication.UserConsoleAuthenticator$$ExternalSyntheticLambda2)
.class public final synthetic Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/steam/authentication/UserConsoleAuthenticator;->$r8$lambda$J64G0pF-vuMn3QP2aBqHUjOM5fg()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

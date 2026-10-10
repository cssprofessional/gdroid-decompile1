###### Class org.bouncycastle.jcajce.provider.keystore.util.ParameterUtil (org.bouncycastle.jcajce.provider.keystore.util.ParameterUtil)
.class public Lorg/bouncycastle/jcajce/provider/keystore/util/ParameterUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractPassword(Ljava/security/KeyStore$LoadStoreParameter;)[C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p0

    if-nez p0, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    instance-of v1, p0, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v1, :cond_14

    check-cast p0, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p0}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p0

    return-object p0

    :cond_14
    instance-of v1, p0, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v1, :cond_4e

    check-cast p0, Ljava/security/KeyStore$CallbackHandlerProtection;

    invoke-virtual {p0}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object p0

    new-instance v1, Ljavax/security/auth/callback/PasswordCallback;

    const-string v2, "password: "

    invoke-direct {v1, v2, v0}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    :try_start_26
    new-array v2, v2, [Ljavax/security/auth/callback/Callback;

    aput-object v1, v2, v0

    invoke-interface {p0, v2}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    invoke-virtual {v1}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object p0
    :try_end_31
    .catch Ljavax/security/auth/callback/UnsupportedCallbackException; {:try_start_26 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PasswordCallback not recognised: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no support for protection parameter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

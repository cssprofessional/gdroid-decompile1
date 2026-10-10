###### Class org.bouncycastle.pqc.jcajce.provider.util.SpecUtil (org.bouncycastle.pqc.jcajce.provider.util.SpecUtil)
.class public Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;
.super Ljava/lang/Object;


# static fields
.field private static NO_ARGS:[Ljava/lang/Object;

.field private static NO_PARAMS:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->NO_PARAMS:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->NO_ARGS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()[Ljava/lang/Class;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->NO_PARAMS:[Ljava/lang/Class;

    return-object v0
.end method

.method public static synthetic access$100()[Ljava/lang/Object;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->NO_ARGS:[Ljava/lang/Object;

    return-object v0
.end method

.method public static getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;-><init>(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

###### Class org.bouncycastle.pqc.jcajce.provider.util.SpecUtil.AnonymousClass1 (org.bouncycastle.pqc.jcajce.provider.util.SpecUtil$1)
.class Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getName"

    invoke-static {}, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->access$000()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil$1;->val$paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-static {}, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->access$100()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    const/4 p0, 0x0

    return-object p0
.end method

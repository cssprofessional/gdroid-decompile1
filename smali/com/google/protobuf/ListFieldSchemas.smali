###### Class com.google.protobuf.ListFieldSchemas (com.google.protobuf.ListFieldSchemas)
.class final Lcom/google/protobuf/ListFieldSchemas;
.super Ljava/lang/Object;
.source "ListFieldSchemas.java"


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final FULL_SCHEMA:Lcom/google/protobuf/ListFieldSchema;

.field private static final LITE_SCHEMA:Lcom/google/protobuf/ListFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    invoke-static {}, Lcom/google/protobuf/ListFieldSchemas;->loadSchemaForFullRuntime()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/ListFieldSchemas;->FULL_SCHEMA:Lcom/google/protobuf/ListFieldSchema;

    .line 13
    new-instance v0, Lcom/google/protobuf/ListFieldSchemaLite;

    invoke-direct {v0}, Lcom/google/protobuf/ListFieldSchemaLite;-><init>()V

    sput-object v0, Lcom/google/protobuf/ListFieldSchemas;->LITE_SCHEMA:Lcom/google/protobuf/ListFieldSchema;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static full()Lcom/google/protobuf/ListFieldSchema;
    .registers 1

    .line 16
    sget-object v0, Lcom/google/protobuf/ListFieldSchemas;->FULL_SCHEMA:Lcom/google/protobuf/ListFieldSchema;

    return-object v0
.end method

.method public static lite()Lcom/google/protobuf/ListFieldSchema;
    .registers 1

    .line 20
    sget-object v0, Lcom/google/protobuf/ListFieldSchemas;->LITE_SCHEMA:Lcom/google/protobuf/ListFieldSchema;

    return-object v0
.end method

.method private static loadSchemaForFullRuntime()Lcom/google/protobuf/ListFieldSchema;
    .registers 4

    .line 24
    sget-boolean v0, Lcom/google/protobuf/Protobuf;->assumeLiteRuntime:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 28
    :cond_6
    :try_start_6
    const-class v0, Lcom/google/protobuf/ListFieldSchemaFull;

    sget v2, Lcom/google/protobuf/ListFieldSchemaFull;->$r8$clinit:I

    const/4 v2, 0x0

    .line 29
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ListFieldSchema;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    return-object v1
.end method

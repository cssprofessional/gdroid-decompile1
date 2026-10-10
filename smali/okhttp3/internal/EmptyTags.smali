###### Class okhttp3.internal.EmptyTags (okhttp3.internal.EmptyTags)
.class public final Lokhttp3/internal/EmptyTags;
.super Lokhttp3/internal/Tags;
.source "Tags.kt"


# static fields
.field public static final INSTANCE:Lokhttp3/internal/EmptyTags;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lokhttp3/internal/EmptyTags;

    invoke-direct {v0}, Lokhttp3/internal/EmptyTags;-><init>()V

    sput-object v0, Lokhttp3/internal/EmptyTags;->INSTANCE:Lokhttp3/internal/EmptyTags;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lokhttp3/internal/Tags;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 58
    const-string p0, "{}"

    return-object p0
.end method

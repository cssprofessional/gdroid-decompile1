###### Class okhttp3.internal.publicsuffix.PublicSuffixList (okhttp3.internal.publicsuffix.PublicSuffixList)
.class public interface abstract Lokhttp3/internal/publicsuffix/PublicSuffixList;
.super Ljava/lang/Object;
.source "PublicSuffixList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;->$$INSTANCE:Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixList;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;

    return-void
.end method


# virtual methods
.method public abstract ensureLoaded()V
.end method

.method public abstract getBytes()Lokio/ByteString;
.end method

.method public abstract getExceptionBytes()Lokio/ByteString;
.end method

###### Class okhttp3.internal.publicsuffix.PublicSuffixList.Companion (okhttp3.internal.publicsuffix.PublicSuffixList$Companion)
.class public final Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;
.super Ljava/lang/Object;
.source "PublicSuffixList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/publicsuffix/PublicSuffixList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;->$$INSTANCE:Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

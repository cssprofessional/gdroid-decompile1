###### Class kotlin.time.jdk8.InstantConversionsJDK8Kt (kotlin.time.jdk8.InstantConversionsJDK8Kt)
.class public final Lkotlin/time/jdk8/InstantConversionsJDK8Kt;
.super Ljava/lang/Object;
.source "InstantConversions.kt"


# direct methods
.method public static final toKotlinInstant(Ljava/time/Instant;)Lkotlin/time/Instant;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    move-result-object p0

    return-object p0
.end method

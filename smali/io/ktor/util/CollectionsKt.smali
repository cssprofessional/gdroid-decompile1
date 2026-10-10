###### Class io.ktor.util.CollectionsKt (io.ktor.util.CollectionsKt)
.class public final Lio/ktor/util/CollectionsKt;
.super Ljava/lang/Object;
.source "Collections.kt"


# direct methods
.method public static final caseInsensitiveMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Value:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TValue;>;"
        }
    .end annotation

    .line 12
    new-instance v0, Lio/ktor/util/CaseInsensitiveMap;

    invoke-direct {v0}, Lio/ktor/util/CaseInsensitiveMap;-><init>()V

    return-object v0
.end method

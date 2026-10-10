###### Class io.ktor.util.AttributesJvmKt (io.ktor.util.AttributesJvmKt)
.class public final Lio/ktor/util/AttributesJvmKt;
.super Ljava/lang/Object;
.source "AttributesJvm.kt"


# direct methods
.method public static final Attributes(Z)Lio/ktor/util/Attributes;
    .registers 1

    if-eqz p0, :cond_8

    .line 15
    new-instance p0, Lio/ktor/util/ConcurrentSafeAttributes;

    invoke-direct {p0}, Lio/ktor/util/ConcurrentSafeAttributes;-><init>()V

    goto :goto_d

    :cond_8
    new-instance p0, Lio/ktor/util/HashMapAttributes;

    invoke-direct {p0}, Lio/ktor/util/HashMapAttributes;-><init>()V

    :goto_d
    return-object p0
.end method

###### Class kotlin.jvm.internal.StringCompanionObject (kotlin.jvm.internal.StringCompanionObject)
.class public final Lkotlin/jvm/internal/StringCompanionObject;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lkotlin/jvm/internal/StringCompanionObject;

    invoke-direct {v0}, Lkotlin/jvm/internal/StringCompanionObject;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.util.event.EventArgs (in.dragonbra.javasteam.util.event.EventArgs)
.class public Lin/dragonbra/javasteam/util/event/EventArgs;
.super Ljava/lang/Object;
.source "EventArgs.java"


# static fields
.field public static final EMPTY:Lin/dragonbra/javasteam/util/event/EventArgs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    new-instance v0, Lin/dragonbra/javasteam/util/event/EventArgs;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/event/EventArgs;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/util/event/EventArgs;->EMPTY:Lin/dragonbra/javasteam/util/event/EventArgs;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

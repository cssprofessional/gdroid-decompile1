###### Class io.ktor.util.Platform (io.ktor.util.Platform)
.class public abstract Lio/ktor/util/Platform;
.super Ljava/lang/Object;
.source "PlatformUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/util/Platform$Js;,
        Lio/ktor/util/Platform$JsPlatform;,
        Lio/ktor/util/Platform$Jvm;,
        Lio/ktor/util/Platform$Native;,
        Lio/ktor/util/Platform$WasmJs;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/util/Platform;-><init>()V

    return-void
.end method

###### Class io.ktor.util.Platform.Js (io.ktor.util.Platform$Js)
.class public final Lio/ktor/util/Platform$Js;
.super Lio/ktor/util/Platform;
.source "PlatformUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Js"
.end annotation


# instance fields
.field public final jsPlatform:Lio/ktor/util/Platform$JsPlatform;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/ktor/util/Platform$Js;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/util/Platform$Js;

    iget-object p0, p0, Lio/ktor/util/Platform$Js;->jsPlatform:Lio/ktor/util/Platform$JsPlatform;

    iget-object p1, p1, Lio/ktor/util/Platform$Js;->jsPlatform:Lio/ktor/util/Platform$JsPlatform;

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getJsPlatform()Lio/ktor/util/Platform$JsPlatform;
    .registers 1

    .line 41
    iget-object p0, p0, Lio/ktor/util/Platform$Js;->jsPlatform:Lio/ktor/util/Platform$JsPlatform;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/util/Platform$Js;->jsPlatform:Lio/ktor/util/Platform$JsPlatform;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Js(jsPlatform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/util/Platform$Js;->jsPlatform:Lio/ktor/util/Platform$JsPlatform;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.util.Platform.JsPlatform (io.ktor.util.Platform$JsPlatform)
.class public final enum Lio/ktor/util/Platform$JsPlatform;
.super Ljava/lang/Enum;
.source "PlatformUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsPlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/util/Platform$JsPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/util/Platform$JsPlatform;

.field public static final enum Browser:Lio/ktor/util/Platform$JsPlatform;

.field public static final enum Node:Lio/ktor/util/Platform$JsPlatform;


# direct methods
.method private static final synthetic $values()[Lio/ktor/util/Platform$JsPlatform;
    .registers 2

    .line 0
    sget-object v0, Lio/ktor/util/Platform$JsPlatform;->Browser:Lio/ktor/util/Platform$JsPlatform;

    sget-object v1, Lio/ktor/util/Platform$JsPlatform;->Node:Lio/ktor/util/Platform$JsPlatform;

    filled-new-array {v0, v1}, [Lio/ktor/util/Platform$JsPlatform;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Lio/ktor/util/Platform$JsPlatform;

    const-string v1, "Browser"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/ktor/util/Platform$JsPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/util/Platform$JsPlatform;->Browser:Lio/ktor/util/Platform$JsPlatform;

    new-instance v0, Lio/ktor/util/Platform$JsPlatform;

    const-string v1, "Node"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/ktor/util/Platform$JsPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/util/Platform$JsPlatform;->Node:Lio/ktor/util/Platform$JsPlatform;

    invoke-static {}, Lio/ktor/util/Platform$JsPlatform;->$values()[Lio/ktor/util/Platform$JsPlatform;

    move-result-object v0

    sput-object v0, Lio/ktor/util/Platform$JsPlatform;->$VALUES:[Lio/ktor/util/Platform$JsPlatform;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/util/Platform$JsPlatform;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/util/Platform$JsPlatform;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/util/Platform$JsPlatform;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/util/Platform$JsPlatform;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/util/Platform$JsPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/util/Platform$JsPlatform;

    return-object p0
.end method

.method public static values()[Lio/ktor/util/Platform$JsPlatform;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/util/Platform$JsPlatform;->$VALUES:[Lio/ktor/util/Platform$JsPlatform;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/util/Platform$JsPlatform;

    return-object v0
.end method

###### Class io.ktor.util.Platform.Jvm (io.ktor.util.Platform$Jvm)
.class public final Lio/ktor/util/Platform$Jvm;
.super Lio/ktor/util/Platform;
.source "PlatformUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Jvm"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/util/Platform$Jvm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/util/Platform$Jvm;

    invoke-direct {v0}, Lio/ktor/util/Platform$Jvm;-><init>()V

    sput-object v0, Lio/ktor/util/Platform$Jvm;->INSTANCE:Lio/ktor/util/Platform$Jvm;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lio/ktor/util/Platform;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of p0, p1, Lio/ktor/util/Platform$Jvm;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    const p0, 0x3eb19478

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "Jvm"

    return-object p0
.end method

###### Class io.ktor.util.Platform.Native (io.ktor.util.Platform$Native)
.class public final Lio/ktor/util/Platform$Native;
.super Lio/ktor/util/Platform;
.source "PlatformUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Native"
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/util/Platform$Native;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/util/Platform$Native;

    invoke-direct {v0}, Lio/ktor/util/Platform$Native;-><init>()V

    sput-object v0, Lio/ktor/util/Platform$Native;->INSTANCE:Lio/ktor/util/Platform$Native;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lio/ktor/util/Platform;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of p0, p1, Lio/ktor/util/Platform$Native;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    const p0, -0x3f234b20

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "Native"

    return-object p0
.end method

###### Class io.ktor.util.Platform.WasmJs (io.ktor.util.Platform$WasmJs)
.class public final Lio/ktor/util/Platform$WasmJs;
.super Lio/ktor/util/Platform;
.source "PlatformUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WasmJs"
.end annotation


# instance fields
.field public final jsPlatform:Lio/ktor/util/Platform$JsPlatform;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/ktor/util/Platform$WasmJs;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/util/Platform$WasmJs;

    iget-object p0, p0, Lio/ktor/util/Platform$WasmJs;->jsPlatform:Lio/ktor/util/Platform$JsPlatform;

    iget-object p1, p1, Lio/ktor/util/Platform$WasmJs;->jsPlatform:Lio/ktor/util/Platform$JsPlatform;

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getJsPlatform()Lio/ktor/util/Platform$JsPlatform;
    .registers 1

    .line 42
    iget-object p0, p0, Lio/ktor/util/Platform$WasmJs;->jsPlatform:Lio/ktor/util/Platform$JsPlatform;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget-object p0, p0, Lio/ktor/util/Platform$WasmJs;->jsPlatform:Lio/ktor/util/Platform$JsPlatform;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WasmJs(jsPlatform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/util/Platform$WasmJs;->jsPlatform:Lio/ktor/util/Platform$JsPlatform;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

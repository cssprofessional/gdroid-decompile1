###### Class org.libsdl.app.SDLGenericMotionListener_API12 (org.libsdl.app.SDLGenericMotionListener_API12)
.class Lorg/libsdl/app/SDLGenericMotionListener_API12;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .registers 2

    const/4 p0, 0x0

    .line 614
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    return p0
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .registers 2

    const/4 p0, 0x0

    .line 618
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    return p0
.end method

.method public inRelativeMode()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 561
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    const/16 p1, 0x201

    if-eq p0, p1, :cond_40

    const/16 p1, 0x401

    if-eq p0, p1, :cond_40

    const/16 p1, 0x2002

    const/4 v0, 0x0

    if-eq p0, p1, :cond_17

    const p1, 0x1000010

    if-eq p0, p1, :cond_40

    goto :goto_23

    .line 568
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 p1, 0x7

    const/4 v1, 0x1

    if-eq p0, p1, :cond_34

    const/16 p1, 0x8

    if-eq p0, p1, :cond_24

    :goto_23
    return v0

    :cond_24
    const/16 p1, 0xa

    .line 571
    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p1

    const/16 v2, 0x9

    .line 572
    invoke-virtual {p2, v2, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p2

    .line 573
    invoke-static {v0, p0, p1, p2, v0}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v1

    .line 577
    :cond_34
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 578
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 580
    invoke-static {v0, p0, p1, p2, v0}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v1

    .line 565
    :cond_40
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .registers 1

    .line 0
    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public supportsRelativeMouse()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

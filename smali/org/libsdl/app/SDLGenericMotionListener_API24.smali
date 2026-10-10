###### Class org.libsdl.app.SDLGenericMotionListener_API24 (org.libsdl.app.SDLGenericMotionListener_API24)
.class Lorg/libsdl/app/SDLGenericMotionListener_API24;
.super Lorg/libsdl/app/SDLGenericMotionListener_API12;
.source "SDLControllerManager.java"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 623
    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .registers 2

    .line 666
    iget-boolean p0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz p0, :cond_b

    const/16 p0, 0x1b

    .line 667
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    .line 669
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    return p0
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .registers 2

    .line 675
    iget-boolean p0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz p0, :cond_b

    const/16 p0, 0x1c

    .line 676
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    .line 678
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    return p0
.end method

.method public inRelativeMode()Z
    .registers 1

    .line 655
    iget-boolean p0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    return p0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 632
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_25

    .line 633
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_25

    .line 634
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_25

    const/16 p0, 0x1b

    .line 636
    invoke-virtual {p2, p0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    const/16 p1, 0x1c

    .line 637
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 638
    invoke-static {p2, v0, p0, p1, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v1

    .line 645
    :cond_25
    invoke-super {p0, p1, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setRelativeMouseEnabled(Z)Z
    .registers 2

    .line 660
    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    const/4 p0, 0x1

    return p0
.end method

.method public supportsRelativeMouse()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

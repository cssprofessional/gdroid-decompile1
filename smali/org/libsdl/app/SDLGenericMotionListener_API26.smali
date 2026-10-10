###### Class org.libsdl.app.SDLGenericMotionListener_API26 (org.libsdl.app.SDLGenericMotionListener_API26)
.class Lorg/libsdl/app/SDLGenericMotionListener_API26;
.super Lorg/libsdl/app/SDLGenericMotionListener_API24;
.source "SDLControllerManager.java"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 683
    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API24;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .registers 2

    const/4 p0, 0x0

    .line 784
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    return p0
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .registers 2

    const/4 p0, 0x0

    .line 790
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    return p0
.end method

.method public inRelativeMode()Z
    .registers 1

    .line 755
    iget-boolean p0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    return p0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 692
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    const/16 p1, 0x201

    if-eq p0, p1, :cond_6a

    const/16 p1, 0x401

    if-eq p0, p1, :cond_6a

    const/16 p1, 0x2002

    const/16 v0, 0x9

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p0, p1, :cond_49

    const/16 p1, 0x3002

    if-eq p0, p1, :cond_49

    const p1, 0x20004

    if-eq p0, p1, :cond_28

    const p1, 0x1000010

    if-eq p0, p1, :cond_6a

    goto :goto_51

    .line 721
    :cond_28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eq p0, v3, :cond_3d

    if-eq p0, v2, :cond_31

    goto :goto_51

    .line 724
    :cond_31
    invoke-virtual {p2, v1, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p1

    .line 725
    invoke-virtual {p2, v0, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p2

    .line 726
    invoke-static {v5, p0, p1, p2, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v4

    .line 730
    :cond_3d
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 731
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 732
    invoke-static {v5, p0, p1, p2, v4}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v4

    .line 701
    :cond_49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eq p0, v3, :cond_5e

    if-eq p0, v2, :cond_52

    :goto_51
    return v5

    .line 704
    :cond_52
    invoke-virtual {p2, v1, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p1

    .line 705
    invoke-virtual {p2, v0, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p2

    .line 706
    invoke-static {v5, p0, p1, p2, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v4

    .line 710
    :cond_5e
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 711
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 712
    invoke-static {v5, p0, p1, p2, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v4

    .line 696
    :cond_6a
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .registers 1

    .line 776
    iget-boolean p0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    if-eqz p0, :cond_11

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result p0

    if-nez p0, :cond_11

    .line 777
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestPointerCapture()V

    :cond_11
    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .registers 3

    .line 760
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    if-eqz p1, :cond_d

    .line 762
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    goto :goto_14

    .line 764
    :cond_d
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V

    .line 766
    :goto_14
    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    const/4 p0, 0x1

    return p0
.end method

.method public supportsRelativeMouse()Z
    .registers 1

    .line 750
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    const/4 p0, 0x1

    return p0
.end method

###### Class org.libsdl.app.SDLSurface (org.libsdl.app.SDLSurface)
.class Lorg/libsdl/app/SDLSurface;
.super Landroid/view/SurfaceView;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field protected mDisplay:Landroid/view/Display;

.field protected mHeight:F

.field public mIsSurfaceReady:Z

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1689
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1690
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    .line 1692
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1693
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1694
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1695
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1696
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1698
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    .line 1699
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1701
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1704
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 1705
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    const/4 p1, 0x0

    .line 1707
    iput-boolean p1, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    return-void
.end method


# virtual methods
.method public enableSensor(IZ)V
    .registers 5

    if-eqz p2, :cond_e

    .line 1986
    iget-object p2, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1987
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1986
    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_17

    .line 1990
    :cond_e
    iget-object p2, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1991
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    .line 1990
    invoke-virtual {p2, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_17
    return-void
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .registers 1

    .line 1724
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public handlePause()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1711
    invoke-virtual {p0, v0, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    return-void
.end method

.method public handleResume()V
    .registers 2

    const/4 v0, 0x1

    .line 1715
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1716
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1717
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1718
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1719
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1720
    invoke-virtual {p0, v0, v0}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 2049
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_3e

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2e

    const/16 v0, 0xb

    if-eq p0, v0, :cond_19

    const/16 v3, 0xc

    if-eq p0, v3, :cond_19

    return v2

    :cond_19
    if-ne p0, v0, :cond_1d

    move p0, v2

    goto :goto_1e

    :cond_1d
    move p0, v1

    .line 2076
    :goto_1e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 2077
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 2078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    .line 2080
    invoke-static {p1, p0, v0, v2, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v1

    :cond_2e
    const/16 v0, 0xa

    .line 2054
    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    const/16 v3, 0x9

    .line 2055
    invoke-virtual {p1, v3, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p1

    .line 2056
    invoke-static {v2, p0, v0, p1, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v1

    .line 2061
    :cond_3e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 2062
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 2063
    invoke-static {v2, p0, v0, p1, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1811
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p0

    .line 1812
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result p1

    if-nez p1, :cond_14

    .line 1815
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1817
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result p1

    .line 1834
    :cond_14
    invoke-static {p0}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    .line 1836
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_28

    .line 1837
    invoke-static {p0, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadDown(II)I

    move-result p0

    if-nez p0, :cond_35

    return v1

    .line 1840
    :cond_28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_35

    .line 1841
    invoke-static {p0, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadUp(II)I

    move-result p0

    if-nez p0, :cond_35

    return v1

    :cond_35
    and-int/lit16 p0, p1, 0x101

    if-eqz p0, :cond_5f

    .line 1848
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_55

    .line 1849
    invoke-static {p3}, Lorg/libsdl/app/SDLActivity;->isTextInputEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 1850
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 1852
    :cond_51
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    return v1

    .line 1854
    :cond_55
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v1, :cond_5f

    .line 1855
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    return v1

    :cond_5f
    and-int/lit16 p0, p1, 0x2002

    if-eqz p0, :cond_74

    const/4 p0, 0x4

    if-eq p2, p0, :cond_6a

    const/16 p0, 0x7d

    if-ne p2, p0, :cond_74

    .line 1864
    :cond_6a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_73

    if-eq p0, v1, :cond_73

    goto :goto_74

    :cond_73
    return v1

    :cond_74
    :goto_74
    const/4 p0, 0x0

    return p0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 2002
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    .line 2009
    iget-object p0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p0, v1, :cond_34

    if-eq p0, v0, :cond_2a

    const/4 v3, 0x3

    if-eq p0, v3, :cond_20

    .line 2027
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, p0, v2

    .line 2028
    aget p0, p0, v1

    move v1, v3

    goto :goto_3c

    .line 2016
    :cond_20
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p0, v1

    .line 2017
    aget p0, p0, v2

    neg-float p0, p0

    move v2, v1

    move v1, v0

    goto :goto_3c

    .line 2021
    :cond_2a
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, p0, v2

    neg-float v2, v2

    .line 2022
    aget p0, p0, v1

    neg-float p0, p0

    const/4 v1, 0x4

    goto :goto_3c

    .line 2011
    :cond_34
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, p0, v1

    neg-float v3, v3

    .line 2012
    aget p0, p0, v2

    move v2, v3

    .line 2033
    :goto_3c
    sget v3, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    if-eq v1, v3, :cond_45

    .line 2034
    sput v1, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 2035
    invoke-static {v1}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    :cond_45
    neg-float v1, v2

    const v2, 0x411ce80a

    div-float/2addr v1, v2

    div-float/2addr p0, v2

    .line 2038
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v0

    div-float/2addr p1, v2

    invoke-static {v1, p0, p1}, Lorg/libsdl/app/SDLActivity;->onNativeAccel(FFF)V

    :cond_53
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    .line 1881
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    .line 1882
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1883
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-gez p1, :cond_10

    add-int/lit8 p1, p1, -0x1

    .line 1901
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v2, 0x2002

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-eq v1, v2, :cond_ba

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v2, 0x3002

    if-ne v1, v2, :cond_24

    goto/16 :goto_ba

    :cond_24
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    if-eqz v7, :cond_8f

    if-eq v7, v8, :cond_8f

    const/4 v2, 0x2

    if-eq v7, v2, :cond_65

    const/4 v2, 0x3

    if-eq v7, v2, :cond_3b

    const/4 v0, 0x5

    if-eq v7, v0, :cond_39

    const/4 v0, 0x6

    if-eq v7, v0, :cond_39

    goto/16 :goto_e9

    :cond_39
    move v3, v1

    goto :goto_8f

    :cond_3b
    move v7, v3

    :goto_3c
    if-ge v7, v0, :cond_e9

    .line 1961
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1962
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v1, v3

    .line 1963
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v1, v3

    .line 1964
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    cmpl-float v3, v1, v9

    if-lez v3, :cond_5c

    move v6, v9

    goto :goto_5d

    :cond_5c
    move v6, v1

    :goto_5d
    const/4 v3, 0x1

    move v1, p1

    .line 1970
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_65
    move v10, v3

    :goto_66
    if-ge v10, v0, :cond_e9

    .line 1922
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1923
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v1, v3

    .line 1924
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v1, v3

    .line 1925
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    cmpl-float v3, v1, v9

    if-lez v3, :cond_86

    move v6, v9

    goto :goto_87

    :cond_86
    move v6, v1

    :goto_87
    move v1, p1

    move v3, v7

    .line 1931
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_66

    :cond_8f
    :goto_8f
    if-ne v3, v1, :cond_95

    .line 1944
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 1947
    :cond_95
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1948
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v0, v1

    .line 1949
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget p0, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v0, p0

    .line 1950
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p0

    cmpl-float p2, p0, v9

    if-lez p2, :cond_b3

    move v6, v9

    goto :goto_b4

    :cond_b3
    move v6, p0

    :goto_b4
    move v1, p1

    move v3, v7

    .line 1956
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    goto :goto_e9

    .line 1904
    :cond_ba
    :goto_ba
    :try_start_ba
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "getButtonState"

    new-array v0, v3, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d5

    .line 1906
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d4} :catch_d5

    goto :goto_d6

    :catch_d5
    :cond_d5
    move p0, v8

    .line 1913
    :goto_d6
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object p1

    .line 1914
    invoke-virtual {p1, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventX(Landroid/view/MotionEvent;)F

    move-result v0

    .line 1915
    invoke-virtual {p1, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventY(Landroid/view/MotionEvent;)F

    move-result p2

    .line 1917
    invoke-virtual {p1}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->inRelativeMode()Z

    move-result p1

    invoke-static {p0, v7, v0, p2, p1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    :cond_e9
    :goto_e9
    return v8
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    .line 1751
    const-string p1, "SDL"

    const-string p2, "surfaceChanged()"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez p1, :cond_c

    return-void

    .line 1757
    :cond_c
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    monitor-enter p1

    .line 1759
    :try_start_11
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 1760
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_d0

    .line 1769
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    .line 1770
    sget-object p2, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p2

    invoke-static {p2, p3, p4, p1}, Lorg/libsdl/app/SurfaceSizePolicy;->isTransient(IIIZ)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 1771
    const-string p1, "SDL"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skip .. Surface is not ready: transient "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", keeping "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1773
    iput-boolean p1, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    return-void

    :cond_63
    int-to-float p1, p3

    .line 1777
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    int-to-float p1, p4

    .line 1778
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 1784
    :try_start_69
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1785
    iget-object p2, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1786
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_75} :catch_78

    .line 1787
    :try_start_75
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_77} :catch_79

    goto :goto_7a

    :catch_78
    move p2, p3

    :catch_79
    move p1, p4

    .line 1792
    :goto_7a
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const-string v0, "SDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    invoke-static {p3, p4, p2, p1, v0}, Lorg/libsdl/app/SDLActivity;->nativeSetScreenResolution(IIIIF)V

    .line 1795
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeResize()V

    .line 1798
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceChanged()V

    const/4 p1, 0x1

    .line 1801
    iput-boolean p1, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 1803
    sget-object p0, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 1804
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    return-void

    :catchall_d0
    move-exception p0

    .line 1760
    :try_start_d1
    monitor-exit p1
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    throw p0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 1730
    const-string p0, "SDL"

    const-string p1, "surfaceCreated()"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 1737
    const-string p1, "SDL"

    const-string v0, "surfaceDestroyed()"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 1741
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    const/4 p1, 0x0

    .line 1743
    iput-boolean p1, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 1744
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceDestroyed()V

    return-void
.end method

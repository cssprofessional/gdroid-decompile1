###### Class com.gmodvr.flat.GlProbe (com.gmodvr.flat.GlProbe)
.class final Lcom/gmodvr/flat/GlProbe;
.super Ljava/lang/Object;
.source "GlProbe.java"


# static fields
.field private static final ASTC:[Ljava/lang/String;

.field private static final EGL_OPENGL_ES3_BIT_KHR:I = 0x40

.field private static cached:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$U0nFH0ZbGhVqexM6utVzGUM_e-E(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/GlProbe;->lambda$report$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oBDjPkTK7SIpV8CEem41YNX6P-s()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {}, Lcom/gmodvr/flat/GlProbe;->probe()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 14

    .line 173
    const-string v12, "12x10"

    const-string v13, "12x12"

    const-string v0, "4x4"

    const-string v1, "5x4"

    const-string v2, "5x5"

    const-string v3, "6x5"

    const-string v4, "6x6"

    const-string v5, "8x5"

    const-string v6, "8x6"

    const-string v7, "8x8"

    const-string v8, "10x5"

    const-string v9, "10x6"

    const-string v10, "10x8"

    const-string v11, "10x10"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/GlProbe;->ASTC:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static choose(Landroid/opengl/EGLDisplay;I)Landroid/opengl/EGLConfig;
    .registers 21

    const/16 v9, 0x8

    const/16 v10, 0x3038

    const/16 v0, 0x3040

    const/16 v2, 0x3033

    const/4 v3, 0x1

    const/16 v4, 0x3024

    const/16 v5, 0x8

    const/16 v6, 0x3023

    const/16 v7, 0x8

    const/16 v8, 0x3022

    move/from16 v1, p1

    .line 121
    filled-new-array/range {v0 .. v10}, [I

    move-result-object v12

    const/4 v0, 0x1

    .line 123
    new-array v1, v0, [Landroid/opengl/EGLConfig;

    .line 124
    new-array v0, v0, [I

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move-object v14, v1

    move-object/from16 v17, v0

    .line 125
    invoke-static/range {v11 .. v18}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x0

    aget v0, v0, v2

    if-lez v0, :cond_37

    aget-object v0, v1, v2

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    return-object v0
.end method

.method public static formatName(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_be

    sparse-switch p0, :sswitch_data_ca

    packed-switch p0, :pswitch_data_e4

    packed-switch p0, :pswitch_data_f0

    packed-switch p0, :pswitch_data_f8

    packed-switch p0, :pswitch_data_100

    const v0, 0x93b0

    if-lt p0, v0, :cond_33

    const v1, 0x93bd

    if-gt p0, v1, :cond_33

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RGBA_ASTC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gmodvr/flat/GlProbe;->ASTC:[Ljava/lang/String;

    sub-int/2addr p0, v0

    aget-object p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    const v0, 0x93d0

    if-lt p0, v0, :cond_54

    const v1, 0x93dd

    if-gt p0, v1, :cond_54

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SRGB8_ALPHA8_ASTC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gmodvr/flat/GlProbe;->ASTC:[Ljava/lang/String;

    sub-int/2addr p0, v0

    aget-object p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :pswitch_6a
    const-string p0, "SRGB8_ALPHA8_ETC2_EAC"

    return-object p0

    .line 147
    :pswitch_6d
    const-string p0, "RGBA8_ETC2_EAC"

    return-object p0

    .line 146
    :pswitch_70
    const-string p0, "SRGB8_PUNCHTHROUGH_ALPHA1_ETC2"

    return-object p0

    .line 145
    :pswitch_73
    const-string p0, "RGB8_PUNCHTHROUGH_ALPHA1_ETC2"

    return-object p0

    .line 144
    :pswitch_76
    const-string p0, "SRGB8_ETC2"

    return-object p0

    .line 143
    :pswitch_79
    const-string p0, "RGB8_ETC2"

    return-object p0

    .line 142
    :pswitch_7c
    const-string p0, "SIGNED_RG11_EAC"

    return-object p0

    .line 141
    :pswitch_7f
    const-string p0, "RG11_EAC"

    return-object p0

    .line 140
    :pswitch_82
    const-string p0, "SIGNED_R11_EAC"

    return-object p0

    .line 139
    :pswitch_85
    const-string p0, "R11_EAC"

    return-object p0

    .line 158
    :pswitch_88
    const-string p0, "SRGB_ALPHA_BPTC_UNORM"

    return-object p0

    .line 157
    :pswitch_8b
    const-string p0, "RGBA_BPTC_UNORM"

    return-object p0

    .line 164
    :pswitch_8e
    const-string p0, "ATC_RGBA_EXPLICIT_ALPHA_AMD"

    return-object p0

    .line 163
    :pswitch_91
    const-string p0, "ATC_RGB_AMD"

    return-object p0

    .line 156
    :pswitch_94
    const-string p0, "SRGB_ALPHA_S3TC_DXT5"

    return-object p0

    .line 155
    :pswitch_97
    const-string p0, "SRGB_ALPHA_S3TC_DXT3"

    return-object p0

    .line 154
    :pswitch_9a
    const-string p0, "SRGB_ALPHA_S3TC_DXT1"

    return-object p0

    .line 153
    :pswitch_9d
    const-string p0, "SRGB_S3TC_DXT1"

    return-object p0

    .line 160
    :sswitch_a0
    const-string p0, "RG_RGTC2"

    return-object p0

    .line 159
    :sswitch_a3
    const-string p0, "RED_RGTC1"

    return-object p0

    .line 138
    :sswitch_a6
    const-string p0, "ETC1_RGB8"

    return-object p0

    .line 162
    :sswitch_a9
    const-string p0, "RGBA_PVRTC_4BPPV1"

    return-object p0

    .line 161
    :sswitch_ac
    const-string p0, "RGB_PVRTC_4BPPV1"

    return-object p0

    .line 165
    :sswitch_af
    const-string p0, "ATC_RGBA_INTERPOLATED_ALPHA_AMD"

    return-object p0

    .line 152
    :pswitch_b2
    const-string p0, "RGBA_S3TC_DXT5"

    return-object p0

    .line 151
    :pswitch_b5
    const-string p0, "RGBA_S3TC_DXT3"

    return-object p0

    .line 150
    :pswitch_b8
    const-string p0, "RGBA_S3TC_DXT1"

    return-object p0

    .line 149
    :pswitch_bb
    const-string p0, "RGB_S3TC_DXT1"

    return-object p0

    :pswitch_data_be
    .packed-switch 0x83f0
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
    .end packed-switch

    :sswitch_data_ca
    .sparse-switch
        0x87ee -> :sswitch_af
        0x8c00 -> :sswitch_ac
        0x8c02 -> :sswitch_a9
        0x8d64 -> :sswitch_a6
        0x8dbb -> :sswitch_a3
        0x8dbd -> :sswitch_a0
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x8c4c
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x8c92
        :pswitch_91
        :pswitch_8e
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x8e8c
        :pswitch_8b
        :pswitch_88
    .end packed-switch

    :pswitch_data_100
    .packed-switch 0x9270
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
    .end packed-switch
.end method

.method private static synthetic lambda$report$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "GDroid-glprobe"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    .line 129
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 130
    invoke-static {p2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 131
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p2

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1c

    aget p1, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static probe()Ljava/lang/String;
    .registers 12

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 48
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    .line 49
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v2, v3, :cond_11

    const-string v0, "GL probe: no EGL display\n"

    return-object v0

    :cond_11
    const/4 v3, 0x2

    .line 50
    new-array v4, v3, [I

    const/4 v5, 0x1

    .line 51
    invoke-static {v2, v4, v1, v4, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GL probe: eglInitialize failed 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_3a
    const-string v6, "EGL "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vendor: "

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3053

    invoke-static {v2, v4}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version: "

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3054

    invoke-static {v2, v4}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    .line 58
    invoke-static {v2, v6}, Lcom/gmodvr/flat/GlProbe;->choose(Landroid/opengl/EGLDisplay;I)Landroid/opengl/EGLConfig;

    move-result-object v6

    const/4 v7, 0x3

    if-nez v6, :cond_7e

    const/4 v6, 0x4

    .line 59
    invoke-static {v2, v6}, Lcom/gmodvr/flat/GlProbe;->choose(Landroid/opengl/EGLDisplay;I)Landroid/opengl/EGLConfig;

    move-result-object v6

    goto :goto_7f

    :cond_7e
    move v3, v7

    :goto_7f
    if-nez v6, :cond_8b

    .line 60
    const-string v1, "GL probe: no pbuffer config\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8b
    const/16 v8, 0x3057

    const/16 v9, 0x3056

    const/16 v10, 0x3038

    .line 62
    filled-new-array {v8, v5, v9, v5, v10}, [I

    move-result-object v8

    invoke-static {v2, v6, v8, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v8

    .line 64
    sget-object v9, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v11, 0x3098

    filled-new-array {v11, v3, v10}, [I

    move-result-object v10

    invoke-static {v2, v6, v9, v10, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v6

    .line 67
    :try_start_a5
    sget-object v9, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v8, v9, :cond_242

    sget-object v9, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v6, v9, :cond_242

    .line 68
    invoke-static {v2, v8, v8, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v9

    if-nez v9, :cond_b5

    goto/16 :goto_242

    .line 70
    :cond_b5
    const-string v9, "context: OpenGL ES "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (pbuffer)\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v9, "GL_VENDOR: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x1f00

    invoke-static {v9}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    const-string v9, "GL_RENDERER: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x1f01

    invoke-static {v9}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    const-string v9, "GL_VERSION: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x1f02

    invoke-static {v9}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    const-string v9, "GL_SHADING_LANGUAGE_VERSION: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x8b8c

    invoke-static {v9}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    const-string v9, "GL_MAX_TEXTURE_SIZE"

    const/16 v10, 0xd33

    invoke-static {v0, v9, v10}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 77
    const-string v9, "GL_MAX_CUBE_MAP_TEXTURE_SIZE"

    const v10, 0x851c

    invoke-static {v0, v9, v10}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 78
    const-string v9, "GL_MAX_RENDERBUFFER_SIZE"

    const v10, 0x84e8

    invoke-static {v0, v9, v10}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 79
    const-string v9, "GL_MAX_VERTEX_ATTRIBS"

    const v10, 0x8869

    invoke-static {v0, v9, v10}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 80
    const-string v9, "GL_MAX_VERTEX_UNIFORM_VECTORS"

    const v10, 0x8dfb

    invoke-static {v0, v9, v10}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 81
    const-string v9, "GL_MAX_FRAGMENT_UNIFORM_VECTORS"

    const v10, 0x8dfd

    invoke-static {v0, v9, v10}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 82
    const-string v9, "GL_MAX_VARYING_VECTORS"

    const v10, 0x8dfc

    invoke-static {v0, v9, v10}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 83
    const-string v9, "GL_MAX_TEXTURE_IMAGE_UNITS"

    const v10, 0x8872

    invoke-static {v0, v9, v10}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 84
    const-string v9, "GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS"

    const v10, 0x8b4c

    invoke-static {v0, v9, v10}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 85
    const-string v9, "GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS"

    const v10, 0x8b4d

    invoke-static {v0, v9, v10}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    if-lt v3, v7, :cond_19c

    .line 87
    const-string v3, "GL_MAX_3D_TEXTURE_SIZE"

    const v7, 0x8073

    invoke-static {v0, v3, v7}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 88
    const-string v3, "GL_MAX_ARRAY_TEXTURE_LAYERS"

    const v7, 0x88ff

    invoke-static {v0, v3, v7}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 89
    const-string v3, "GL_MAX_DRAW_BUFFERS"

    const v7, 0x8824

    invoke-static {v0, v3, v7}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 90
    const-string v3, "GL_MAX_COLOR_ATTACHMENTS"

    const v7, 0x8cdf

    invoke-static {v0, v3, v7}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 91
    const-string v3, "GL_MAX_SAMPLES"

    const v7, 0x8d57

    invoke-static {v0, v3, v7}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 92
    const-string v3, "GL_MAX_UNIFORM_BLOCK_SIZE"

    const v7, 0x8a30

    invoke-static {v0, v3, v7}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 93
    const-string v3, "GL_MAX_VERTEX_UNIFORM_COMPONENTS"

    const v7, 0x8b4a

    invoke-static {v0, v3, v7}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 94
    const-string v3, "GL_MAX_FRAGMENT_UNIFORM_COMPONENTS"

    const v7, 0x8b49

    invoke-static {v0, v3, v7}, Lcom/gmodvr/flat/GlProbe;->limit(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_19c

    :catchall_199
    move-exception v0

    goto/16 :goto_272

    .line 97
    :cond_19c
    :goto_19c
    new-array v3, v5, [I

    const v7, 0x86a2

    .line 98
    invoke-static {v7, v3, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 99
    aget v3, v3, v1

    const/16 v7, 0x200

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 100
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [I

    if-lez v3, :cond_1be

    const v7, 0x86a3

    .line 101
    invoke-static {v7, v5, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 102
    :cond_1be
    const-string v7, "GL_COMPRESSED_TEXTURE_FORMATS ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "):"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1cb
    .catchall {:try_start_a5 .. :try_end_1cb} :catchall_199

    move v7, v1

    .line 103
    :goto_1cc
    const-string v9, "  "

    if-ge v7, v3, :cond_1e5

    :try_start_1d0
    rem-int/lit8 v10, v7, 0x4

    if-nez v10, :cond_1d6

    const-string v9, "\n  "

    :cond_1d6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v5, v7

    invoke-static {v9}, Lcom/gmodvr/flat/GlProbe;->formatName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1cc

    .line 104
    :cond_1e5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x1f03

    .line 106
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f3

    .line 107
    new-array v3, v1, [Ljava/lang/String;

    goto :goto_1fd

    :cond_1f3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 108
    :goto_1fd
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 109
    const-string v5, "GL_EXTENSIONS ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "):\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    array-length v5, v3

    :goto_20f
    if-ge v1, v5, :cond_225

    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_222

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_222
    add-int/lit8 v1, v1, 0x1

    goto :goto_20f

    .line 111
    :cond_225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_229
    .catchall {:try_start_1d0 .. :try_end_229} :catchall_199

    .line 113
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v1, v1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 114
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v6, v1, :cond_237

    invoke-static {v2, v6}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 115
    :cond_237
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v8, v1, :cond_23e

    invoke-static {v2, v8}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 116
    :cond_23e
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    return-object v0

    .line 69
    :cond_242
    :goto_242
    :try_start_242
    const-string v1, "GL probe: context creation failed 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_259
    .catchall {:try_start_242 .. :try_end_259} :catchall_199

    .line 113
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v1, v1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 114
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v6, v1, :cond_267

    invoke-static {v2, v6}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 115
    :cond_267
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v8, v1, :cond_26e

    invoke-static {v2, v8}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 116
    :cond_26e
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    return-object v0

    .line 113
    :goto_272
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v1, v1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 114
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v6, v1, :cond_280

    invoke-static {v2, v6}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 115
    :cond_280
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v8, v1, :cond_287

    invoke-static {v2, v8}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 116
    :cond_287
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 117
    throw v0
.end method

.method public static declared-synchronized report(J)Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/gmodvr/flat/GlProbe;

    monitor-enter v0

    .line 26
    :try_start_3
    sget-object v1, Lcom/gmodvr/flat/GlProbe;->cached:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2a

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    .line 27
    :cond_9
    :try_start_9
    new-instance v1, Lcom/gmodvr/flat/GlProbe$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gmodvr/flat/GlProbe$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_2a

    .line 33
    :try_start_12
    new-instance v2, Lcom/gmodvr/flat/GlProbe$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/gmodvr/flat/GlProbe$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, p1, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    sput-object v2, Lcom/gmodvr/flat/GlProbe;->cached:Ljava/lang/String;
    :try_end_25
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_12 .. :try_end_25} :catch_59
    .catchall {:try_start_12 .. :try_end_25} :catchall_2c

    .line 42
    :try_start_25
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2a

    .line 35
    monitor-exit v0

    return-object v2

    :catchall_2a
    move-exception p0

    goto :goto_78

    :catchall_2c
    move-exception p0

    .line 39
    :try_start_2d
    instance-of p1, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_74

    .line 40
    :cond_3e
    :goto_3e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GL probe failed: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_54
    .catchall {:try_start_2d .. :try_end_54} :catchall_3c

    .line 42
    :try_start_54
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_2a

    .line 40
    monitor-exit v0

    return-object p0

    .line 37
    :catch_59
    :try_start_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL probe: timed out after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_3c

    .line 42
    :try_start_6f
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_2a

    .line 37
    monitor-exit v0

    return-object p0

    .line 42
    :goto_74
    :try_start_74
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 43
    throw p0

    :goto_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_2a

    throw p0
.end method

###### Class com.gmodvr.flat.GlProbe$$ExternalSyntheticLambda0 (com.gmodvr.flat.GlProbe$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/GlProbe$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/gmodvr/flat/GlProbe;->$r8$lambda$U0nFH0ZbGhVqexM6utVzGUM_e-E(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.GlProbe$$ExternalSyntheticLambda1 (com.gmodvr.flat.GlProbe$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/GlProbe$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {}, Lcom/gmodvr/flat/GlProbe;->$r8$lambda$oBDjPkTK7SIpV8CEem41YNX6P-s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

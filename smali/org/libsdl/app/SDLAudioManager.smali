###### Class org.libsdl.app.SDLAudioManager (org.libsdl.app.SDLAudioManager)
.class public Lorg/libsdl/app/SDLAudioManager;
.super Ljava/lang/Object;
.source "SDLAudioManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SDLAudio"

.field protected static mAudioRecord:Landroid/media/AudioRecord;

.field protected static mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audioClose()V
    .registers 1

    .line 357
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_f

    .line 358
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 359
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 360
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_f
    return-void
.end method

.method public static audioOpen(IIII)[I
    .registers 5

    const/4 v0, 0x0

    .line 244
    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static audioSetThreadPriority(ZI)V
    .registers 4

    if-eqz p0, :cond_1d

    .line 379
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDLAudioC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_35

    :catch_1b
    move-exception p0

    goto :goto_3b

    .line 381
    :cond_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDLAudioP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_35
    const/16 p0, -0x10

    .line 385
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_1b

    goto :goto_55

    .line 388
    :goto_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modify thread properties failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDLAudio"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return-void
.end method

.method public static audioWriteByteBuffer([B)V
    .registers 5

    .line 303
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_c

    .line 304
    const-string p0, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 308
    :catch_d
    :goto_d
    array-length v2, p0

    if-ge v0, v2, :cond_29

    .line 309
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    if-lez v2, :cond_1c

    add-int/2addr v0, v2

    goto :goto_d

    :cond_1c
    if-nez v2, :cond_24

    const-wide/16 v2, 0x1

    .line 314
    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_d

    goto :goto_d

    .line 319
    :cond_24
    const-string p0, "SDL audio: error return from write(byte)"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method public static audioWriteFloatBuffer([F)V
    .registers 6

    .line 251
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_c

    .line 252
    const-string p0, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    move v2, v0

    .line 256
    :catch_e
    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_2a

    .line 257
    sget-object v3, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v4, p0

    sub-int/2addr v4, v2

    invoke-virtual {v3, p0, v2, v4, v0}, Landroid/media/AudioTrack;->write([FIII)I

    move-result v3

    if-lez v3, :cond_1d

    add-int/2addr v2, v3

    goto :goto_e

    :cond_1d
    if-nez v3, :cond_25

    const-wide/16 v3, 0x1

    .line 262
    :try_start_21
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_e

    goto :goto_e

    .line 267
    :cond_25
    const-string p0, "SDL audio: error return from write(float)"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public static audioWriteShortBuffer([S)V
    .registers 5

    .line 277
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_c

    .line 278
    const-string p0, "Attempted to make audio call with uninitialized audio!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 282
    :catch_d
    :goto_d
    array-length v2, p0

    if-ge v0, v2, :cond_29

    .line 283
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v2

    if-lez v2, :cond_1c

    add-int/2addr v0, v2

    goto :goto_d

    :cond_1c
    if-nez v2, :cond_24

    const-wide/16 v2, 0x1

    .line 288
    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_d

    goto :goto_d

    .line 293
    :cond_24
    const-string p0, "SDL audio: error return from write(short)"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method public static captureClose()V
    .registers 1

    .line 366
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_f

    .line 367
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 368
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 369
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_f
    return-void
.end method

.method public static captureOpen(IIII)[I
    .registers 5

    const/4 v0, 0x1

    .line 329
    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static captureReadByteBuffer([BZ)I
    .registers 5

    .line 351
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v1, p0

    xor-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, p1}, Landroid/media/AudioRecord;->read([BIII)I

    move-result p0

    return p0
.end method

.method public static captureReadFloatBuffer([FZ)I
    .registers 5

    .line 334
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v1, p0

    xor-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, p1}, Landroid/media/AudioRecord;->read([FIII)I

    move-result p0

    return p0
.end method

.method public static captureReadShortBuffer([SZ)I
    .registers 5

    .line 342
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v1, p0

    xor-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, p1}, Landroid/media/AudioRecord;->read([SIII)I

    move-result p0

    return p0
.end method

.method public static getAudioFormatString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_e
    const-string p0, "float"

    return-object p0

    .line 28
    :cond_11
    const-string p0, "8-bit"

    return-object p0

    .line 30
    :cond_14
    const-string p0, "16-bit"

    return-object p0
.end method

.method public static initialize()V
    .registers 1

    const/4 v0, 0x0

    .line 19
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 20
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static open(ZIIII)[I
    .registers 28

    move/from16 v2, p1

    move/from16 v0, p3

    move/from16 v1, p4

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opening "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "playback"

    const-string v9, "capture"

    if-eqz p0, :cond_18

    move-object v4, v9

    goto :goto_19

    :cond_18
    move-object v4, v8

    :goto_19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " frames of "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " channel "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " audio at "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " Hz"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v14, "SDLAudio"

    invoke-static {v14, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x4

    const/4 v15, 0x2

    move/from16 v5, p2

    if-ne v5, v4, :cond_60

    if-eqz p0, :cond_5b

    const/16 v6, 0x17

    goto :goto_5d

    :cond_5b
    const/16 v6, 0x15

    :goto_5d
    if-ge v3, v6, :cond_60

    move v5, v15

    :cond_60
    const/4 v6, 0x3

    const/4 v3, 0x1

    if-eq v5, v15, :cond_8a

    if-eq v5, v6, :cond_87

    if-eq v5, v4, :cond_84

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested format "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", getting ENCODING_PCM_16BIT"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v15

    move v5, v4

    goto :goto_8c

    :cond_84
    move v4, v5

    const/4 v5, 0x4

    goto :goto_8c

    :cond_87
    move v4, v5

    move v5, v3

    goto :goto_8c

    :cond_8a
    move v4, v5

    move v5, v15

    .line 81
    :goto_8c
    const-string v6, " channels, getting stereo"

    const-string v15, "Requested "

    const/16 v17, 0xc

    if-eqz p0, :cond_b8

    if-eq v0, v3, :cond_b5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ae
    move/from16 v3, v17

    const/4 v0, 0x2

    goto :goto_e4

    :cond_b2
    :pswitch_b2
    move/from16 v3, v17

    goto :goto_e4

    :cond_b5
    const/16 v3, 0x10

    goto :goto_e4

    :cond_b8
    packed-switch v0, :pswitch_data_1f6

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    :pswitch_d1
    const/16 v3, 0x18fc

    goto :goto_e4

    :pswitch_d4
    const/16 v3, 0x4fc

    goto :goto_e4

    :pswitch_d7
    const/16 v3, 0xfc

    goto :goto_e4

    :pswitch_da
    const/16 v3, 0xdc

    goto :goto_e4

    :pswitch_dd
    const/16 v3, 0xcc

    goto :goto_e4

    :pswitch_e0
    const/16 v3, 0x1c

    goto :goto_e4

    :pswitch_e3
    const/4 v3, 0x4

    :goto_e4
    mul-int/2addr v5, v0

    if-eqz p0, :cond_ec

    .line 179
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    goto :goto_f0

    .line 181
    :cond_ec
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    :goto_f0
    add-int/2addr v0, v5

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    .line 183
    div-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/4 v0, 0x4

    .line 185
    new-array v1, v0, [I

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz p0, :cond_15f

    .line 189
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10e

    return-object v17

    .line 191
    :cond_10e
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_13d

    .line 192
    new-instance v6, Landroid/media/AudioRecord;

    const/16 v19, 0x0

    mul-int/2addr v5, v15

    move-object v0, v6

    move-object/from16 v20, v1

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v6, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 196
    invoke-virtual {v6}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_137

    .line 197
    const-string v0, "Failed during initialization of AudioRecord"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 199
    sput-object v17, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v17

    .line 203
    :cond_137
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    goto :goto_140

    :cond_13d
    move-object/from16 v20, v1

    const/4 v6, 0x1

    .line 206
    :goto_140
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v0

    aput v0, v20, v16

    .line 207
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    aput v0, v20, v6

    .line 208
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    const/4 v1, 0x2

    aput v0, v20, v1

    move-object/from16 v22, v8

    const/16 v21, 0x3

    move v8, v6

    goto :goto_1b2

    :cond_15f
    move-object/from16 v20, v1

    .line 211
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_194

    .line 212
    new-instance v18, Landroid/media/AudioTrack;

    mul-int/2addr v5, v15

    const/16 v19, 0x1

    const/4 v1, 0x3

    move-object/from16 v0, v18

    move/from16 v2, p1

    move-object/from16 v22, v8

    const/16 v21, 0x3

    move v8, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v18, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 217
    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v8, :cond_18e

    .line 220
    const-string v0, "Failed during initialization of Audio Track"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 222
    sput-object v17, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v17

    .line 226
    :cond_18e
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_199

    :cond_194
    move-object/from16 v22, v8

    const/16 v21, 0x3

    move v8, v6

    .line 229
    :goto_199
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    aput v0, v20, v16

    .line 230
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    aput v0, v20, v8

    .line 231
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    const/4 v1, 0x2

    aput v0, v20, v1

    .line 233
    :goto_1b2
    aput v15, v20, v21

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1bf

    goto :goto_1c1

    :cond_1bf
    move-object/from16 v9, v22

    :goto_1c1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v20, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, v20, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v20, v8

    invoke-static {v1}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v20, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_e3
        :pswitch_b2
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
    .end packed-switch
.end method

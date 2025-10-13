.class public Lorg/telegram/messenger/video/MediaCodecVideoConvertor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;,
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;,
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;,
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;
    }
.end annotation


# static fields
.field private static final MEDIACODEC_TIMEOUT_DEFAULT:I = 0x9c4

.field private static final MEDIACODEC_TIMEOUT_INCREASED:I = 0x55f0

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5


# instance fields
.field private callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

.field private endPresentationTime:J

.field private extractor:Landroid/media/MediaExtractor;

.field private muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

.field private outputMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/audio_input/AudioInput;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    :try_start_0
    new-instance v2, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;

    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/audio_input/AudioInput;->setVolume(F)V

    iget-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartOffsetUs(J)V

    :cond_1
    iget-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartTimeUs(J)V

    goto :goto_1

    :cond_2
    move-wide v3, v5

    :goto_1
    iget-wide v7, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_3

    add-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setEndTimeUs(J)V

    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private checkConversionCanceled()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->checkConversionCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;-><init>(Lorg/telegram/messenger/video/MediaCodecVideoConvertor;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z
    .locals 93

    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move/from16 v11, p2

    move/from16 v9, p3

    iget-object v1, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->videoPath:Ljava/lang/String;

    iget-object v10, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cacheFile:Ljava/io/File;

    iget v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->rotationValue:I

    iget-boolean v3, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSecret:Z

    iget v8, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalWidth:I

    iget v7, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalHeight:I

    iget v15, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultWidth:I

    iget v14, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultHeight:I

    iget v5, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->framerate:I

    iget v6, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->bitrate:I

    iget v4, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalBitrate:I

    move/from16 v32, v3

    move/from16 v16, v4

    iget-wide v3, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->startTime:J

    move-wide/from16 v17, v3

    iget-wide v3, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->endTime:J

    move-wide/from16 v19, v3

    iget-wide v3, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->avatarStartTime:J

    iget-boolean v9, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->needCompress:Z

    move/from16 v34, v9

    move-object/from16 v33, v10

    iget-wide v9, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->duration:J

    iget-object v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    move/from16 v25, v2

    iget-object v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->paintPath:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->blurPath:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->mediaEntities:Ljava/util/ArrayList;

    move-object/from16 v23, v2

    iget-boolean v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isPhoto:Z

    move-object/from16 v35, v1

    iget-object v1, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    move-object/from16 v24, v11

    iget-boolean v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isRound:Z

    move/from16 v36, v11

    iget-object v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientTopColor:Ljava/lang/Integer;

    move-object/from16 v28, v11

    iget-object v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientBottomColor:Ljava/lang/Integer;

    move-object/from16 v29, v11

    iget-boolean v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->muted:Z

    move/from16 v26, v11

    iget v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->volume:F

    move/from16 v37, v11

    iget-boolean v11, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isStory:Z

    move/from16 v38, v5

    iget-object v5, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    move-object/from16 v27, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v1

    const-string v1, "convertVideoInternal original="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v39, v7

    const-string v7, "  result="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    move/from16 v42, v8

    const-wide/16 v7, 0x0

    cmp-long v31, v3, v7

    if-ltz v31, :cond_0

    const/16 v31, 0x1

    goto :goto_0

    :cond_0
    const/16 v31, 0x0

    :goto_0
    iget-boolean v7, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSticker:Z

    const-string v8, "video/hevc"

    if-eqz v7, :cond_1

    const-string v46, "video/x-vnd.on2.vp9"

    :goto_1
    move-object/from16 v5, v46

    goto :goto_2

    :cond_1
    if-eqz v11, :cond_2

    move-object v5, v8

    goto :goto_2

    :cond_2
    const-string v46, "video/avc"

    goto :goto_1

    :goto_2
    iput-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    :try_start_0
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_70

    move-wide/from16 v50, v3

    long-to-float v3, v9

    const/high16 v52, 0x447a0000    # 1000.0f

    div-float v3, v3, v52

    const-wide/16 v53, 0x3e8

    move-object/from16 v55, v5

    mul-long v4, v9, v53

    :try_start_1
    iput-wide v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6f

    move/from16 v53, v11

    const-string v11, "csd-1"

    move-object/from16 v54, v1

    const-string v1, "csd-0"

    move-object/from16 v56, v11

    const-string v11, "prepend-sps-pps-to-idr-frames"

    move-object/from16 v57, v1

    move/from16 v58, v2

    if-eqz v58, :cond_38

    if-eqz v31, :cond_5

    const/high16 v6, 0x44fa0000    # 2000.0f

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_3

    const v6, 0x27ac40

    goto :goto_3

    :cond_3
    const v6, 0x459c4000    # 5000.0f

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_4

    const v6, 0x2191c0

    goto :goto_3

    :cond_4
    const v6, 0x17cdc0

    goto :goto_3

    :cond_5
    if-gtz v6, :cond_6

    const v6, 0xe1000

    :cond_6
    :goto_3
    if-eqz v30, :cond_9

    move-object/from16 v2, v30

    :try_start_2
    iget-object v1, v2, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v60, v3

    :cond_8
    :goto_4
    move v1, v14

    move v3, v15

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move/from16 v3, p2

    move-object v1, v0

    move/from16 v19, v15

    move/from16 v67, v34

    move/from16 v2, v38

    move-object/from16 v10, v54

    move-object/from16 v15, v55

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v29, 0x0

    const/16 v38, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v65, -0x5

    const/16 v66, 0x0

    :goto_5
    move-object/from16 v34, v33

    goto/16 :goto_128

    :catch_0
    move-exception v0

    move-object v2, v0

    :goto_6
    move/from16 v37, v6

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/4 v9, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v49, 0x0

    goto/16 :goto_51

    :cond_9
    move-object/from16 v2, v30

    :goto_7
    :try_start_3
    rem-int/lit8 v1, v15, 0x10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_23
    .catchall {:try_start_3 .. :try_end_3} :catchall_21

    const/high16 v16, 0x41800000    # 16.0f

    if-eqz v1, :cond_b

    :try_start_4
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v60, v3

    const-string v3, "changing width from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v15

    div-float v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    move/from16 v60, v3

    :goto_8
    int-to-float v1, v15

    div-float v1, v1, v16

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    mul-int/lit8 v15, v1, 0x10

    goto :goto_9

    :cond_b
    move/from16 v60, v3

    :goto_9
    :try_start_5
    rem-int/lit8 v1, v14, 0x10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_23
    .catchall {:try_start_5 .. :try_end_5} :catchall_21

    if-eqz v1, :cond_8

    :try_start_6
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changing height from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v14

    div-float v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_c
    int-to-float v1, v14

    div-float v1, v1, v16

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    mul-int/lit8 v14, v1, 0x10

    goto/16 :goto_4

    :goto_a
    :try_start_7
    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_22
    .catchall {:try_start_7 .. :try_end_7} :catchall_20

    if-eqz v14, :cond_d

    :try_start_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "create photo encoder "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " duration = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    move v14, v1

    move/from16 v19, v3

    move/from16 v67, v34

    move/from16 v2, v38

    move-object/from16 v10, v54

    move-object/from16 v15, v55

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v29, 0x0

    const/16 v38, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v65, -0x5

    const/16 v66, 0x0

    move/from16 v3, p2

    move-object v1, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v2, v0

    move v14, v1

    move v15, v3

    goto/16 :goto_6

    :cond_d
    :goto_b
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createEncoderForMimeType()Landroid/media/MediaCodec;

    move-result-object v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_22
    .catchall {:try_start_9 .. :try_end_9} :catchall_20

    :try_start_a
    iget-object v10, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v10, v3, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v10

    const-string v14, "color-format"

    const v15, 0x7f000789

    invoke-virtual {v10, v14, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v14, "bitrate"

    invoke-virtual {v10, v14, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v14, "frame-rate"

    const/16 v15, 0x1e

    invoke-virtual {v10, v14, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v14, "i-frame-interval"

    const/4 v15, 0x1

    invoke-virtual {v10, v14, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_21
    .catchall {:try_start_a .. :try_end_a} :catchall_1f

    :try_start_b
    const-string v14, "c2.qti.avc.encoder"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_20
    .catchall {:try_start_b .. :try_end_b} :catchall_1e

    :try_start_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1f
    .catchall {:try_start_c .. :try_end_c} :catchall_1d

    move/from16 v37, v6

    :try_start_d
    const-string v6, "selected encoder "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1e
    .catchall {:try_start_d .. :try_end_d} :catchall_1c

    const/4 v6, 0x1

    const/4 v14, 0x0

    :try_start_e
    invoke-virtual {v9, v10, v14, v14, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v6, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1d
    .catchall {:try_start_e .. :try_end_e} :catchall_1b

    :try_start_f
    invoke-virtual {v6}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    invoke-virtual {v9}, Landroid/media/MediaCodec;->start()V

    new-instance v10, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1c
    .catchall {:try_start_f .. :try_end_f} :catchall_1a

    if-eqz v2, :cond_e

    :try_start_10
    iget-object v14, v2, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v14, :cond_e

    move-object/from16 v20, v2

    move/from16 v2, v38

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v0

    move/from16 v19, v1

    move-object v1, v6

    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    goto/16 :goto_44

    :catch_2
    move-exception v0

    move-object v2, v0

    move/from16 v19, v1

    move-object v1, v6

    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    goto/16 :goto_45

    :cond_e
    move/from16 v2, v38

    const/16 v20, 0x0

    :goto_c
    int-to-float v14, v2

    const/16 v27, 0x1

    const/16 v30, 0x0

    move/from16 v26, v14

    const/16 v38, 0x0

    move-object v14, v10

    move-object/from16 v49, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v35

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move/from16 v21, v3

    move/from16 v22, v1

    move/from16 v23, v42

    move/from16 v24, v39

    move-object/from16 v31, p1

    :try_start_11
    invoke-direct/range {v14 .. v31}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1b
    .catchall {:try_start_11 .. :try_end_11} :catchall_19

    :try_start_12
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a
    .catchall {:try_start_12 .. :try_end_12} :catchall_18

    const/16 v15, 0x15

    if-ge v14, v15, :cond_f

    :try_start_13
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v0

    move/from16 v19, v1

    move/from16 v17, v2

    move-object v1, v6

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v12, v55

    const/4 v15, -0x5

    :goto_d
    move-object v2, v0

    goto/16 :goto_3f

    :catch_3
    move-exception v0

    move/from16 v19, v1

    move/from16 v17, v2

    move-object v1, v6

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v14, v38

    move-object/from16 v12, v55

    const/4 v15, -0x5

    :goto_e
    move-object v2, v0

    goto/16 :goto_41

    :cond_f
    move-object/from16 v14, v38

    :goto_f
    :try_start_14
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1a
    .catchall {:try_start_14 .. :try_end_14} :catchall_18

    if-eqz v7, :cond_10

    :try_start_15
    new-instance v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    new-instance v15, Landroid/media/MediaMuxer;

    move-object/from16 v16, v14

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move/from16 v17, v2

    const/4 v2, 0x1

    :try_start_16
    invoke-direct {v15, v14, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    invoke-direct {v7, v15}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;-><init>(Landroid/media/MediaMuxer;)V

    iput-object v7, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object/from16 v18, v6

    goto :goto_16

    :catchall_4
    move-exception v0

    :goto_10
    move-object v2, v0

    move/from16 v19, v1

    move-object v1, v6

    move-object v5, v9

    move-object/from16 v30, v10

    :goto_11
    move-object/from16 v12, v55

    :goto_12
    const/4 v15, -0x5

    goto/16 :goto_3f

    :catch_4
    move-exception v0

    :goto_13
    move-object v2, v0

    move/from16 v19, v1

    move-object v1, v6

    move-object v5, v9

    move-object/from16 v30, v10

    :goto_14
    move-object/from16 v14, v38

    move-object/from16 v12, v55

    :goto_15
    const/4 v15, -0x5

    goto/16 :goto_41

    :catchall_5
    move-exception v0

    move/from16 v17, v2

    goto :goto_10

    :catch_5
    move-exception v0

    move/from16 v17, v2

    goto :goto_13

    :cond_10
    move/from16 v17, v2

    move-object/from16 v16, v14

    :try_start_17
    new-instance v2, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v2}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    move-object/from16 v7, v33

    :try_start_18
    invoke-virtual {v2, v7}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    new-instance v14, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    new-instance v15, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v15}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_19
    .catchall {:try_start_18 .. :try_end_18} :catchall_17

    move-object/from16 v33, v7

    :try_start_19
    iget-object v7, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_18
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    move-object/from16 v18, v6

    move/from16 v6, v32

    :try_start_1a
    invoke-virtual {v15, v2, v6, v7}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v2

    invoke-direct {v14, v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;-><init>(Lorg/telegram/messenger/video/MP4Builder;)V

    iput-object v14, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    :goto_16
    iget-object v2, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_17
    .catchall {:try_start_1a .. :try_end_1a} :catchall_15

    if-nez v2, :cond_11

    :try_start_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;

    invoke-direct {v6, v4, v5}, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v6, v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v14, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v14, v2, v4, v5}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :try_start_1c
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    iget-object v4, v14, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    move v5, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_17
    const-wide/16 v6, 0x0

    const/4 v15, -0x5

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    goto :goto_18

    :catchall_6
    move-exception v0

    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v1, v18

    goto/16 :goto_11

    :catch_6
    move-exception v0

    move-object v2, v0

    move v15, v3

    move-object/from16 v30, v10

    move-object v3, v14

    move-object/from16 v12, v55

    const/4 v5, -0x5

    move v14, v1

    move-object/from16 v1, v18

    goto/16 :goto_52

    :catch_7
    move-exception v0

    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v1, v18

    goto/16 :goto_14

    :cond_11
    move-object/from16 v14, v38

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto :goto_17

    :goto_18
    if-eqz v19, :cond_13

    if-nez v2, :cond_12

    goto :goto_19

    :cond_12
    move v2, v1

    move v4, v3

    move-object v3, v14

    move/from16 v7, v17

    move-object/from16 v1, v18

    move/from16 v6, v37

    move-object/from16 v8, v54

    move-object/from16 v12, v55

    const/4 v5, 0x0

    const/16 v47, 0x0

    move-object v14, v10

    goto/16 :goto_54

    :cond_13
    :goto_19
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_16
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    if-eqz v14, :cond_14

    :try_start_1e
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v14, v2, v5}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;I)Z

    move-result v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    goto :goto_1a

    :catchall_7
    move-exception v0

    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v1, v18

    move-object/from16 v12, v55

    goto/16 :goto_3f

    :catch_8
    move-exception v0

    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v1, v18

    move-object/from16 v12, v55

    goto/16 :goto_41

    :cond_14
    :goto_1a
    xor-int/lit8 v23, v4, 0x1

    const/16 v24, 0x1

    move/from16 v91, v21

    move/from16 v21, v2

    move/from16 v2, v91

    :goto_1b
    if-nez v23, :cond_16

    if-eqz v24, :cond_15

    goto :goto_1c

    :cond_15
    move/from16 v91, v21

    move/from16 v21, v2

    move/from16 v2, v91

    goto :goto_18

    :cond_16
    :goto_1c
    :try_start_1f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_16
    .catchall {:try_start_1f .. :try_end_1f} :catchall_14

    if-eqz p2, :cond_17

    const-wide/16 v25, 0x55f0

    move-object/from16 v12, v55

    move-wide/from16 v91, v25

    move/from16 v26, v4

    move/from16 v25, v5

    move-wide/from16 v4, v91

    goto :goto_1d

    :cond_17
    move/from16 v26, v4

    move/from16 v25, v5

    move-object/from16 v12, v55

    const-wide/16 v4, 0x9c4

    :goto_1d
    :try_start_20
    invoke-virtual {v9, v12, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_15
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v32, v11

    move-object/from16 v27, v14

    move-object/from16 v11, v56

    move-object/from16 v14, v57

    const/16 v24, 0x0

    :goto_1e
    move v9, v4

    :goto_1f
    const/4 v4, -0x1

    move/from16 v91, v19

    move/from16 v19, v2

    move/from16 v2, v91

    goto/16 :goto_34

    :cond_18
    const/4 v5, -0x3

    if-ne v4, v5, :cond_1b

    :try_start_21
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    move-object/from16 v27, v14

    const/16 v14, 0x15

    if-ge v5, v14, :cond_19

    :try_start_22
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v32, v11

    move-object/from16 v11, v56

    move-object/from16 v14, v57

    goto :goto_1e

    :catchall_8
    move-exception v0

    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    :goto_20
    move-object/from16 v1, v18

    goto/16 :goto_3f

    :catch_9
    move-exception v0

    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    :goto_21
    move-object/from16 v1, v18

    :goto_22
    move-object/from16 v14, v27

    goto/16 :goto_41

    :cond_19
    move-object/from16 v30, v10

    :cond_1a
    move-object/from16 v32, v11

    move-object/from16 v11, v56

    move-object/from16 v14, v57

    goto/16 :goto_29

    :catch_a
    move-exception v0

    move-object/from16 v27, v14

    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v1, v18

    goto/16 :goto_41

    :cond_1b
    move-object/from16 v27, v14

    const/4 v5, -0x2

    if-ne v4, v5, :cond_20

    :try_start_23
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v14, :cond_1c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    move-object/from16 v30, v10

    :try_start_24
    const-string v10, "photo encoder new format "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :goto_23
    const/4 v10, -0x5

    goto :goto_26

    :catchall_9
    move-exception v0

    :goto_24
    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    goto :goto_20

    :catch_b
    move-exception v0

    :goto_25
    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    goto :goto_21

    :catchall_a
    move-exception v0

    move-object/from16 v30, v10

    goto :goto_24

    :catch_c
    move-exception v0

    move-object/from16 v30, v10

    goto :goto_25

    :cond_1c
    move-object/from16 v30, v10

    goto :goto_23

    :goto_26
    if-ne v15, v10, :cond_1a

    if-eqz v5, :cond_1a

    iget-object v10, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    const/4 v14, 0x0

    invoke-virtual {v10, v5, v14}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v10
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_b
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    :try_start_25
    invoke-virtual {v5, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1f

    invoke-virtual {v5, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1f

    move-object/from16 v14, v57

    invoke-virtual {v5, v14}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v15

    move-object/from16 v32, v11

    move-object/from16 v11, v56

    invoke-virtual {v5, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-nez v15, :cond_1d

    const/4 v15, 0x0

    goto :goto_27

    :cond_1d
    invoke-virtual {v15}, Ljava/nio/Buffer;->limit()I

    move-result v15

    :goto_27
    if-nez v5, :cond_1e

    const/4 v5, 0x0

    goto :goto_28

    :cond_1e
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_d
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    :goto_28
    add-int/2addr v15, v5

    move-object v5, v9

    move/from16 v20, v15

    move v9, v4

    move v15, v10

    goto/16 :goto_1f

    :catchall_b
    move-exception v0

    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    move v15, v10

    goto/16 :goto_20

    :catch_d
    move-exception v0

    move-object v2, v0

    move/from16 v19, v1

    move-object v5, v9

    move v15, v10

    goto/16 :goto_21

    :cond_1f
    move-object/from16 v32, v11

    move-object/from16 v11, v56

    move-object/from16 v14, v57

    move-object v5, v9

    move v15, v10

    goto/16 :goto_1e

    :goto_29
    move-object v5, v9

    goto/16 :goto_1e

    :cond_20
    move-object/from16 v30, v10

    move-object/from16 v32, v11

    move-object/from16 v11, v56

    move-object/from16 v14, v57

    if-ltz v4, :cond_32

    :try_start_26
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_14
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    const/16 v10, 0x15

    if-ge v5, v10, :cond_21

    :try_start_27
    aget-object v5, v16, v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_b
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    goto :goto_2a

    :cond_21
    :try_start_28
    invoke-static {v9, v4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    :goto_2a
    if-eqz v5, :cond_31

    iget v10, v12, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    move/from16 v19, v2

    const/4 v2, 0x1

    if-le v10, v2, :cond_2b

    :try_start_29
    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_f
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    and-int/lit8 v28, v2, 0x2

    if-nez v28, :cond_25

    if-eqz v20, :cond_22

    and-int/lit8 v28, v2, 0x1

    if-eqz v28, :cond_22

    move/from16 v28, v4

    :try_start_2a
    iget v4, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v4, v4, v20

    iput v4, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v10, v10, v20

    iput v10, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2b

    :cond_22
    move/from16 v28, v4

    :goto_2b
    if-eqz v22, :cond_23

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_23

    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v2, v5, v12}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_b
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    const/16 v22, 0x0

    :cond_23
    :try_start_2b
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_f
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    move-object/from16 v31, v9

    const/4 v4, 0x1

    :try_start_2c
    invoke-virtual {v2, v15, v5, v12, v4}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    cmp-long v2, v9, v4

    if-eqz v2, :cond_2c

    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v2, :cond_2c

    iget-wide v4, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v29, v4, v6

    if-lez v29, :cond_24

    move-wide v6, v4

    :cond_24
    long-to-float v4, v6

    div-float v4, v4, v52

    div-float v4, v4, v52

    div-float v4, v4, v60

    invoke-interface {v2, v9, v10, v4}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    goto/16 :goto_31

    :catchall_c
    move-exception v0

    :goto_2c
    move-object v2, v0

    move/from16 v19, v1

    move-object/from16 v1, v18

    move-object/from16 v5, v31

    goto/16 :goto_3f

    :catch_e
    move-exception v0

    :goto_2d
    move-object v2, v0

    move/from16 v19, v1

    move-object/from16 v1, v18

    move-object/from16 v14, v27

    move-object/from16 v5, v31

    goto/16 :goto_41

    :catchall_d
    move-exception v0

    move-object/from16 v31, v9

    goto :goto_2c

    :catch_f
    move-exception v0

    move-object/from16 v31, v9

    goto :goto_2d

    :cond_25
    move/from16 v28, v4

    move-object/from16 v31, v9

    const/4 v4, -0x5

    if-ne v15, v4, :cond_2a

    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v9, v2, [B

    iget v10, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v10, v2

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    :goto_2e
    if-ltz v2, :cond_27

    const/4 v10, 0x3

    if-le v2, v10, :cond_27

    aget-byte v4, v9, v2

    if-ne v4, v5, :cond_26

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v9, v4

    if-nez v4, :cond_26

    add-int/lit8 v4, v2, -0x2

    aget-byte v4, v9, v4

    if-nez v4, :cond_26

    add-int/lit8 v4, v2, -0x3

    aget-byte v5, v9, v4

    if-nez v5, :cond_26

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v5, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-wide/from16 v50, v6

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v6, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v6, v4

    invoke-virtual {v5, v9, v4, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2f

    :cond_26
    move-wide/from16 v50, v6

    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v6, v50

    const/4 v4, -0x5

    const/4 v5, 0x1

    goto :goto_2e

    :cond_27
    move-wide/from16 v50, v6

    move-object/from16 v2, v38

    move-object v5, v2

    :goto_2f
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v4, v3, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    if-eqz v2, :cond_28

    if-eqz v5, :cond_28

    invoke-virtual {v4, v14, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v4, v11, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_28
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v15

    :goto_30
    move-wide/from16 v6, v50

    goto :goto_31

    :cond_29
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "unsupported!!"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_e
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    :cond_2a
    move-wide/from16 v50, v6

    goto :goto_30

    :cond_2b
    move/from16 v28, v4

    move-wide/from16 v50, v6

    move-object/from16 v31, v9

    goto :goto_30

    :cond_2c
    :goto_31
    :try_start_2d
    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_13
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    and-int/lit8 v2, v2, 0x4

    move/from16 v9, v28

    move-object/from16 v5, v31

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    :goto_32
    const/4 v4, 0x0

    goto :goto_33

    :cond_2d
    const/4 v2, 0x0

    goto :goto_32

    :goto_33
    :try_start_2e
    invoke-virtual {v5, v9, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_12
    .catchall {:try_start_2e .. :try_end_2e} :catchall_10

    const/4 v4, -0x1

    :goto_34
    if-eq v9, v4, :cond_2f

    :cond_2e
    move/from16 v4, v19

    move/from16 v19, v1

    move-object/from16 v1, v18

    goto :goto_36

    :cond_2f
    if-nez v26, :cond_2e

    move/from16 v4, v19

    int-to-float v9, v4

    const/high16 v10, 0x41f00000    # 30.0f

    div-float/2addr v9, v10

    mul-float v9, v9, v52

    mul-float v9, v9, v52

    mul-float v9, v9, v52

    float-to-long v9, v9

    move/from16 v19, v1

    move-object/from16 v1, v30

    :try_start_2f
    invoke-virtual {v1, v9, v10}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(J)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_11
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    move-object/from16 v30, v1

    move-object/from16 v1, v18

    :try_start_30
    invoke-virtual {v1, v9, v10}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    invoke-virtual {v1}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    add-int/lit8 v4, v4, 0x1

    int-to-float v9, v4

    const/high16 v10, 0x41f00000    # 30.0f

    mul-float v10, v10, v60

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_30

    invoke-virtual {v5}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move-object/from16 v18, v1

    move-object v9, v5

    move-object/from16 v56, v11

    move-object/from16 v55, v12

    move-object/from16 v57, v14

    move/from16 v1, v19

    move/from16 v5, v25

    move-object/from16 v14, v27

    move-object/from16 v10, v30

    move-object/from16 v11, v32

    const/16 v23, 0x0

    move-object/from16 v12, p1

    move/from16 v19, v2

    move v2, v4

    const/4 v4, 0x1

    goto/16 :goto_1b

    :catchall_e
    move-exception v0

    goto/16 :goto_d

    :catch_10
    move-exception v0

    :goto_35
    move-object v2, v0

    goto/16 :goto_22

    :cond_30
    :goto_36
    move-object/from16 v18, v1

    move-object v9, v5

    move-object/from16 v56, v11

    move-object/from16 v55, v12

    move-object/from16 v57, v14

    move/from16 v1, v19

    move/from16 v5, v25

    move-object/from16 v14, v27

    move-object/from16 v10, v30

    move-object/from16 v11, v32

    move-object/from16 v12, p1

    move/from16 v19, v2

    move v2, v4

    move/from16 v4, v26

    goto/16 :goto_1b

    :catchall_f
    move-exception v0

    move-object/from16 v30, v1

    :goto_37
    move-object/from16 v1, v18

    goto/16 :goto_d

    :catch_11
    move-exception v0

    move-object/from16 v30, v1

    :goto_38
    move-object/from16 v1, v18

    goto :goto_35

    :catchall_10
    move-exception v0

    move/from16 v19, v1

    goto :goto_37

    :catch_12
    move-exception v0

    move/from16 v19, v1

    goto :goto_38

    :catchall_11
    move-exception v0

    move/from16 v19, v1

    move-object/from16 v1, v18

    move-object/from16 v5, v31

    goto/16 :goto_d

    :catch_13
    move-exception v0

    move/from16 v19, v1

    move-object/from16 v1, v18

    move-object/from16 v5, v31

    goto :goto_35

    :catchall_12
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    goto :goto_37

    :catch_14
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    goto :goto_38

    :cond_31
    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v1, v18

    move v9, v4

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoderOutputBuffer "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " was null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_32
    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v1, v18

    move v9, v4

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_10
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    :catchall_13
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    goto :goto_37

    :catch_15
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v27, v14

    move-object/from16 v1, v18

    goto/16 :goto_e

    :catchall_14
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v1, v18

    move-object/from16 v12, v55

    goto/16 :goto_d

    :catch_16
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v27, v14

    move-object/from16 v1, v18

    move-object/from16 v12, v55

    goto/16 :goto_e

    :catchall_15
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v1, v18

    :goto_39
    move-object/from16 v12, v55

    move-object v2, v0

    goto/16 :goto_12

    :catch_17
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v30, v10

    move-object/from16 v1, v18

    :goto_3a
    move-object/from16 v12, v55

    move-object v2, v0

    move-object/from16 v14, v38

    goto/16 :goto_15

    :catchall_16
    move-exception v0

    move/from16 v19, v1

    :goto_3b
    move-object v1, v6

    :goto_3c
    move-object v5, v9

    move-object/from16 v30, v10

    goto :goto_39

    :catch_18
    move-exception v0

    move/from16 v19, v1

    :goto_3d
    move-object v1, v6

    :goto_3e
    move-object v5, v9

    move-object/from16 v30, v10

    goto :goto_3a

    :catchall_17
    move-exception v0

    move/from16 v19, v1

    move-object v1, v6

    move-object/from16 v33, v7

    goto :goto_3c

    :catch_19
    move-exception v0

    move/from16 v19, v1

    move-object v1, v6

    move-object/from16 v33, v7

    goto :goto_3e

    :catchall_18
    move-exception v0

    move/from16 v19, v1

    move/from16 v17, v2

    goto :goto_3b

    :catch_1a
    move-exception v0

    move/from16 v19, v1

    move/from16 v17, v2

    goto :goto_3d

    :goto_3f
    move-object/from16 v66, v1

    move-object v1, v2

    move-object v11, v5

    move v4, v15

    move/from16 v2, v17

    move/from16 v14, v19

    move-object/from16 v5, v30

    move/from16 v67, v34

    move/from16 v6, v37

    move-object/from16 v27, v49

    move-object/from16 v10, v54

    const/16 v16, 0x0

    move-object v15, v12

    move-object/from16 v34, v33

    move-object/from16 v49, v38

    move v12, v3

    :goto_40
    move/from16 v3, p2

    goto/16 :goto_129

    :goto_41
    move-object v9, v5

    move v5, v15

    move v15, v3

    move-object v3, v14

    move/from16 v14, v19

    goto/16 :goto_52

    :catchall_19
    move-exception v0

    move/from16 v19, v1

    move/from16 v17, v2

    move-object v1, v6

    move-object v5, v9

    move-object/from16 v12, v55

    :goto_42
    move-object v2, v0

    goto :goto_44

    :catch_1b
    move-exception v0

    move/from16 v19, v1

    move/from16 v17, v2

    move-object v1, v6

    move-object v5, v9

    move-object/from16 v12, v55

    :goto_43
    move-object v2, v0

    goto :goto_45

    :catchall_1a
    move-exception v0

    move/from16 v19, v1

    move-object v1, v6

    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    move-object/from16 v38, v14

    goto :goto_42

    :catch_1c
    move-exception v0

    move/from16 v19, v1

    move-object v1, v6

    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    move-object/from16 v38, v14

    goto :goto_43

    :goto_44
    move-object/from16 v66, v1

    move-object v1, v2

    move-object v11, v5

    move-object v15, v12

    move/from16 v2, v17

    move/from16 v14, v19

    move/from16 v67, v34

    move/from16 v6, v37

    move-object/from16 v5, v38

    move-object/from16 v27, v49

    move-object/from16 v10, v54

    const/4 v4, -0x5

    const/16 v16, 0x0

    move v12, v3

    move-object/from16 v34, v33

    move-object/from16 v49, v5

    goto :goto_40

    :goto_45
    move v15, v3

    move-object v9, v5

    move/from16 v14, v19

    move-object/from16 v3, v38

    :goto_46
    move-object/from16 v30, v3

    const/4 v5, -0x5

    goto/16 :goto_52

    :catchall_1b
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    move-object/from16 v38, v14

    :goto_47
    move-object v1, v0

    move-object v11, v5

    move-object v15, v12

    move/from16 v2, v17

    move/from16 v14, v19

    move/from16 v67, v34

    move/from16 v47, v36

    move/from16 v6, v37

    :goto_48
    move-object/from16 v29, v38

    move-object/from16 v66, v29

    move-object/from16 v10, v54

    const/4 v5, 0x0

    :goto_49
    const/16 v65, -0x5

    move/from16 v19, v3

    move-object/from16 v34, v33

    move/from16 v3, p2

    goto/16 :goto_128

    :catch_1d
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    move-object/from16 v38, v14

    :goto_4a
    move-object v2, v0

    move v15, v3

    move/from16 v14, v19

    goto/16 :goto_51

    :catchall_1c
    move-exception v0

    move/from16 v19, v1

    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    goto :goto_47

    :catch_1e
    move-exception v0

    move/from16 v19, v1

    :goto_4b
    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    goto :goto_4a

    :catchall_1d
    move-exception v0

    move/from16 v19, v1

    move/from16 v37, v6

    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    move-object v1, v0

    move-object v11, v5

    move-object v15, v12

    move/from16 v2, v17

    move/from16 v14, v19

    move/from16 v67, v34

    move/from16 v47, v36

    goto :goto_48

    :catch_1f
    move-exception v0

    move/from16 v19, v1

    move/from16 v37, v6

    goto :goto_4b

    :catchall_1e
    move-exception v0

    move/from16 v19, v1

    move/from16 v37, v6

    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    move-object v1, v0

    move-object v11, v5

    move-object v15, v12

    move/from16 v2, v17

    move/from16 v14, v19

    move/from16 v67, v34

    move-object/from16 v29, v38

    move-object/from16 v66, v29

    :goto_4c
    move-object/from16 v10, v54

    const/4 v5, 0x0

    const/16 v47, 0x0

    goto :goto_49

    :catch_20
    move-exception v0

    move/from16 v19, v1

    move/from16 v37, v6

    move-object v5, v9

    move-object/from16 v49, v15

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    move-object v2, v0

    move v15, v3

    move/from16 v14, v19

    :goto_4d
    const/16 v36, 0x0

    goto/16 :goto_51

    :catchall_1f
    move-exception v0

    move/from16 v19, v1

    move/from16 v37, v6

    move-object v5, v9

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    move-object v1, v0

    move-object v11, v5

    move-object v15, v12

    move/from16 v2, v17

    move/from16 v14, v19

    move/from16 v67, v34

    move-object/from16 v29, v38

    :goto_4e
    move-object/from16 v49, v29

    move-object/from16 v66, v49

    goto :goto_4c

    :catch_21
    move-exception v0

    move/from16 v19, v1

    move/from16 v37, v6

    move-object v5, v9

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    move-object v2, v0

    move v15, v3

    move/from16 v14, v19

    move-object/from16 v49, v38

    goto :goto_4d

    :catchall_20
    move-exception v0

    move/from16 v19, v1

    move/from16 v37, v6

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    move-object v1, v0

    move-object v15, v12

    move/from16 v2, v17

    move/from16 v14, v19

    move/from16 v67, v34

    move-object/from16 v11, v38

    move-object/from16 v29, v11

    goto :goto_4e

    :catch_22
    move-exception v0

    move/from16 v19, v1

    move/from16 v37, v6

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    move-object v2, v0

    move v15, v3

    move/from16 v14, v19

    :goto_4f
    move-object/from16 v9, v38

    move-object/from16 v49, v9

    goto :goto_4d

    :catchall_21
    move-exception v0

    move/from16 v37, v6

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    move/from16 v3, p2

    move-object v1, v0

    move/from16 v19, v15

    move/from16 v2, v17

    move/from16 v67, v34

    move-object/from16 v11, v38

    move-object/from16 v29, v11

    move-object/from16 v49, v29

    move-object/from16 v66, v49

    move-object/from16 v10, v54

    const/4 v5, 0x0

    const/16 v47, 0x0

    const/16 v65, -0x5

    :goto_50
    move-object v15, v12

    goto/16 :goto_5

    :catch_23
    move-exception v0

    move/from16 v37, v6

    move/from16 v17, v38

    move-object/from16 v12, v55

    const/16 v38, 0x0

    move-object v2, v0

    goto :goto_4f

    :goto_51
    move-object/from16 v1, v38

    move-object v3, v1

    goto/16 :goto_46

    :goto_52
    :try_start_31
    instance-of v4, v2, Ljava/lang/IllegalStateException;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_27

    if-eqz v4, :cond_33

    if-nez p2, :cond_33

    const/16 v47, 0x1

    goto :goto_53

    :cond_33
    const/16 v47, 0x0

    :goto_53
    :try_start_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitrate: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_26

    move/from16 v6, v37

    :try_start_33
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " framerate: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_25

    move/from16 v7, v17

    :try_start_34
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " size: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_24

    move-object/from16 v8, v54

    :try_start_35
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_23

    move v2, v14

    move v4, v15

    move-object/from16 v14, v30

    move v15, v5

    const/4 v5, 0x1

    :goto_54
    if-eqz v14, :cond_34

    :try_start_36
    invoke-virtual {v14}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    move-object/from16 v14, v38

    goto :goto_57

    :catchall_22
    move-exception v0

    move/from16 v3, p2

    move-object/from16 v66, v1

    move/from16 v19, v4

    move-object v10, v8

    move-object v11, v9

    move-object/from16 v29, v14

    move/from16 v65, v15

    move/from16 v67, v34

    move/from16 v5, v47

    move-object v1, v0

    move v14, v2

    move v2, v7

    :goto_55
    move-object v15, v12

    move-object/from16 v34, v33

    :goto_56
    move/from16 v47, v36

    goto/16 :goto_128

    :cond_34
    :goto_57
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lorg/telegram/messenger/video/InputSurface;->release()V

    move-object/from16 v1, v38

    :cond_35
    if-eqz v9, :cond_36

    invoke-virtual {v9}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    move-object/from16 v9, v38

    :cond_36
    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lorg/telegram/messenger/video/AudioRecoder;->release()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_22

    :cond_37
    move/from16 v3, p2

    move-object v10, v8

    move/from16 v31, v15

    move/from16 v67, v34

    move-object v15, v12

    move-object/from16 v34, v33

    move v12, v4

    move v4, v2

    move v2, v7

    goto/16 :goto_121

    :catchall_23
    move-exception v0

    :goto_58
    move/from16 v3, p2

    move-object/from16 v66, v1

    move/from16 v65, v5

    move v2, v7

    move-object v10, v8

    move-object v11, v9

    move/from16 v19, v15

    move-object/from16 v29, v30

    move/from16 v67, v34

    move/from16 v5, v47

    move-object v1, v0

    goto :goto_55

    :catchall_24
    move-exception v0

    :goto_59
    move-object/from16 v8, v54

    goto :goto_58

    :catchall_25
    move-exception v0

    move/from16 v7, v17

    goto :goto_59

    :catchall_26
    move-exception v0

    move/from16 v7, v17

    move/from16 v6, v37

    goto :goto_59

    :catchall_27
    move-exception v0

    move/from16 v7, v17

    move/from16 v6, v37

    move-object/from16 v8, v54

    move/from16 v3, p2

    move-object/from16 v66, v1

    move/from16 v65, v5

    move v2, v7

    move-object v10, v8

    move-object v11, v9

    move/from16 v19, v15

    move-object/from16 v29, v30

    move/from16 v67, v34

    move/from16 v47, v36

    const/4 v5, 0x0

    move-object v1, v0

    goto/16 :goto_50

    :cond_38
    move/from16 v60, v3

    move v4, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    move/from16 v6, v32

    move-object/from16 v5, v33

    move/from16 v24, v38

    move-object/from16 v12, v55

    move-object/from16 v61, v57

    const/16 v30, 0x3

    const/16 v38, 0x0

    move-object/from16 v32, v11

    move-object/from16 v11, v56

    :try_start_37
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v33, v8

    move-object/from16 v8, v35

    invoke-virtual {v3, v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v35, v7

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_6e

    const/4 v7, -0x1

    if-eq v4, v7, :cond_39

    if-nez v26, :cond_39

    const/4 v7, 0x0

    cmpl-float v7, v37, v7

    if-lez v7, :cond_39

    :try_start_38
    iget-object v7, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_29

    move-object/from16 v48, v8

    const/4 v8, 0x1

    :try_start_39
    invoke-static {v7, v8}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_28

    goto :goto_5b

    :catchall_28
    move-exception v0

    :goto_5a
    move/from16 v3, p2

    move-object v1, v0

    move v6, v4

    move/from16 v19, v15

    move/from16 v2, v24

    move/from16 v67, v34

    move-object/from16 v11, v38

    move-object/from16 v29, v11

    move-object/from16 v49, v29

    move-object/from16 v66, v49

    move-object/from16 v10, v54

    const/16 v47, 0x0

    const/16 v65, -0x5

    move-object/from16 v34, v5

    move-object v15, v12

    const/4 v5, 0x0

    goto/16 :goto_128

    :catchall_29
    move-exception v0

    const/4 v8, 0x1

    goto :goto_5a

    :cond_39
    move-object/from16 v48, v8

    const/4 v8, 0x1

    const/4 v7, -0x1

    :goto_5b
    const-string v8, "mime"

    if-ltz v3, :cond_3a

    move/from16 v49, v7

    :try_start_3a
    iget-object v7, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v55, v8

    const-string v8, "video/avc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_28

    if-nez v7, :cond_3b

    const/4 v7, 0x1

    goto :goto_5c

    :cond_3a
    move/from16 v49, v7

    move-object/from16 v55, v8

    :cond_3b
    const/4 v7, 0x0

    :goto_5c
    if-nez v34, :cond_3c

    if-eqz v7, :cond_3d

    :cond_3c
    move-object/from16 v64, v12

    move-wide/from16 v56, v17

    move-wide/from16 v62, v19

    move/from16 v67, v34

    move-object/from16 v68, v54

    move/from16 v17, v4

    move-object/from16 v34, v5

    move/from16 v20, v14

    move/from16 v19, v15

    move/from16 v15, v24

    const/4 v14, 0x0

    goto/16 :goto_64

    :cond_3d
    :try_start_3b
    new-instance v1, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v1}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    invoke-virtual {v1, v15, v14}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    new-instance v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    new-instance v2, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v2}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    invoke-virtual {v2, v1, v6, v7}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;-><init>(Lorg/telegram/messenger/video/MP4Builder;)V

    iput-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2b

    const/4 v1, -0x1

    if-eq v4, v1, :cond_3e

    if-nez v26, :cond_3e

    move-object/from16 v11, v54

    const/16 v16, 0x1

    goto :goto_5d

    :cond_3e
    move-object/from16 v11, v54

    const/16 v16, 0x0

    :goto_5d
    move-object/from16 v1, p0

    move-wide/from16 v56, v17

    move-wide/from16 v62, v19

    move v6, v4

    const/4 v8, -0x5

    move-object v4, v12

    move-object/from16 v18, v5

    move/from16 v17, v6

    move-object/from16 v64, v12

    move/from16 v20, v14

    move/from16 v19, v15

    move/from16 v15, v24

    move-object/from16 v8, v38

    const/4 v7, -0x5

    const/4 v12, 0x0

    const/4 v14, 0x3

    move-wide/from16 v5, v56

    const/4 v14, 0x1

    move-wide/from16 v7, v62

    move/from16 v67, v34

    move-object/from16 v34, v18

    move-object/from16 v68, v11

    move-object/from16 v11, v34

    const/4 v14, 0x0

    move/from16 v12, v16

    :try_start_3c
    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_2a

    move/from16 v3, p2

    move/from16 v6, v17

    move/from16 v12, v19

    move-object/from16 v15, v64

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x5

    const/4 v7, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v49, 0x0

    const/16 v66, 0x0

    goto/16 :goto_122

    :catchall_2a
    move-exception v0

    :goto_5e
    move/from16 v3, p2

    move-object v1, v0

    move v2, v15

    move/from16 v6, v17

    :goto_5f
    move/from16 v14, v20

    move-object/from16 v15, v64

    :goto_60
    move-object/from16 v10, v68

    :goto_61
    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_62
    const/16 v29, 0x0

    const/16 v38, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    :goto_63
    const/16 v65, -0x5

    const/16 v66, 0x0

    goto/16 :goto_128

    :catchall_2b
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v64, v12

    move/from16 v20, v14

    move/from16 v19, v15

    move/from16 v15, v24

    move/from16 v67, v34

    move-object/from16 v68, v54

    const/4 v14, 0x0

    move-object/from16 v34, v5

    goto :goto_5e

    :goto_64
    if-ltz v3, :cond_b8

    const/16 v4, 0x3e8

    :try_start_3d
    div-int/2addr v4, v15

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    const/16 v4, 0x1e

    if-ge v15, v4, :cond_3f

    add-int/lit8 v5, v15, 0x5

    goto :goto_65

    :cond_3f
    add-int/lit8 v5, v15, 0x1

    :goto_65
    const/16 v4, 0x3e8

    div-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iget-object v12, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iget-object v12, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_67
    .catchall {:try_start_3d .. :try_end_3d} :catchall_63

    if-eqz v31, :cond_43

    const/high16 v17, 0x44fa0000    # 2000.0f

    cmpg-float v17, v60, v17

    if-gtz v17, :cond_40

    const v17, 0x27ac40

    goto :goto_66

    :cond_40
    const v17, 0x459c4000    # 5000.0f

    cmpg-float v17, v60, v17

    if-gtz v17, :cond_41

    const v17, 0x2191c0

    goto :goto_66

    :cond_41
    const v17, 0x17cdc0

    :goto_66
    const v14, 0xe4e1c0

    move-wide/from16 v69, v4

    move/from16 v4, v16

    if-lt v4, v14, :cond_42

    :try_start_3e
    const-string v5, "OMX.google.h264.encoder"
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_24
    .catchall {:try_start_3e .. :try_end_3e} :catchall_2a

    move/from16 v14, v17

    :goto_67
    const-wide/16 v50, 0x0

    goto :goto_6b

    :catch_24
    move-exception v0

    move-object v1, v0

    move/from16 v26, v3

    move v2, v15

    move/from16 v6, v17

    :goto_68
    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    :goto_69
    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_6a
    const/16 v47, 0x0

    goto/16 :goto_114

    :cond_42
    move/from16 v14, v17

    const/4 v5, 0x0

    goto :goto_67

    :cond_43
    move-wide/from16 v69, v4

    move/from16 v4, v16

    if-gtz v17, :cond_44

    const/4 v5, 0x0

    const v14, 0xe1000

    goto :goto_6b

    :cond_44
    move/from16 v14, v17

    const/4 v5, 0x0

    :goto_6b
    if-lez v4, :cond_45

    :try_start_3f
    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v14, v4

    goto :goto_6c

    :catchall_2c
    move-exception v0

    move/from16 v3, p2

    move-object v1, v0

    move v6, v14

    move v2, v15

    goto/16 :goto_5f

    :catch_25
    move-exception v0

    move-object v1, v0

    move/from16 v26, v3

    move v6, v14

    move v2, v15

    goto :goto_68

    :cond_45
    :goto_6c
    const-wide/16 v71, -0x1

    const-wide/16 v16, 0x0

    cmp-long v4, v50, v16

    move-wide/from16 v75, v7

    move-wide/from16 v73, v9

    if-ltz v4, :cond_46

    move-wide/from16 v8, v71

    goto :goto_6d

    :cond_46
    move-wide/from16 v8, v50

    :goto_6d
    cmp-long v4, v8, v16

    if-ltz v4, :cond_47

    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x0

    invoke-virtual {v4, v8, v9, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-wide/from16 v50, v8

    :goto_6e
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    goto :goto_6f

    :cond_47
    move-wide/from16 v50, v8

    move-wide/from16 v8, v56

    const-wide/16 v16, 0x0

    cmp-long v4, v8, v16

    if-lez v4, :cond_48

    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x0

    invoke-virtual {v4, v8, v9, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_25
    .catchall {:try_start_3f .. :try_end_3f} :catchall_2c

    move-wide/from16 v56, v8

    goto :goto_6e

    :cond_48
    :try_start_40
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-wide/from16 v56, v8

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_66
    .catchall {:try_start_40 .. :try_end_40} :catchall_62

    :goto_6f
    if-eqz v2, :cond_4b

    :try_start_41
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_4b

    const/16 v4, 0x5a

    move/from16 v10, v25

    if-eq v10, v4, :cond_4a

    const/16 v4, 0x10e

    if-ne v10, v4, :cond_49

    goto :goto_70

    :cond_49
    iget v4, v2, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    iget v7, v2, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    goto :goto_71

    :cond_4a
    :goto_70
    iget v4, v2, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    iget v7, v2, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_25
    .catchall {:try_start_41 .. :try_end_41} :catchall_2c

    :goto_71
    move/from16 v91, v7

    move v7, v4

    move/from16 v4, v91

    goto :goto_72

    :cond_4b
    move/from16 v10, v25

    move/from16 v7, v19

    move/from16 v4, v20

    :goto_72
    if-eqz v5, :cond_4c

    :try_start_42
    invoke-static {v5}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_26
    .catchall {:try_start_42 .. :try_end_42} :catchall_2c

    goto :goto_73

    :catch_26
    nop

    :cond_4c
    const/4 v5, 0x0

    :goto_73
    if-nez v5, :cond_4d

    :try_start_43
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createEncoderForMimeType()Landroid/media/MediaCodec;

    move-result-object v5
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_27
    .catchall {:try_start_43 .. :try_end_43} :catchall_2d

    goto :goto_77

    :catchall_2d
    move-exception v0

    move/from16 v3, p2

    move-object v1, v0

    move-object v11, v5

    move v6, v14

    move v2, v15

    move/from16 v14, v20

    move-object/from16 v15, v64

    :goto_74
    move-object/from16 v10, v68

    const/4 v5, 0x0

    goto/16 :goto_62

    :catch_27
    move-exception v0

    move-object v1, v0

    move/from16 v26, v3

    move-object v11, v5

    move v6, v14

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    :goto_75
    move-object/from16 v15, v64

    :goto_76
    const/4 v5, 0x0

    goto/16 :goto_6a

    :cond_4d
    :goto_77
    :try_start_44
    sget-boolean v16, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_65
    .catchall {:try_start_44 .. :try_end_44} :catchall_61

    if-eqz v16, :cond_4e

    :try_start_45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create encoder with w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bitrate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_27
    .catchall {:try_start_45 .. :try_end_45} :catchall_2d

    :cond_4e
    :try_start_46
    iget-object v8, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v8, v7, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    const-string v9, "color-format"

    move/from16 v38, v6

    const v6, 0x7f000789

    invoke-virtual {v8, v9, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "bitrate"

    invoke-virtual {v8, v6, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_65
    .catchall {:try_start_46 .. :try_end_46} :catchall_61

    if-eqz v31, :cond_4f

    :try_start_47
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v6, v9, :cond_4f

    const-string v6, "bitrate-mode"

    const/4 v9, 0x2

    invoke-virtual {v8, v6, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_27
    .catchall {:try_start_47 .. :try_end_47} :catchall_2d

    :cond_4f
    :try_start_48
    const-string v6, "max-bitrate"

    invoke-virtual {v8, v6, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "frame-rate"

    invoke-virtual {v8, v6, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "i-frame-interval"

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_65
    .catchall {:try_start_48 .. :try_end_48} :catchall_61

    const/16 v6, 0x18

    if-lt v9, v6, :cond_55

    :try_start_49
    const-string v6, "color-transfer"

    invoke-virtual {v12, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_29
    .catchall {:try_start_49 .. :try_end_49} :catchall_2d

    if-eqz v6, :cond_50

    :try_start_4a
    const-string v6, "color-transfer"

    invoke-virtual {v12, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_27
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2d

    move-object/from16 v46, v11

    goto :goto_78

    :cond_50
    move-object/from16 v46, v11

    const/4 v6, 0x0

    :goto_78
    :try_start_4b
    const-string v11, "color-standard"

    invoke-virtual {v12, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_29
    .catchall {:try_start_4b .. :try_end_4b} :catchall_2d

    if-eqz v11, :cond_51

    :try_start_4c
    const-string v11, "color-standard"

    invoke-virtual {v12, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_27
    .catchall {:try_start_4c .. :try_end_4c} :catchall_2d

    move/from16 v54, v3

    goto :goto_79

    :cond_51
    move/from16 v54, v3

    const/4 v11, 0x0

    :goto_79
    :try_start_4d
    const-string v3, "color-range"

    invoke-virtual {v12, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    const-string v3, "color-range"

    invoke-virtual {v12, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    goto :goto_7b

    :catch_28
    move-exception v0

    :goto_7a
    move-object v1, v0

    move-object v11, v5

    move v6, v14

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move/from16 v26, v54

    goto/16 :goto_75

    :cond_52
    const/16 v16, 0x0

    :goto_7b
    const/4 v3, 0x6

    if-eq v6, v3, :cond_53

    const/4 v3, 0x7

    if-ne v6, v3, :cond_54

    :cond_53
    const/4 v3, 0x6

    if-ne v11, v3, :cond_54

    move-object/from16 v77, v12

    move/from16 v3, v16

    const/16 v16, 0x1

    goto :goto_7d

    :cond_54
    move-object/from16 v77, v12

    move/from16 v3, v16

    :goto_7c
    const/16 v16, 0x0

    goto :goto_7d

    :catch_29
    move-exception v0

    move/from16 v54, v3

    goto :goto_7a

    :cond_55
    move/from16 v54, v3

    move-object/from16 v46, v11

    move-object/from16 v77, v12

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto :goto_7c

    :goto_7d
    const/16 v12, 0x17

    if-ge v9, v12, :cond_58

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    move/from16 v78, v4

    const/16 v4, 0x1e0

    if-gt v12, v4, :cond_57

    if-nez v31, :cond_57

    const v4, 0xe1000

    if-le v14, v4, :cond_56

    const v14, 0xe1000

    :cond_56
    const-string v4, "bitrate"

    invoke-virtual {v8, v4, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_28
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2d

    :cond_57
    :goto_7e
    move v12, v14

    goto :goto_7f

    :cond_58
    move/from16 v78, v4

    goto :goto_7e

    :goto_7f
    :try_start_4e
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_64
    .catchall {:try_start_4e .. :try_end_4e} :catchall_60

    :try_start_4f
    const-string v14, "c2.qti.avc.encoder"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v59
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_63
    .catchall {:try_start_4f .. :try_end_4f} :catchall_5f

    :try_start_50
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v79, v7

    const-string v7, "selected encoder "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v14, 0x0

    invoke-virtual {v5, v8, v14, v14, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_62
    .catchall {:try_start_50 .. :try_end_50} :catchall_5e

    move/from16 v43, v12

    :try_start_51
    new-instance v12, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-direct {v12, v7}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_61
    .catchall {:try_start_51 .. :try_end_51} :catchall_5d

    :try_start_52
    invoke-virtual {v12}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_60
    .catchall {:try_start_52 .. :try_end_52} :catchall_5c

    if-nez v27, :cond_5a

    if-eqz v16, :cond_5a

    :try_start_53
    new-instance v7, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v7}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    iput v6, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorTransfer:I

    iput v11, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorStandard:I

    iput v3, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorRange:I

    const/16 v3, 0x18

    if-lt v9, v3, :cond_59

    const-string v3, "color-transfer"
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_2b
    .catchall {:try_start_53 .. :try_end_53} :catchall_2f

    const/4 v6, 0x3

    :try_start_54
    invoke-virtual {v8, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_2a
    .catchall {:try_start_54 .. :try_end_54} :catchall_2e

    goto :goto_82

    :catchall_2e
    move-exception v0

    :goto_80
    move-object v1, v0

    move-object/from16 v27, v4

    move-object v11, v5

    move-object v3, v12

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    goto/16 :goto_10f

    :catch_2a
    move-exception v0

    :goto_81
    move-object v1, v0

    move-object/from16 v27, v4

    move-object v11, v5

    move-object v3, v12

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move/from16 v26, v54

    move-object/from16 v15, v64

    goto/16 :goto_110

    :catchall_2f
    move-exception v0

    const/4 v6, 0x3

    goto :goto_80

    :catch_2b
    move-exception v0

    const/4 v6, 0x3

    goto :goto_81

    :cond_59
    const/4 v6, 0x3

    :goto_82
    move-object v3, v7

    goto :goto_83

    :cond_5a
    const/4 v6, 0x3

    move-object/from16 v3, v27

    :goto_83
    :try_start_55
    new-instance v11, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_60
    .catchall {:try_start_55 .. :try_end_55} :catchall_5c

    int-to-float v7, v15

    const/16 v16, 0x0

    const/16 v27, 0x0

    move-object/from16 v47, v12

    move/from16 v8, v20

    const/4 v6, 0x1

    const/4 v12, 0x0

    move-object v14, v11

    move/from16 v80, v15

    move/from16 v66, v19

    move-object v15, v1

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v2

    move/from16 v21, v66

    move/from16 v22, v8

    move/from16 v23, v42

    move/from16 v24, v39

    move/from16 v25, v10

    move/from16 v26, v7

    move-object/from16 v30, v3

    move-object/from16 v31, p1

    :try_start_56
    invoke-direct/range {v14 .. v31}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZLjava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_5f
    .catchall {:try_start_56 .. :try_end_56} :catchall_5b

    const/16 v1, 0x18

    if-lt v9, v1, :cond_5b

    if-eqz v3, :cond_5b

    :try_start_57
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result v1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_2d
    .catchall {:try_start_57 .. :try_end_57} :catchall_31

    if-eqz v1, :cond_5b

    const/4 v1, 0x1

    move-object v10, v4

    move-wide/from16 v14, v69

    move/from16 v2, v78

    move/from16 v4, v42

    move-object v7, v5

    move/from16 v5, v39

    move/from16 v81, v38

    move/from16 v6, v66

    move-object/from16 v19, v7

    move/from16 v16, v35

    move/from16 v82, v49

    move-wide/from16 v17, v75

    move/from16 v83, v79

    move v7, v8

    move/from16 v20, v8

    move-object/from16 v87, v33

    move-object/from16 v84, v48

    move-object/from16 v88, v55

    move-wide/from16 v85, v56

    move v8, v1

    move v1, v9

    move-wide/from16 v89, v73

    move-object v9, v3

    :try_start_58
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;

    move-result-object v21

    const/4 v8, 0x0

    move/from16 v4, v42

    move/from16 v5, v39

    move/from16 v6, v66

    move/from16 v7, v20

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;

    move-result-object v3
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_2c
    .catchall {:try_start_58 .. :try_end_58} :catchall_30

    move-object v4, v3

    move/from16 v3, v20

    move-object/from16 v5, v21

    goto/16 :goto_90

    :catchall_30
    move-exception v0

    :goto_84
    move-object v1, v0

    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    move/from16 v28, v20

    :goto_85
    move-object/from16 v3, v47

    move-object/from16 v15, v64

    move/from16 v21, v66

    move/from16 v2, v80

    :goto_86
    const/4 v14, 0x0

    :goto_87
    const/16 v65, -0x5

    goto/16 :goto_10b

    :catch_2c
    move-exception v0

    :goto_88
    move-object v1, v0

    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    move/from16 v28, v20

    :goto_89
    move-object/from16 v3, v47

    move/from16 v26, v54

    move-object/from16 v15, v64

    move/from16 v21, v66

    move/from16 v2, v80

    :goto_8a
    const/4 v14, 0x0

    :goto_8b
    const/16 v53, 0x0

    :goto_8c
    const/16 v65, -0x5

    goto/16 :goto_10c

    :cond_5b
    move-object v10, v4

    move-object/from16 v19, v5

    move/from16 v20, v8

    move v1, v9

    move-object/from16 v87, v33

    move/from16 v16, v35

    move/from16 v81, v38

    move-object/from16 v84, v48

    move/from16 v82, v49

    move-object/from16 v88, v55

    move-wide/from16 v85, v56

    move-wide/from16 v14, v69

    move-wide/from16 v89, v73

    move-wide/from16 v17, v75

    move/from16 v2, v78

    move/from16 v83, v79

    goto :goto_8d

    :catchall_31
    move-exception v0

    move-object v10, v4

    move-object/from16 v19, v5

    move/from16 v20, v8

    goto :goto_84

    :catch_2d
    move-exception v0

    move-object v10, v4

    move-object/from16 v19, v5

    move/from16 v20, v8

    goto :goto_88

    :goto_8d
    if-nez v36, :cond_5f

    move/from16 v3, v20

    :try_start_59
    invoke-static {v3, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    move/from16 v8, v39

    move/from16 v9, v42

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const v5, 0x3f666666    # 0.9f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5e

    if-eqz v53, :cond_5c

    const/16 v20, 0x0

    goto :goto_8e

    :cond_5c
    const/16 v20, 0x3

    :goto_8e
    const/16 v21, 0x1

    move v4, v9

    move v5, v8

    move/from16 v6, v66

    move v7, v3

    move/from16 v22, v8

    move/from16 v8, v21

    move/from16 v21, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZI)Ljava/lang/String;

    move-result-object v20

    if-eqz v53, :cond_5d

    const/4 v9, 0x0

    goto :goto_8f

    :cond_5d
    const/4 v9, 0x3

    :goto_8f
    const/4 v8, 0x0

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v66

    move v7, v3

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v20

    :goto_90
    invoke-virtual {v11, v5, v4, v12}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_2e
    .catchall {:try_start_59 .. :try_end_59} :catchall_32

    :cond_5e
    :goto_91
    move-object/from16 v4, v77

    goto :goto_92

    :catchall_32
    move-exception v0

    move-object v1, v0

    move/from16 v28, v3

    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    goto/16 :goto_85

    :catch_2e
    move-exception v0

    move-object v1, v0

    move/from16 v28, v3

    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    goto/16 :goto_89

    :cond_5f
    move/from16 v3, v20

    goto :goto_91

    :goto_92
    :try_start_5a
    invoke-direct {v13, v4}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->getDecoderByFormat(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v5
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_5e
    .catchall {:try_start_5a .. :try_end_5a} :catchall_5a

    :try_start_5b
    invoke-virtual {v11}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_5d
    .catchall {:try_start_5b .. :try_end_5b} :catchall_59

    const/16 v4, 0x15

    if-ge v1, v4, :cond_60

    :try_start_5c
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_2f
    .catchall {:try_start_5c .. :try_end_5c} :catchall_33

    goto :goto_95

    :catchall_33
    move-exception v0

    :goto_93
    move-object v1, v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    move-object/from16 v3, v47

    move-object/from16 v15, v64

    move/from16 v21, v66

    :goto_94
    move/from16 v2, v80

    goto/16 :goto_87

    :catch_2f
    move-exception v0

    move-object v1, v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v53, v7

    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    move-object/from16 v3, v47

    move/from16 v26, v54

    move-object/from16 v15, v64

    move/from16 v21, v66

    move/from16 v2, v80

    goto/16 :goto_8c

    :cond_60
    move-object v1, v7

    move-object v4, v1

    :goto_95
    if-eqz v16, :cond_61

    :try_start_5d
    new-instance v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    new-instance v8, Landroid/media/MediaMuxer;

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_31
    .catchall {:try_start_5d .. :try_end_5d} :catchall_34

    const/4 v7, 0x1

    :try_start_5e
    invoke-direct {v8, v9, v7}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    invoke-direct {v6, v8}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;-><init>(Landroid/media/MediaMuxer;)V

    iput-object v6, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_30
    .catchall {:try_start_5e .. :try_end_5e} :catchall_33

    move-object/from16 v20, v4

    move-object/from16 v27, v10

    move-object/from16 v8, v34

    move/from16 v9, v66

    :goto_96
    move/from16 v7, v82

    goto :goto_99

    :catch_30
    move-exception v0

    :goto_97
    move-object v1, v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    move-object/from16 v3, v47

    move/from16 v26, v54

    move-object/from16 v15, v64

    move/from16 v21, v66

    :goto_98
    move/from16 v2, v80

    goto/16 :goto_8b

    :catchall_34
    move-exception v0

    const/4 v7, 0x1

    goto :goto_93

    :catch_31
    move-exception v0

    const/4 v7, 0x1

    goto :goto_97

    :cond_61
    const/4 v7, 0x1

    :try_start_5f
    new-instance v6, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v6}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_5d
    .catchall {:try_start_5f .. :try_end_5f} :catchall_59

    move-object/from16 v8, v34

    :try_start_60
    invoke-virtual {v6, v8}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    invoke-virtual {v6, v12}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_5c
    .catchall {:try_start_60 .. :try_end_60} :catchall_58

    move/from16 v9, v66

    :try_start_61
    invoke-virtual {v6, v9, v3}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    new-instance v12, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    new-instance v7, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v7}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move-object/from16 v20, v4

    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_5b
    .catchall {:try_start_61 .. :try_end_61} :catchall_57

    move-object/from16 v27, v10

    move-object/from16 v10, v87

    :try_start_62
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move/from16 v10, v81

    invoke-virtual {v7, v6, v10, v4}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v4

    invoke-direct {v12, v4}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;-><init>(Lorg/telegram/messenger/video/MP4Builder;)V

    iput-object v12, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_5a
    .catchall {:try_start_62 .. :try_end_62} :catchall_56

    goto :goto_96

    :goto_99
    if-ltz v7, :cond_6d

    :try_start_63
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v37, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_39
    .catchall {:try_start_63 .. :try_end_63} :catchall_3a

    const v10, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v10

    if-gez v6, :cond_64

    move-object/from16 v6, p1

    :try_start_64
    iget-object v10, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_62

    move-object/from16 v10, v88

    invoke-virtual {v4, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move/from16 v82, v7

    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_63

    goto :goto_9e

    :catchall_35
    move-exception v0

    move-object v1, v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v34, v8

    :goto_9a
    move/from16 v21, v9

    move-object v5, v11

    move-object/from16 v11, v19

    :goto_9b
    move-object/from16 v3, v47

    move-object/from16 v15, v64

    goto/16 :goto_94

    :catch_32
    move-exception v0

    move-object v1, v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v34, v8

    :goto_9c
    move/from16 v21, v9

    move-object v5, v11

    move-object/from16 v11, v19

    :goto_9d
    move-object/from16 v3, v47

    move/from16 v26, v54

    move-object/from16 v15, v64

    goto/16 :goto_98

    :cond_62
    move/from16 v82, v7

    move-object/from16 v10, v88

    :goto_9e
    invoke-virtual {v4, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "audio/mpeg"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_32
    .catchall {:try_start_64 .. :try_end_64} :catchall_35

    if-eqz v7, :cond_65

    :cond_63
    const/4 v7, 0x1

    goto :goto_9f

    :cond_64
    move-object/from16 v6, p1

    move/from16 v82, v7

    move-object/from16 v10, v88

    :cond_65
    const/4 v7, 0x0

    :goto_9f
    :try_start_65
    invoke-virtual {v4, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "audio/unknown"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_66

    const/4 v10, -0x1

    goto :goto_a0

    :cond_66
    move/from16 v10, v82

    :goto_a0
    if-ltz v10, :cond_6c

    if-eqz v7, :cond_69

    iget-object v12, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    move/from16 v21, v7

    const/4 v7, 0x1

    invoke-virtual {v12, v4, v7}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v12

    iget-object v7, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_37
    .catchall {:try_start_65 .. :try_end_65} :catchall_39

    :try_start_66
    const-string v7, "max-input-size"

    invoke-virtual {v4, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_33
    .catchall {:try_start_66 .. :try_end_66} :catchall_35

    goto :goto_a1

    :catch_33
    move-exception v0

    move-object v4, v0

    :try_start_67
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    :goto_a1
    if-gtz v4, :cond_67

    const/high16 v4, 0x10000

    :cond_67
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_37
    .catchall {:try_start_67 .. :try_end_67} :catchall_39

    move/from16 v28, v3

    move/from16 v23, v4

    move-object/from16 v22, v7

    move-object/from16 v34, v8

    move-wide/from16 v7, v85

    const-wide/16 v3, 0x0

    cmp-long v24, v7, v3

    if-lez v24, :cond_68

    :try_start_68
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v8, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_34
    .catchall {:try_start_68 .. :try_end_68} :catchall_36

    move-object/from16 v29, v11

    move/from16 v24, v12

    goto :goto_a2

    :catchall_36
    move-exception v0

    move-object v1, v0

    move-object v14, v5

    goto/16 :goto_9a

    :catch_34
    move-exception v0

    move-object v1, v0

    move-object v14, v5

    goto/16 :goto_9c

    :cond_68
    :try_start_69
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_36
    .catchall {:try_start_69 .. :try_end_69} :catchall_38

    move-object/from16 v29, v11

    move/from16 v24, v12

    const/4 v4, 0x0

    const-wide/16 v11, 0x0

    :try_start_6a
    invoke-virtual {v3, v11, v12, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_a2
    move v11, v10

    move/from16 v10, v21

    move/from16 v3, v24

    const/4 v4, 0x0

    goto/16 :goto_aa

    :catchall_37
    move-exception v0

    :goto_a3
    move-object v1, v0

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    goto/16 :goto_9b

    :catch_35
    move-exception v0

    :goto_a4
    move-object v1, v0

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    goto/16 :goto_9d

    :catchall_38
    move-exception v0

    :goto_a5
    move-object/from16 v29, v11

    goto :goto_a3

    :catch_36
    move-exception v0

    :goto_a6
    move-object/from16 v29, v11

    goto :goto_a4

    :catchall_39
    move-exception v0

    :goto_a7
    move/from16 v28, v3

    move-object/from16 v34, v8

    goto :goto_a5

    :catch_37
    move-exception v0

    :goto_a8
    move/from16 v28, v3

    move-object/from16 v34, v8

    goto :goto_a6

    :cond_69
    move/from16 v28, v3

    move/from16 v21, v7

    move-object/from16 v34, v8

    move-object/from16 v29, v11

    move-wide/from16 v7, v85

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;

    move-object/from16 v11, v84

    invoke-direct {v4, v11, v10}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;-><init>(Ljava/lang/String;I)V

    move-wide/from16 v11, v62

    const-wide/16 v22, 0x0

    cmp-long v24, v11, v22

    if-lez v24, :cond_6a

    invoke-virtual {v4, v11, v12}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setEndTimeUs(J)V

    :cond_6a
    cmp-long v24, v7, v22

    if-lez v24, :cond_6b

    invoke-virtual {v4, v7, v8}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->setStartTimeUs(J)V

    :cond_6b
    move/from16 v22, v10

    move/from16 v10, v37

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/video/audio_input/AudioInput;->setVolume(F)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v4, Lorg/telegram/messenger/video/AudioRecoder;

    move-wide/from16 v62, v11

    move-wide/from16 v10, v89

    invoke-direct {v4, v3, v10, v11}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_35
    .catchall {:try_start_6a .. :try_end_6a} :catchall_37

    :try_start_6b
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    iget-object v10, v4, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v3
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_38
    .catchall {:try_start_6b .. :try_end_6b} :catchall_37

    move/from16 v10, v21

    move/from16 v11, v22

    :goto_a9
    const/16 v22, 0x0

    const/16 v23, 0x0

    goto/16 :goto_aa

    :catch_38
    move-exception v0

    move-object v1, v0

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move/from16 v6, v43

    move/from16 v26, v54

    move-object/from16 v15, v64

    move/from16 v2, v80

    const/4 v5, -0x5

    goto/16 :goto_115

    :cond_6c
    move/from16 v28, v3

    move/from16 v21, v7

    move-object/from16 v34, v8

    move/from16 v22, v10

    move-object/from16 v29, v11

    move-wide/from16 v7, v85

    move/from16 v10, v21

    move/from16 v11, v22

    const/4 v3, -0x5

    const/4 v4, 0x0

    goto :goto_a9

    :catchall_3a
    move-exception v0

    move-object/from16 v6, p1

    goto/16 :goto_a7

    :catch_39
    move-exception v0

    move-object/from16 v6, p1

    goto/16 :goto_a8

    :cond_6d
    move-object/from16 v6, p1

    move/from16 v28, v3

    move/from16 v82, v7

    move-object/from16 v34, v8

    move-object/from16 v29, v11

    move-wide/from16 v7, v85

    move-wide/from16 v10, v89

    :try_start_6c
    iget-object v3, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_59
    .catchall {:try_start_6c .. :try_end_6c} :catchall_55

    if-nez v3, :cond_6e

    :try_start_6d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;

    invoke-direct {v4, v10, v11}, Lorg/telegram/messenger/video/audio_input/BlankAudioInput;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v6, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->applyAudioInputs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v4, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v4, v3, v10, v11}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Ljava/util/ArrayList;J)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_35
    .catchall {:try_start_6d .. :try_end_6d} :catchall_37

    :try_start_6e
    iget-object v3, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    iget-object v10, v4, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v3
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_38
    .catchall {:try_start_6e .. :try_end_6e} :catchall_37

    move/from16 v11, v82

    const/4 v10, 0x0

    goto :goto_a9

    :cond_6e
    move/from16 v11, v82

    const/4 v3, -0x5

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto :goto_a9

    :goto_aa
    if-nez v4, :cond_6f

    const/4 v12, 0x1

    goto :goto_ab

    :cond_6f
    const/4 v12, 0x0

    :goto_ab
    :try_start_6f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_58
    .catchall {:try_start_6f .. :try_end_6f} :catchall_55

    const-wide/32 v24, -0x80000000

    move-object/from16 v48, v20

    move-object/from16 v42, v22

    move-wide/from16 v55, v24

    move-wide/from16 v69, v71

    move-wide/from16 v73, v69

    const/16 v30, 0x0

    const/16 v31, -0x5

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x1

    const-wide/16 v44, 0x0

    move/from16 v20, v12

    move/from16 v12, v23

    :goto_ac
    if-eqz v30, :cond_71

    if-nez v10, :cond_70

    if-nez v20, :cond_70

    goto :goto_ad

    :cond_70
    move/from16 v3, p2

    move v12, v9

    move/from16 v9, v28

    move/from16 v6, v43

    move/from16 v26, v54

    move-object/from16 v15, v64

    move-object/from16 v10, v68

    move/from16 v2, v80

    const/4 v7, 0x0

    const/16 v16, 0x0

    goto/16 :goto_117

    :cond_71
    :goto_ad
    :try_start_70
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_57
    .catchall {:try_start_70 .. :try_end_70} :catchall_54

    if-eqz v4, :cond_72

    :try_start_71
    iget-object v6, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v4, v6, v3}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;I)Z

    move-result v6
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_3a
    .catchall {:try_start_71 .. :try_end_71} :catchall_3b

    goto :goto_b1

    :catchall_3b
    move-exception v0

    move-object v1, v0

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    move/from16 v65, v31

    move-object/from16 v3, v47

    move-object/from16 v15, v64

    :goto_ae
    move/from16 v2, v80

    goto/16 :goto_10b

    :catch_3a
    move-exception v0

    move-object v1, v0

    move-object/from16 v53, v4

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    move/from16 v65, v31

    move-object/from16 v3, v47

    move/from16 v26, v54

    :goto_af
    move-object/from16 v15, v64

    :goto_b0
    move/from16 v2, v80

    goto/16 :goto_10c

    :cond_72
    move/from16 v6, v20

    :goto_b1
    if-nez v36, :cond_81

    move-object/from16 v53, v4

    :try_start_72
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v4
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_3e
    .catchall {:try_start_72 .. :try_end_72} :catchall_3d

    move/from16 v57, v6

    move/from16 v6, v54

    if-ne v4, v6, :cond_76

    move-wide/from16 v75, v14

    const-wide/16 v14, 0x9c4

    :try_start_73
    invoke-virtual {v5, v14, v15}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_75

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-ge v14, v15, :cond_73

    aget-object v14, v1, v4

    goto :goto_b2

    :catch_3b
    move-exception v0

    move-object v1, v0

    move-object v14, v5

    move/from16 v26, v6

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    move/from16 v65, v31

    move-object/from16 v3, v47

    goto :goto_af

    :cond_73
    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v14

    :goto_b2
    iget-object v15, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v54, v1

    const/4 v1, 0x0

    invoke-virtual {v15, v14, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v23

    if-gez v23, :cond_74

    const-wide/16 v24, 0x0

    const/16 v26, 0x4

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v5

    move/from16 v21, v4

    invoke-virtual/range {v20 .. v26}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move v14, v3

    move/from16 v66, v10

    move/from16 v77, v11

    move-object/from16 v15, v64

    const/4 v1, 0x0

    const/16 v36, 0x1

    goto/16 :goto_c2

    :cond_74
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v5

    move/from16 v21, v4

    invoke-virtual/range {v20 .. v26}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_3b
    .catchall {:try_start_73 .. :try_end_73} :catchall_3b

    :goto_b3
    move v14, v3

    move/from16 v66, v10

    move/from16 v77, v11

    move-object/from16 v15, v64

    goto/16 :goto_bf

    :cond_75
    move-object/from16 v54, v1

    goto :goto_b3

    :cond_76
    move-object/from16 v54, v1

    move-wide/from16 v75, v14

    if-eqz v10, :cond_7f

    const/4 v1, -0x1

    if-eq v11, v1, :cond_80

    if-ne v4, v11, :cond_7f

    :try_start_74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_3d
    .catchall {:try_start_74 .. :try_end_74} :catchall_3d

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_78

    :try_start_75
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-static {v4}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)J

    move-result-wide v14

    move/from16 v66, v10

    move/from16 v77, v11

    int-to-long v10, v12

    cmp-long v4, v14, v10

    if-lez v4, :cond_77

    const-wide/16 v10, 0x400

    add-long/2addr v14, v10

    long-to-int v12, v14

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v42
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_3b
    .catchall {:try_start_75 .. :try_end_75} :catchall_3b

    :cond_77
    :goto_b4
    move-object/from16 v4, v42

    goto :goto_b5

    :cond_78
    move/from16 v66, v10

    move/from16 v77, v11

    goto :goto_b4

    :goto_b5
    :try_start_76
    iget-object v10, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_3d
    .catchall {:try_start_76 .. :try_end_76} :catchall_3d

    move-object/from16 v15, v64

    :try_start_77
    iput v10, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v10, 0x15

    if-ge v1, v10, :cond_79

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_ba

    :catchall_3c
    move-exception v0

    :goto_b6
    move-object v1, v0

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    move/from16 v65, v31

    :goto_b7
    move-object/from16 v3, v47

    goto/16 :goto_ae

    :catch_3c
    move-exception v0

    :goto_b8
    move-object v1, v0

    move-object v14, v5

    move/from16 v26, v6

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    move/from16 v65, v31

    :goto_b9
    move-object/from16 v3, v47

    goto/16 :goto_b0

    :cond_79
    :goto_ba
    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v1, :cond_7a

    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iput-wide v10, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_bb

    :cond_7a
    const/4 v1, 0x0

    iput v1, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v36, 0x1

    :goto_bb
    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_7c

    const-wide/16 v10, 0x0

    cmp-long v1, v62, v10

    if-ltz v1, :cond_7b

    iget-wide v10, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v10, v62

    if-gez v1, :cond_7c

    :cond_7b
    const/4 v1, 0x0

    goto :goto_bc

    :cond_7c
    move v14, v3

    move-object/from16 v20, v4

    move/from16 v21, v12

    goto :goto_be

    :goto_bc
    iput v1, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v10, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    iput v10, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v10, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v10, v3, v4, v15, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v10

    const-wide/16 v20, 0x0

    cmp-long v1, v10, v20

    if-eqz v1, :cond_7c

    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v1, :cond_7c

    move v14, v3

    move-object/from16 v20, v4

    iget-wide v3, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v3, v7

    cmp-long v21, v3, v37

    if-lez v21, :cond_7d

    move/from16 v21, v12

    goto :goto_bd

    :cond_7d
    move/from16 v21, v12

    move-wide/from16 v3, v37

    :goto_bd
    long-to-float v12, v3

    div-float v12, v12, v52

    div-float v12, v12, v60

    invoke-interface {v1, v10, v11, v12}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v37, v3

    :goto_be
    move-object/from16 v42, v20

    move/from16 v12, v21

    :cond_7e
    :goto_bf
    const/4 v1, 0x0

    goto :goto_c2

    :catchall_3d
    move-exception v0

    move-object/from16 v15, v64

    goto/16 :goto_b6

    :catch_3d
    move-exception v0

    :goto_c0
    move-object/from16 v15, v64

    goto/16 :goto_b8

    :cond_7f
    move v14, v3

    move/from16 v66, v10

    move/from16 v77, v11

    move-object/from16 v15, v64

    const/4 v1, -0x1

    goto :goto_c1

    :cond_80
    move v14, v3

    move/from16 v66, v10

    move/from16 v77, v11

    move-object/from16 v15, v64

    :goto_c1
    if-ne v4, v1, :cond_7e

    const/4 v1, 0x1

    :goto_c2
    if-eqz v1, :cond_82

    const-wide/16 v3, 0x9c4

    invoke-virtual {v5, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v21

    if-ltz v21, :cond_82

    const-wide/16 v24, 0x0

    const/16 v26, 0x4

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v26}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_3c
    .catchall {:try_start_77 .. :try_end_77} :catchall_3c

    const/16 v36, 0x1

    goto :goto_c3

    :catch_3e
    move-exception v0

    move/from16 v6, v54

    goto :goto_c0

    :cond_81
    move-object/from16 v53, v4

    move/from16 v57, v6

    move/from16 v66, v10

    move/from16 v77, v11

    move-wide/from16 v75, v14

    move/from16 v6, v54

    move-object/from16 v15, v64

    move-object/from16 v54, v1

    move v14, v3

    :cond_82
    :goto_c3
    xor-int/lit8 v1, v33, 0x1

    move/from16 v4, v31

    move-wide/from16 v10, v55

    const/4 v3, 0x1

    :goto_c4
    if-nez v1, :cond_84

    if-eqz v3, :cond_83

    goto :goto_c5

    :cond_83
    move/from16 v31, v4

    move-wide/from16 v55, v10

    move v3, v14

    move-object/from16 v64, v15

    move-object/from16 v4, v53

    move-object/from16 v1, v54

    move/from16 v20, v57

    move/from16 v10, v66

    move-wide/from16 v14, v75

    move/from16 v11, v77

    move/from16 v54, v6

    move-object/from16 v6, p1

    goto/16 :goto_ac

    :cond_84
    :goto_c5
    :try_start_78
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_56
    .catchall {:try_start_78 .. :try_end_78} :catchall_53

    move/from16 v20, v1

    move/from16 v1, p2

    if-eqz v1, :cond_85

    const-wide/16 v21, 0x55f0

    move-wide/from16 v91, v21

    move/from16 v21, v9

    move-wide/from16 v22, v10

    move-object/from16 v11, v19

    move-wide/from16 v9, v91

    goto :goto_c6

    :cond_85
    move/from16 v21, v9

    move-wide/from16 v22, v10

    move-object/from16 v11, v19

    const-wide/16 v9, 0x9c4

    :goto_c6
    :try_start_79
    invoke-virtual {v11, v15, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_54
    .catchall {:try_start_79 .. :try_end_79} :catchall_51

    const/4 v10, -0x1

    if-ne v9, v10, :cond_86

    move/from16 v26, v6

    move v10, v9

    move/from16 v24, v12

    move/from16 v25, v14

    move-object/from16 v12, v61

    move/from16 v3, v83

    const/4 v1, -0x1

    const/4 v6, 0x3

    const/16 v19, 0x0

    :goto_c7
    move-object/from16 v91, v46

    move-object/from16 v46, v5

    move-object/from16 v5, v91

    goto/16 :goto_e0

    :cond_86
    const/4 v10, -0x3

    if-ne v9, v10, :cond_88

    :try_start_7a
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v19, v3

    const/16 v3, 0x15

    if-ge v10, v3, :cond_87

    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v48

    move/from16 v26, v6

    move v10, v9

    move/from16 v24, v12

    move/from16 v25, v14

    move-object/from16 v12, v61

    move/from16 v3, v83

    const/4 v1, -0x1

    const/4 v6, 0x3

    goto :goto_c7

    :catchall_3e
    move-exception v0

    move-object v1, v0

    move/from16 v65, v4

    move-object v14, v5

    :goto_c8
    move-object/from16 v5, v29

    goto/16 :goto_b7

    :catch_3f
    move-exception v0

    move-object v1, v0

    move/from16 v65, v4

    move-object v14, v5

    move/from16 v26, v6

    :goto_c9
    move-object/from16 v5, v29

    goto/16 :goto_b9

    :cond_87
    move/from16 v24, v12

    move-object/from16 v10, v46

    move-object/from16 v12, v61

    goto/16 :goto_d0

    :cond_88
    move/from16 v19, v3

    const/4 v3, -0x2

    if-ne v9, v3, :cond_8d

    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    const/4 v10, -0x5

    if-ne v4, v10, :cond_87

    if-eqz v3, :cond_87

    iget-object v10, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    move/from16 v24, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v3, v12}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v4
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_3f
    .catchall {:try_start_7a .. :try_end_7a} :catchall_3e

    move-object/from16 v10, v32

    :try_start_7b
    invoke-virtual {v3, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8c

    invoke-virtual {v3, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_41
    .catchall {:try_start_7b .. :try_end_7b} :catchall_40

    move/from16 v25, v4

    const/4 v4, 0x1

    if-ne v12, v4, :cond_8b

    move-object/from16 v12, v61

    :try_start_7c
    invoke-virtual {v3, v12}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v32, v10

    move-object/from16 v10, v46

    invoke-virtual {v3, v10}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v4, :cond_89

    const/4 v4, 0x0

    goto :goto_ca

    :cond_89
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v4

    :goto_ca
    if-nez v3, :cond_8a

    const/4 v3, 0x0

    goto :goto_cb

    :cond_8a
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v3
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_40
    .catchall {:try_start_7c .. :try_end_7c} :catchall_3f

    :goto_cb
    add-int v35, v4, v3

    :goto_cc
    move-object/from16 v46, v5

    move/from16 v26, v6

    move-object v5, v10

    move/from16 v4, v25

    move/from16 v3, v83

    const/4 v1, -0x1

    const/4 v6, 0x3

    move v10, v9

    move/from16 v25, v14

    goto/16 :goto_e0

    :catchall_3f
    move-exception v0

    :goto_cd
    move-object v1, v0

    move-object v14, v5

    move/from16 v65, v25

    goto :goto_c8

    :catch_40
    move-exception v0

    :goto_ce
    move-object v1, v0

    move-object v14, v5

    move/from16 v26, v6

    move/from16 v65, v25

    goto :goto_c9

    :cond_8b
    :goto_cf
    move-object/from16 v32, v10

    move-object/from16 v10, v46

    move-object/from16 v12, v61

    goto :goto_cc

    :catchall_40
    move-exception v0

    move/from16 v25, v4

    goto :goto_cd

    :catch_41
    move-exception v0

    move/from16 v25, v4

    goto :goto_ce

    :cond_8c
    move/from16 v25, v4

    goto :goto_cf

    :goto_d0
    move-object/from16 v46, v5

    move/from16 v26, v6

    move-object v5, v10

    move/from16 v25, v14

    move/from16 v3, v83

    const/4 v1, -0x1

    const/4 v6, 0x3

    move v10, v9

    goto/16 :goto_e0

    :cond_8d
    move/from16 v24, v12

    move-object/from16 v10, v46

    move-object/from16 v12, v61

    if-ltz v9, :cond_b4

    :try_start_7d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_54
    .catchall {:try_start_7d .. :try_end_7d} :catchall_51

    move/from16 v25, v14

    const/16 v14, 0x15

    if-ge v3, v14, :cond_8e

    :try_start_7e
    aget-object v3, v48, v9
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_3f
    .catchall {:try_start_7e .. :try_end_7e} :catchall_3e

    goto :goto_d1

    :cond_8e
    :try_start_7f
    invoke-static {v11, v9}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_d1
    if-eqz v3, :cond_b3

    iget v14, v15, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_54
    .catchall {:try_start_7f .. :try_end_7f} :catchall_51

    move/from16 v26, v6

    const/4 v6, 0x1

    if-le v14, v6, :cond_98

    :try_start_80
    iget v6, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_46
    .catchall {:try_start_80 .. :try_end_80} :catchall_44

    and-int/lit8 v30, v6, 0x2

    if-nez v30, :cond_94

    if-eqz v35, :cond_8f

    and-int/lit8 v30, v6, 0x1

    if-eqz v30, :cond_8f

    :try_start_81
    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v1, v1, v35

    iput v1, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v14, v14, v35

    iput v14, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_d2

    :catch_42
    move-exception v0

    move-object v1, v0

    move/from16 v65, v4

    move-object v14, v5

    goto/16 :goto_c9

    :cond_8f
    :goto_d2
    if-eqz v39, :cond_90

    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_90

    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v1, v3, v15}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_42
    .catchall {:try_start_81 .. :try_end_81} :catchall_3e

    const/16 v39, 0x0

    :cond_90
    :try_start_82
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    move/from16 v30, v9

    move-object/from16 v56, v10

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v3, v15, v6}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v78, 0x0

    cmp-long v1, v9, v78

    if-eqz v1, :cond_93

    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_44
    .catchall {:try_start_82 .. :try_end_82} :catchall_42

    if-eqz v1, :cond_93

    move-object/from16 v46, v5

    :try_start_83
    iget-wide v5, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v5, v7

    cmp-long v3, v5, v37

    if-lez v3, :cond_91

    goto :goto_d3

    :cond_91
    move-wide/from16 v5, v37

    :goto_d3
    long-to-float v3, v5

    div-float v3, v3, v52

    div-float v3, v3, v60

    invoke-interface {v1, v9, v10, v3}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_43
    .catchall {:try_start_83 .. :try_end_83} :catchall_41

    move-wide/from16 v37, v5

    :cond_92
    :goto_d4
    move-object/from16 v5, v56

    :goto_d5
    move/from16 v3, v83

    const/4 v6, 0x3

    goto/16 :goto_dd

    :catchall_41
    move-exception v0

    :goto_d6
    move-object v1, v0

    move/from16 v65, v4

    move-object/from16 v5, v29

    move-object/from16 v14, v46

    goto/16 :goto_b7

    :catch_43
    move-exception v0

    :goto_d7
    move-object v1, v0

    move/from16 v65, v4

    move-object/from16 v5, v29

    move-object/from16 v14, v46

    goto/16 :goto_b9

    :cond_93
    move-object/from16 v46, v5

    goto :goto_d4

    :catchall_42
    move-exception v0

    move-object/from16 v46, v5

    goto :goto_d6

    :catch_44
    move-exception v0

    move-object/from16 v46, v5

    goto :goto_d7

    :cond_94
    move-object/from16 v46, v5

    move/from16 v30, v9

    move-object/from16 v56, v10

    const/4 v1, -0x5

    if-ne v4, v1, :cond_92

    :try_start_84
    new-array v1, v14, [B

    iget v5, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v5, v14

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v5, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_84} :catch_45
    .catchall {:try_start_84 .. :try_end_84} :catchall_43

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_d8
    const/4 v6, 0x3

    if-ltz v3, :cond_96

    if-le v3, v6, :cond_96

    :try_start_85
    aget-byte v9, v1, v3

    if-ne v9, v5, :cond_95

    add-int/lit8 v5, v3, -0x1

    aget-byte v5, v1, v5

    if-nez v5, :cond_95

    add-int/lit8 v5, v3, -0x2

    aget-byte v5, v1, v5

    if-nez v5, :cond_95

    add-int/lit8 v5, v3, -0x3

    aget-byte v9, v1, v5

    if-nez v9, :cond_95

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v9, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v9, v5

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v14, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v14, v5

    invoke-virtual {v9, v1, v5, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v5, v3

    goto :goto_d9

    :cond_95
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x1

    goto :goto_d8

    :cond_96
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_d9
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    move/from16 v3, v83

    invoke-static {v1, v3, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    if-eqz v5, :cond_97

    if-eqz v9, :cond_97

    invoke-virtual {v1, v12, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    move-object/from16 v5, v56

    invoke-virtual {v1, v5, v9}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_da

    :cond_97
    move-object/from16 v5, v56

    :goto_da
    iget-object v9, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v1
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_85} :catch_43
    .catchall {:try_start_85 .. :try_end_85} :catchall_41

    move v4, v1

    goto :goto_dd

    :catchall_43
    move-exception v0

    :goto_db
    const/4 v6, 0x3

    goto/16 :goto_d6

    :catch_45
    move-exception v0

    :goto_dc
    const/4 v6, 0x3

    goto/16 :goto_d7

    :catchall_44
    move-exception v0

    move-object/from16 v46, v5

    goto :goto_db

    :catch_46
    move-exception v0

    move-object/from16 v46, v5

    goto :goto_dc

    :cond_98
    move-object/from16 v46, v5

    move/from16 v30, v9

    move-object v5, v10

    goto/16 :goto_d5

    :goto_dd
    :try_start_86
    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    move/from16 v10, v30

    if-eqz v1, :cond_99

    const/4 v1, 0x1

    :goto_de
    const/4 v9, 0x0

    goto :goto_df

    :cond_99
    const/4 v1, 0x0

    goto :goto_de

    :goto_df
    invoke-virtual {v11, v10, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_53
    .catchall {:try_start_86 .. :try_end_86} :catchall_50

    move/from16 v30, v1

    const/4 v1, -0x1

    :goto_e0
    if-eq v10, v1, :cond_9b

    :cond_9a
    move/from16 v78, v2

    move/from16 v83, v3

    move-object/from16 v56, v5

    move-wide/from16 v9, v22

    move-object/from16 v5, v29

    move-object/from16 v14, v46

    move-object/from16 v3, v47

    move/from16 v2, v80

    move/from16 v46, v4

    goto/16 :goto_fc

    :cond_9b
    if-nez v33, :cond_9a

    move-object/from16 v14, v46

    const-wide/16 v9, 0x9c4

    :try_start_87
    invoke-virtual {v14, v15, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_52
    .catchall {:try_start_87 .. :try_end_87} :catchall_4f

    if-ne v6, v1, :cond_9c

    move/from16 v83, v3

    move-object/from16 v46, v5

    move-object/from16 v61, v12

    move-object v5, v14

    move/from16 v3, v19

    move/from16 v9, v21

    move/from16 v12, v24

    move/from16 v14, v25

    move/from16 v6, v26

    const/4 v1, 0x0

    move-object/from16 v19, v11

    move-wide/from16 v10, v22

    goto/16 :goto_c4

    :cond_9c
    const/4 v1, -0x3

    if-ne v6, v1, :cond_9e

    :cond_9d
    :goto_e1
    move/from16 v78, v2

    move/from16 v83, v3

    move/from16 v46, v4

    move-object/from16 v56, v5

    move-wide/from16 v9, v22

    move-object/from16 v5, v29

    move-object/from16 v3, v47

    move/from16 v2, v80

    goto/16 :goto_fc

    :cond_9e
    const/4 v1, -0x2

    if-ne v6, v1, :cond_9f

    :try_start_88
    invoke-virtual {v14}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_9d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newFormat = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_47
    .catchall {:try_start_88 .. :try_end_88} :catchall_45

    goto :goto_e1

    :catchall_45
    move-exception v0

    move-object v1, v0

    move/from16 v65, v4

    goto/16 :goto_c8

    :catch_47
    move-exception v0

    move-object v1, v0

    move/from16 v65, v4

    goto/16 :goto_c9

    :cond_9f
    if-ltz v6, :cond_b2

    :try_start_89
    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v1, :cond_a0

    const/4 v1, 0x1

    goto :goto_e2

    :cond_a0
    const/4 v1, 0x0

    :goto_e2
    iget-wide v9, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_50
    .catchall {:try_start_89 .. :try_end_89} :catchall_4d

    const-wide/16 v55, 0x0

    cmp-long v31, v62, v55

    if-lez v31, :cond_a1

    cmp-long v31, v9, v62

    if-ltz v31, :cond_a1

    :try_start_8a
    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_47
    .catchall {:try_start_8a .. :try_end_8a} :catchall_45

    const/4 v1, 0x0

    const/16 v33, 0x1

    const/16 v36, 0x1

    :cond_a1
    const-wide/16 v55, 0x0

    cmp-long v31, v50, v55

    if-ltz v31, :cond_a5

    move/from16 v31, v1

    :try_start_8b
    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a4

    sub-long v55, v50, v7

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->abs(J)J

    move-result-wide v55
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_4b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_49

    const v1, 0xf4240

    move/from16 v78, v2

    move/from16 v2, v80

    :try_start_8c
    div-int/2addr v1, v2
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_4a
    .catchall {:try_start_8c .. :try_end_8c} :catchall_48

    move/from16 v83, v3

    move/from16 v46, v4

    int-to-long v3, v1

    cmp-long v1, v55, v3

    if-lez v1, :cond_a3

    const-wide/16 v3, 0x0

    cmp-long v1, v7, v3

    if-lez v1, :cond_a2

    :try_start_8d
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v8, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8d} :catch_48
    .catchall {:try_start_8d .. :try_end_8d} :catchall_46

    move-object/from16 v56, v5

    const/4 v3, 0x0

    goto :goto_e5

    :catchall_46
    move-exception v0

    :goto_e3
    move-object v1, v0

    move-object/from16 v5, v29

    move/from16 v65, v46

    move-object/from16 v3, v47

    goto/16 :goto_10b

    :catch_48
    move-exception v0

    :goto_e4
    move-object v1, v0

    move-object/from16 v5, v29

    move/from16 v65, v46

    move-object/from16 v3, v47

    goto/16 :goto_10c

    :cond_a2
    :try_start_8e
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_49
    .catchall {:try_start_8e .. :try_end_8e} :catchall_47

    move-object/from16 v56, v5

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_8f
    invoke-virtual {v1, v4, v5, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_e5
    add-long v44, v22, v17

    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, -0x5

    and-int/2addr v1, v5

    iput v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v14}, Landroid/media/MediaCodec;->flush()V

    move-wide/from16 v62, v50

    move-wide/from16 v50, v71

    const/4 v1, 0x1

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    :goto_e6
    const-wide/16 v64, 0x0

    goto :goto_ec

    :catchall_47
    move-exception v0

    :goto_e7
    const/4 v3, 0x0

    goto :goto_e3

    :catch_49
    move-exception v0

    :goto_e8
    const/4 v3, 0x0

    goto :goto_e4

    :cond_a3
    move-object/from16 v56, v5

    :goto_e9
    const/4 v3, 0x0

    const/4 v5, -0x5

    goto :goto_eb

    :catchall_48
    move-exception v0

    move/from16 v46, v4

    goto :goto_e7

    :catch_4a
    move-exception v0

    move/from16 v46, v4

    goto :goto_e8

    :catchall_49
    move-exception v0

    move/from16 v46, v4

    move/from16 v2, v80

    goto :goto_e7

    :catch_4b
    move-exception v0

    move/from16 v46, v4

    move/from16 v2, v80

    goto :goto_e8

    :cond_a4
    :goto_ea
    move/from16 v78, v2

    move/from16 v83, v3

    move/from16 v46, v4

    move-object/from16 v56, v5

    move/from16 v2, v80

    goto :goto_e9

    :cond_a5
    move/from16 v31, v1

    goto :goto_ea

    :goto_eb
    const/4 v1, 0x0

    goto :goto_e6

    :goto_ec
    cmp-long v4, v69, v64

    if-lez v4, :cond_a6

    iget-wide v3, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v3, v3, v69

    cmp-long v55, v3, v75

    if-gez v55, :cond_a6

    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_a6

    const-wide/16 v3, 0x0

    const/16 v31, 0x0

    goto :goto_ed

    :cond_a6
    const-wide/16 v3, 0x0

    :goto_ed
    cmp-long v55, v50, v3

    if-ltz v55, :cond_a7

    move/from16 v55, v6

    move-wide/from16 v5, v50

    goto :goto_ee

    :cond_a7
    move/from16 v55, v6

    move-wide v5, v7

    :goto_ee
    cmp-long v61, v5, v3

    if-lez v61, :cond_ab

    cmp-long v3, v73, v71

    if-nez v3, :cond_ab

    cmp-long v3, v9, v5

    if-gez v3, :cond_a9

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_a8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop frame startTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " present time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a8
    const/4 v5, 0x0

    goto :goto_ef

    :cond_a9
    iget-wide v3, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v5, -0x80000000

    cmp-long v9, v22, v5

    if-eqz v9, :cond_aa

    sub-long v44, v44, v3

    :cond_aa
    move-wide/from16 v73, v3

    :cond_ab
    move/from16 v5, v31

    :goto_ef
    if-eqz v1, :cond_ac

    move-wide/from16 v73, v71

    goto :goto_f0

    :cond_ac
    cmp-long v1, v50, v71

    if-nez v1, :cond_ad

    const-wide/16 v3, 0x0

    cmp-long v1, v44, v3

    if-eqz v1, :cond_ad

    iget-wide v3, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long v3, v3, v44

    iput-wide v3, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_48
    .catchall {:try_start_8f .. :try_end_8f} :catchall_46

    :cond_ad
    move/from16 v1, v55

    :try_start_90
    invoke-virtual {v14, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_f0
    if-eqz v5, :cond_af

    iget-wide v3, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_4e
    .catchall {:try_start_90 .. :try_end_90} :catchall_4c

    const-wide/16 v5, 0x0

    cmp-long v1, v50, v5

    if-ltz v1, :cond_ae

    move-wide/from16 v9, v22

    :try_start_91
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_48
    .catchall {:try_start_91 .. :try_end_91} :catchall_46

    goto :goto_f1

    :cond_ae
    move-wide/from16 v9, v22

    :goto_f1
    :try_start_92
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_4f
    .catchall {:try_start_92 .. :try_end_92} :catchall_4c

    :try_start_93
    iget-wide v5, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_93} :catch_4e
    .catchall {:try_start_93 .. :try_end_93} :catchall_4c

    const-wide/16 v22, 0x3e8

    mul-long v5, v5, v22

    move-object/from16 v1, v29

    :try_start_94
    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(J)V

    iget-wide v5, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_4d
    .catchall {:try_start_94 .. :try_end_94} :catchall_4b

    const-wide/16 v22, 0x3e8

    mul-long v5, v5, v22

    move-wide/from16 v22, v3

    move-object/from16 v3, v47

    :try_start_95
    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    invoke-virtual {v3}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    goto :goto_f6

    :catchall_4a
    move-exception v0

    :goto_f2
    move-object v5, v1

    move/from16 v65, v46

    move-object v1, v0

    goto/16 :goto_10b

    :catch_4c
    move-exception v0

    :goto_f3
    move-object v5, v1

    move/from16 v65, v46

    move-object v1, v0

    goto/16 :goto_10c

    :catchall_4b
    move-exception v0

    :goto_f4
    move-object/from16 v3, v47

    goto :goto_f2

    :catch_4d
    move-exception v0

    :goto_f5
    move-object/from16 v3, v47

    goto :goto_f3

    :catchall_4c
    move-exception v0

    move-object/from16 v1, v29

    goto :goto_f4

    :catch_4e
    move-exception v0

    move-object/from16 v1, v29

    goto :goto_f5

    :catch_4f
    move-exception v0

    move-wide/from16 v22, v3

    move-object/from16 v1, v29

    move-object/from16 v3, v47

    move-object v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_f6
    move-wide/from16 v69, v22

    goto :goto_f7

    :cond_af
    move-wide/from16 v9, v22

    move-object/from16 v1, v29

    move-object/from16 v3, v47

    :goto_f7
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_b1

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_b0

    const-string v4, "decoder stream end"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_b0
    invoke-virtual {v11}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_95} :catch_4c
    .catchall {:try_start_95 .. :try_end_95} :catchall_4a

    move-object/from16 v29, v1

    move/from16 v80, v2

    move-object/from16 v47, v3

    move-object/from16 v61, v12

    move-object v5, v14

    move/from16 v3, v19

    move/from16 v12, v24

    move/from16 v14, v25

    move/from16 v6, v26

    move/from16 v4, v46

    move-object/from16 v46, v56

    move/from16 v2, v78

    const/4 v1, 0x0

    :goto_f8
    move-object/from16 v19, v11

    move-wide v10, v9

    move/from16 v9, v21

    goto/16 :goto_c4

    :cond_b1
    move-object/from16 v29, v1

    move/from16 v80, v2

    move-object/from16 v47, v3

    :goto_f9
    move-object/from16 v61, v12

    move-object v5, v14

    move/from16 v3, v19

    move/from16 v1, v20

    move/from16 v12, v24

    move/from16 v14, v25

    move/from16 v6, v26

    move/from16 v4, v46

    move-object/from16 v46, v56

    move/from16 v2, v78

    goto :goto_f8

    :catchall_4d
    move-exception v0

    move/from16 v46, v4

    move-object/from16 v1, v29

    move-object/from16 v3, v47

    move/from16 v2, v80

    goto/16 :goto_f2

    :catch_50
    move-exception v0

    move/from16 v46, v4

    move-object/from16 v1, v29

    move-object/from16 v3, v47

    move/from16 v2, v80

    goto/16 :goto_f3

    :cond_b2
    move/from16 v46, v4

    move v1, v6

    move-object/from16 v5, v29

    move-object/from16 v3, v47

    move/from16 v2, v80

    :try_start_96
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_96} :catch_51
    .catchall {:try_start_96 .. :try_end_96} :catchall_4e

    :catchall_4e
    move-exception v0

    :goto_fa
    move-object v1, v0

    move/from16 v65, v46

    goto/16 :goto_10b

    :catch_51
    move-exception v0

    :goto_fb
    move-object v1, v0

    move/from16 v65, v46

    goto/16 :goto_10c

    :catchall_4f
    move-exception v0

    move/from16 v46, v4

    move-object/from16 v5, v29

    move-object/from16 v3, v47

    move/from16 v2, v80

    goto :goto_fa

    :catch_52
    move-exception v0

    move/from16 v46, v4

    move-object/from16 v5, v29

    move-object/from16 v3, v47

    move/from16 v2, v80

    goto :goto_fb

    :goto_fc
    move/from16 v80, v2

    move-object/from16 v47, v3

    move-object/from16 v29, v5

    goto :goto_f9

    :catchall_50
    move-exception v0

    move-object/from16 v5, v29

    move-object/from16 v14, v46

    :goto_fd
    move-object/from16 v3, v47

    move/from16 v2, v80

    :goto_fe
    move-object v1, v0

    move/from16 v65, v4

    goto/16 :goto_10b

    :catch_53
    move-exception v0

    move-object/from16 v5, v29

    move-object/from16 v14, v46

    :goto_ff
    move-object/from16 v3, v47

    move/from16 v2, v80

    :goto_100
    move-object v1, v0

    move/from16 v65, v4

    goto/16 :goto_10c

    :catchall_51
    move-exception v0

    move-object v14, v5

    :goto_101
    move-object/from16 v5, v29

    goto :goto_fd

    :catch_54
    move-exception v0

    move-object v14, v5

    move/from16 v26, v6

    :goto_102
    move-object/from16 v5, v29

    goto :goto_ff

    :cond_b3
    move-object v14, v5

    move/from16 v26, v6

    move v10, v9

    move-object/from16 v5, v29

    move-object/from16 v3, v47

    move/from16 v2, v80

    :try_start_97
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoderOutputBuffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " was null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_52
    move-exception v0

    goto :goto_fe

    :catch_55
    move-exception v0

    goto :goto_100

    :cond_b4
    move-object v14, v5

    move/from16 v26, v6

    move v10, v9

    move-object/from16 v5, v29

    move-object/from16 v3, v47

    move/from16 v2, v80

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_55
    .catchall {:try_start_97 .. :try_end_97} :catchall_52

    :catchall_53
    move-exception v0

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    goto :goto_101

    :catch_56
    move-exception v0

    move-object v14, v5

    move/from16 v26, v6

    move/from16 v21, v9

    move-object/from16 v11, v19

    goto :goto_102

    :catchall_54
    move-exception v0

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    move-object/from16 v3, v47

    move-object/from16 v15, v64

    move/from16 v2, v80

    move-object v1, v0

    move/from16 v65, v31

    goto/16 :goto_10b

    :catch_57
    move-exception v0

    move-object/from16 v53, v4

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    move-object/from16 v3, v47

    move/from16 v26, v54

    move-object/from16 v15, v64

    move/from16 v2, v80

    move-object v1, v0

    move/from16 v65, v31

    goto/16 :goto_10c

    :catchall_55
    move-exception v0

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    :goto_103
    move-object/from16 v3, v47

    move-object/from16 v15, v64

    :goto_104
    move/from16 v2, v80

    move-object v1, v0

    goto/16 :goto_87

    :catch_58
    move-exception v0

    move-object/from16 v53, v4

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    move-object/from16 v3, v47

    move/from16 v26, v54

    move-object/from16 v15, v64

    move/from16 v2, v80

    move-object v1, v0

    goto/16 :goto_8c

    :catch_59
    move-exception v0

    move-object v14, v5

    move/from16 v21, v9

    move-object/from16 v11, v19

    move-object/from16 v5, v29

    :goto_105
    move-object/from16 v3, v47

    move/from16 v26, v54

    move-object/from16 v15, v64

    :goto_106
    move/from16 v2, v80

    move-object v1, v0

    goto/16 :goto_8b

    :catchall_56
    move-exception v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v34, v8

    move/from16 v21, v9

    :goto_107
    move-object v5, v11

    move-object/from16 v11, v19

    goto :goto_103

    :catch_5a
    move-exception v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v34, v8

    move/from16 v21, v9

    :goto_108
    move-object v5, v11

    move-object/from16 v11, v19

    goto :goto_105

    :catchall_57
    move-exception v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v34, v8

    move/from16 v21, v9

    move-object/from16 v27, v10

    goto :goto_107

    :catch_5b
    move-exception v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v34, v8

    move/from16 v21, v9

    move-object/from16 v27, v10

    goto :goto_108

    :catchall_58
    move-exception v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v34, v8

    :goto_109
    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    move-object/from16 v3, v47

    move-object/from16 v15, v64

    move/from16 v21, v66

    goto :goto_104

    :catch_5c
    move-exception v0

    move/from16 v28, v3

    move-object v14, v5

    move-object/from16 v34, v8

    :goto_10a
    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    move-object/from16 v3, v47

    move/from16 v26, v54

    move-object/from16 v15, v64

    move/from16 v21, v66

    goto :goto_106

    :catchall_59
    move-exception v0

    move/from16 v28, v3

    move-object v14, v5

    goto :goto_109

    :catch_5d
    move-exception v0

    move/from16 v28, v3

    move-object v14, v5

    goto :goto_10a

    :catchall_5a
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    move-object/from16 v3, v47

    move-object/from16 v15, v64

    move/from16 v21, v66

    move/from16 v2, v80

    move-object v1, v0

    goto/16 :goto_86

    :goto_10b
    move-object/from16 v66, v3

    move-object/from16 v49, v14

    move/from16 v12, v21

    move/from16 v14, v28

    move/from16 v6, v43

    move/from16 v36, v59

    move/from16 v4, v65

    move-object/from16 v10, v68

    const/16 v16, 0x0

    goto/16 :goto_40

    :catch_5e
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v27, v10

    move-object v5, v11

    move-object/from16 v11, v19

    move-object/from16 v3, v47

    move/from16 v26, v54

    move-object/from16 v15, v64

    move/from16 v21, v66

    move/from16 v2, v80

    move-object v1, v0

    goto/16 :goto_8a

    :goto_10c
    move-object/from16 v47, v3

    move-object/from16 v29, v5

    move/from16 v6, v43

    move-object/from16 v4, v53

    move/from16 v5, v65

    goto/16 :goto_115

    :catchall_5b
    move-exception v0

    move-object/from16 v27, v4

    move-object v11, v5

    move/from16 v28, v8

    move-object/from16 v3, v47

    move-object/from16 v15, v64

    move/from16 v21, v66

    move/from16 v2, v80

    :goto_10d
    move-object v1, v0

    goto :goto_10f

    :catch_5f
    move-exception v0

    move-object/from16 v27, v4

    move-object v11, v5

    move/from16 v28, v8

    move-object/from16 v3, v47

    move/from16 v26, v54

    move-object/from16 v15, v64

    move/from16 v21, v66

    move/from16 v2, v80

    :goto_10e
    move-object v1, v0

    goto :goto_110

    :catchall_5c
    move-exception v0

    move-object/from16 v27, v4

    move-object v11, v5

    move-object v3, v12

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    goto :goto_10d

    :catch_60
    move-exception v0

    move-object/from16 v27, v4

    move-object v11, v5

    move-object v3, v12

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move/from16 v26, v54

    move-object/from16 v15, v64

    goto :goto_10e

    :goto_10f
    move-object/from16 v66, v3

    move/from16 v12, v21

    move/from16 v14, v28

    move/from16 v6, v43

    move/from16 v36, v59

    move-object/from16 v10, v68

    const/4 v4, -0x5

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v49, 0x0

    goto/16 :goto_40

    :goto_110
    move-object/from16 v47, v3

    move/from16 v6, v43

    const/4 v4, 0x0

    const/4 v5, -0x5

    const/4 v14, 0x0

    const/16 v29, 0x0

    goto/16 :goto_115

    :catchall_5d
    move-exception v0

    move-object/from16 v27, v4

    move-object v11, v5

    :goto_111
    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    move/from16 v3, p2

    move-object v1, v0

    move-object/from16 v49, v27

    move/from16 v14, v28

    move/from16 v6, v43

    move/from16 v47, v59

    move-object/from16 v10, v68

    const/4 v5, 0x0

    const/16 v29, 0x0

    const/16 v38, 0x0

    goto/16 :goto_63

    :catch_61
    move-exception v0

    move-object/from16 v27, v4

    move-object v11, v5

    :goto_112
    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move/from16 v26, v54

    move-object/from16 v15, v64

    move-object v1, v0

    move-object/from16 v5, v27

    move/from16 v6, v43

    move/from16 v47, v59

    goto/16 :goto_114

    :catchall_5e
    move-exception v0

    move-object/from16 v27, v4

    move-object v11, v5

    move/from16 v43, v12

    goto :goto_111

    :catch_62
    move-exception v0

    move-object/from16 v27, v4

    move-object v11, v5

    move/from16 v43, v12

    goto :goto_112

    :catchall_5f
    move-exception v0

    move-object/from16 v27, v4

    move-object v11, v5

    move/from16 v43, v12

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    move/from16 v3, p2

    move-object v1, v0

    move-object/from16 v49, v27

    move/from16 v14, v28

    move/from16 v6, v43

    move-object/from16 v10, v68

    const/4 v5, 0x0

    const/16 v29, 0x0

    const/16 v38, 0x0

    const/16 v47, 0x0

    goto/16 :goto_63

    :catch_63
    move-exception v0

    move-object/from16 v27, v4

    move-object v11, v5

    move/from16 v43, v12

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move/from16 v26, v54

    move-object/from16 v15, v64

    move-object v1, v0

    move-object/from16 v5, v27

    move/from16 v6, v43

    goto/16 :goto_6a

    :catchall_60
    move-exception v0

    move-object v11, v5

    move/from16 v43, v12

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    move/from16 v3, p2

    move-object v1, v0

    move/from16 v14, v28

    move/from16 v6, v43

    goto/16 :goto_74

    :catch_64
    move-exception v0

    move-object v11, v5

    move/from16 v43, v12

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move/from16 v26, v54

    move-object/from16 v15, v64

    move-object v1, v0

    move/from16 v6, v43

    goto/16 :goto_76

    :catchall_61
    move-exception v0

    move-object v11, v5

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    move/from16 v3, p2

    move-object v1, v0

    move v6, v14

    move/from16 v14, v28

    goto/16 :goto_74

    :catch_65
    move-exception v0

    move/from16 v26, v3

    move-object v11, v5

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    move-object v1, v0

    move v6, v14

    goto/16 :goto_76

    :catchall_62
    move-exception v0

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    move/from16 v3, p2

    move-object v1, v0

    move v6, v14

    :goto_113
    move/from16 v14, v28

    goto/16 :goto_60

    :catch_66
    move-exception v0

    move/from16 v26, v3

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    move-object v1, v0

    move v6, v14

    goto/16 :goto_69

    :catchall_63
    move-exception v0

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    move/from16 v3, p2

    move-object v1, v0

    move/from16 v6, v17

    goto :goto_113

    :catch_67
    move-exception v0

    move/from16 v26, v3

    move v2, v15

    move/from16 v21, v19

    move/from16 v28, v20

    move-object/from16 v15, v64

    move-object v1, v0

    move/from16 v6, v17

    goto/16 :goto_69

    :goto_114
    move-object/from16 v27, v5

    move/from16 v59, v47

    const/4 v4, 0x0

    const/4 v5, -0x5

    const/4 v14, 0x0

    const/16 v29, 0x0

    const/16 v47, 0x0

    :goto_115
    :try_start_98
    instance-of v3, v1, Ljava/lang/IllegalStateException;
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_69

    if-eqz v3, :cond_b5

    move/from16 v3, p2

    if-nez v3, :cond_b6

    const/4 v7, 0x1

    goto :goto_116

    :cond_b5
    move/from16 v3, p2

    :cond_b6
    const/4 v7, 0x0

    :goto_116
    :try_start_99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bitrate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " framerate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_68

    move/from16 v9, v28

    :try_start_9a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_67

    move-object/from16 v10, v68

    :try_start_9b
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_66

    move/from16 v12, v21

    :try_start_9c
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_65

    move/from16 v31, v5

    move/from16 v16, v7

    move-object/from16 v19, v11

    move-object v5, v14

    const/4 v7, 0x1

    :goto_117
    :try_start_9d
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v8, v26

    invoke-virtual {v1, v8}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v5, :cond_b7

    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_64

    goto :goto_118

    :catchall_64
    move-exception v0

    move-object v1, v0

    move-object/from16 v38, v5

    move v14, v9

    move/from16 v5, v16

    move-object/from16 v11, v19

    move-object/from16 v49, v27

    move/from16 v65, v31

    move-object/from16 v66, v47

    move/from16 v47, v59

    move/from16 v19, v12

    goto/16 :goto_128

    :cond_b7
    :goto_118
    move/from16 v17, v6

    move/from16 v1, v16

    move-object v6, v5

    move/from16 v16, v7

    move-object/from16 v5, v29

    goto/16 :goto_11c

    :catchall_65
    move-exception v0

    :goto_119
    move-object v1, v0

    move/from16 v65, v5

    move v5, v7

    move/from16 v19, v12

    move-object/from16 v38, v14

    move-object/from16 v49, v27

    move-object/from16 v66, v47

    move/from16 v47, v59

    :goto_11a
    move v14, v9

    goto/16 :goto_128

    :catchall_66
    move-exception v0

    move/from16 v12, v21

    goto :goto_119

    :catchall_67
    move-exception v0

    move/from16 v12, v21

    :goto_11b
    move-object/from16 v10, v68

    goto :goto_119

    :catchall_68
    move-exception v0

    move/from16 v12, v21

    move/from16 v9, v28

    goto :goto_11b

    :catchall_69
    move-exception v0

    move/from16 v3, p2

    move/from16 v12, v21

    move/from16 v9, v28

    move-object/from16 v10, v68

    move-object v1, v0

    move/from16 v65, v5

    move/from16 v19, v12

    move-object/from16 v38, v14

    move-object/from16 v49, v27

    move-object/from16 v66, v47

    move/from16 v47, v59

    const/4 v5, 0x0

    goto :goto_11a

    :cond_b8
    move/from16 v3, p2

    move v2, v15

    move/from16 v12, v19

    move/from16 v9, v20

    move-object/from16 v15, v64

    move-object/from16 v10, v68

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v27, 0x0

    const/16 v31, -0x5

    const/16 v47, 0x0

    const/16 v59, 0x0

    :goto_11c
    if-eqz v5, :cond_b9

    :try_start_9e
    invoke-virtual {v5}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    const/4 v5, 0x0

    goto :goto_11e

    :catchall_6a
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v38, v6

    move v14, v9

    move/from16 v6, v17

    move-object/from16 v11, v19

    move-object/from16 v49, v27

    move/from16 v65, v31

    move-object/from16 v66, v47

    move/from16 v47, v59

    move v5, v1

    move/from16 v19, v12

    :goto_11d
    move-object v1, v0

    goto/16 :goto_128

    :cond_b9
    :goto_11e
    if-eqz v47, :cond_ba

    invoke-virtual/range {v47 .. v47}, Lorg/telegram/messenger/video/InputSurface;->release()V

    const/16 v47, 0x0

    :cond_ba
    if-eqz v19, :cond_bb

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaCodec;->release()V
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_6a

    const/16 v49, 0x0

    goto :goto_11f

    :cond_bb
    move-object/from16 v49, v19

    :goto_11f
    if-eqz v4, :cond_bc

    :try_start_9f
    invoke-virtual {v4}, Lorg/telegram/messenger/video/AudioRecoder;->release()V
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_6b

    goto :goto_120

    :catchall_6b
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v38, v6

    move v14, v9

    move/from16 v19, v12

    move/from16 v6, v17

    move/from16 v65, v31

    move-object/from16 v66, v47

    move-object/from16 v11, v49

    move/from16 v47, v59

    move v5, v1

    move-object/from16 v49, v27

    goto :goto_11d

    :cond_bc
    :goto_120
    move-object v14, v5

    move-object/from16 v38, v6

    move v4, v9

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v49

    move/from16 v36, v59

    move-object/from16 v49, v27

    move-object/from16 v91, v47

    move/from16 v47, v1

    move-object/from16 v1, v91

    :goto_121
    :try_start_a0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_6d

    move/from16 v20, v4

    move v7, v5

    move-object/from16 v66, v9

    move-object v2, v14

    move/from16 v5, v31

    move/from16 v14, v47

    :goto_122
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v4, :cond_bd

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    :cond_bd
    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    if-eqz v4, :cond_be

    :try_start_a1
    invoke-virtual {v4}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->finishMovie()V

    iget-object v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v4, v5, v15}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->getLastFrameTimestamp(ILandroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v4

    iput-wide v4, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_6c

    goto :goto_123

    :catchall_6c
    move-exception v0

    move-object v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_be
    :goto_123
    if-eqz v66, :cond_bf

    :try_start_a2
    invoke-virtual/range {v66 .. v66}, Landroid/media/MediaCodec;->release()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a2} :catch_68

    goto :goto_124

    :catch_68
    nop

    :cond_bf
    :goto_124
    if-eqz v38, :cond_c0

    :try_start_a3
    invoke-virtual/range {v38 .. v38}, Landroid/media/MediaCodec;->release()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a3} :catch_69

    goto :goto_125

    :catch_69
    nop

    :cond_c0
    :goto_125
    if-eqz v2, :cond_c1

    :try_start_a4
    invoke-virtual {v2}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a4} :catch_6a

    goto :goto_126

    :catch_6a
    nop

    :cond_c1
    :goto_126
    if-eqz v1, :cond_c2

    goto/16 :goto_12e

    :cond_c2
    :goto_127
    move/from16 v1, v20

    move-object/from16 v2, v49

    goto/16 :goto_12f

    :catchall_6d
    move-exception v0

    move-object/from16 v66, v1

    move-object v11, v9

    move/from16 v19, v12

    move-object/from16 v29, v14

    move/from16 v65, v31

    move/from16 v5, v47

    move-object v1, v0

    move v14, v4

    goto/16 :goto_56

    :catchall_6e
    move-exception v0

    move/from16 v3, p2

    move/from16 v17, v4

    move v9, v14

    move/from16 v2, v24

    move/from16 v67, v34

    move-object/from16 v10, v54

    move-object/from16 v34, v5

    move/from16 v91, v15

    move-object v15, v12

    move/from16 v12, v91

    move-object v1, v0

    move/from16 v19, v12

    move/from16 v6, v17

    goto/16 :goto_61

    :catchall_6f
    move-exception v0

    move/from16 v3, p2

    move-object v10, v1

    move/from16 v17, v6

    move v9, v14

    move v12, v15

    move/from16 v67, v34

    move/from16 v2, v38

    move-object/from16 v15, v55

    move-object/from16 v34, v33

    move-object v1, v0

    move/from16 v19, v12

    goto/16 :goto_61

    :goto_128
    move/from16 v16, v5

    move/from16 v12, v19

    move-object/from16 v5, v29

    move/from16 v36, v47

    move-object/from16 v27, v49

    move/from16 v4, v65

    move-object/from16 v49, v38

    goto :goto_129

    :catchall_70
    move-exception v0

    move/from16 v3, p2

    move-object v10, v1

    move/from16 v17, v6

    move v9, v14

    move v12, v15

    move/from16 v67, v34

    move/from16 v2, v38

    move-object/from16 v34, v33

    move-object v1, v0

    const/4 v4, -0x5

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v27, 0x0

    const/16 v36, 0x0

    const/16 v49, 0x0

    const/16 v66, 0x0

    :goto_129
    :try_start_a5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bitrate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " framerate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_72

    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_c3

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_c3
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    if-eqz v1, :cond_c4

    :try_start_a6
    invoke-virtual {v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->finishMovie()V

    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v1, v4, v15}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->getLastFrameTimestamp(ILandroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v1

    iput-wide v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_71

    goto :goto_12a

    :catchall_71
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c4
    :goto_12a
    if-eqz v11, :cond_c5

    :try_start_a7
    invoke-virtual {v11}, Landroid/media/MediaCodec;->release()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_a7} :catch_6b

    goto :goto_12b

    :catch_6b
    nop

    :cond_c5
    :goto_12b
    if-eqz v49, :cond_c6

    :try_start_a8
    invoke-virtual/range {v49 .. v49}, Landroid/media/MediaCodec;->release()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_a8} :catch_6c

    goto :goto_12c

    :catch_6c
    nop

    :cond_c6
    :goto_12c
    if-eqz v5, :cond_c7

    :try_start_a9
    invoke-virtual {v5}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_a9} :catch_6d

    goto :goto_12d

    :catch_6d
    nop

    :cond_c7
    :goto_12d
    if-eqz v66, :cond_c8

    move/from16 v20, v14

    move/from16 v14, v16

    move-object/from16 v49, v27

    move-object/from16 v1, v66

    const/4 v7, 0x1

    :goto_12e
    :try_start_aa
    invoke-virtual {v1}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_aa} :catch_6e

    goto/16 :goto_127

    :catch_6e
    nop

    goto/16 :goto_127

    :cond_c8
    move v1, v14

    move/from16 v14, v16

    move-object/from16 v2, v27

    const/4 v7, 0x1

    :goto_12f
    if-eqz v14, :cond_c9

    move/from16 v4, p3

    const/4 v5, 0x1

    add-int/lit8 v1, v4, 0x1

    move-object/from16 v8, p1

    invoke-direct {v13, v8, v5, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result v1

    return v1

    :cond_c9
    move-object/from16 v8, p1

    move/from16 v4, p3

    const/4 v5, 0x1

    if-eqz v7, :cond_ca

    if-eqz v36, :cond_ca

    const/4 v9, 0x3

    if-ge v4, v9, :cond_ca

    add-int/lit8 v1, v4, 0x1

    invoke-direct {v13, v8, v3, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result v1

    return v1

    :cond_ca
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v40

    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_cb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compression completed time="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " needCompress="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v67

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " w="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitrate="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " file size="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoder_name="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_cb
    return v7

    :catchall_72
    move-exception v0

    move-object v1, v0

    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_cc

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    :cond_cc
    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    if-eqz v2, :cond_cd

    :try_start_ab
    invoke-virtual {v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->finishMovie()V

    iget-object v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->muxer:Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;

    invoke-virtual {v2, v4, v15}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->getLastFrameTimestamp(ILandroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v2

    iput-wide v2, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_73

    goto :goto_130

    :catchall_73
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_cd
    :goto_130
    if-eqz v11, :cond_ce

    :try_start_ac
    invoke-virtual {v11}, Landroid/media/MediaCodec;->release()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_ac} :catch_6f

    goto :goto_131

    :catch_6f
    nop

    :cond_ce
    :goto_131
    if-eqz v49, :cond_cf

    :try_start_ad
    invoke-virtual/range {v49 .. v49}, Landroid/media/MediaCodec;->release()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ad} :catch_70

    goto :goto_132

    :catch_70
    nop

    :cond_cf
    :goto_132
    if-eqz v5, :cond_d0

    :try_start_ae
    invoke-virtual {v5}, Lorg/telegram/messenger/video/OutputSurface;->release()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_ae} :catch_71

    goto :goto_133

    :catch_71
    nop

    :cond_d0
    :goto_133
    if-eqz v66, :cond_d1

    :try_start_af
    invoke-virtual/range {v66 .. v66}, Lorg/telegram/messenger/video/InputSurface;->release()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_af} :catch_72

    :catch_72
    :cond_d1
    goto :goto_135

    :goto_134
    throw v1

    :goto_135
    goto :goto_134
.end method

.method private createEncoderForMimeType()Landroid/media/MediaCodec;
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "video/avc"

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->findGoodHevcEncoder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v2, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->outputMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static createFragmentShader(IIIIZI)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAverage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    dest size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   kernelRadius "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-string p2, ".0;\nconst float pixelSizeY = 1.0 / "

    const-string p3, ".0;\nconst float pixelSizeX = 1.0 / "

    if-eqz p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform samplerExternalOES sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    :goto_0
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform sampler2D sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    goto :goto_0
.end method

.method public static cutOfNalData(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    const-string v0, "video/hevc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v1, v2, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x60

    if-ge p1, v3, :cond_2

    aget-byte v3, v1, p1

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, v1, v3

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, v1, v3

    if-nez v3, :cond_1

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, v1, v3

    if-ne v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-le v2, p0, :cond_1

    iget p0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr p0, p1

    iput p0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr p0, p1

    iput p0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private getDecoderByFormat(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 4

    if-eqz p1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "video/dolby-vision"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "video/hevc"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "video/avc"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getDecoderByFormat: format is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static hdrFragmentShader(IIIIZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p4, :cond_1

    invoke-virtual {p5}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->getHDRType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    sget p0, Lorg/telegram/messenger/R$raw;->hdr2sdr_hlg:I

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget p0, Lorg/telegram/messenger/R$raw;->hdr2sdr_pq:I

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "$dstWidth"

    invoke-virtual {p0, p4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "$dstHeight"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = TEX(vTextureCoord);\n}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    return-object p0
.end method

.method private isMediatekAvcEncoder(Landroid/media/MediaCodec;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "c2.mtk.avc.encoder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    .locals 28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7

    const/4 v9, 0x1

    if-eqz p11, :cond_0

    invoke-static {v1, v9}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v0

    move-wide/from16 v11, p8

    move v10, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p8

    const/4 v10, -0x1

    :goto_0
    long-to-float v0, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float v12, v0, v11

    const-string v13, "max-input-size"

    const-wide/16 v14, 0x0

    if-ltz v7, :cond_2

    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v16

    :try_start_0
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    cmp-long v17, v4, v14

    if-lez v17, :cond_1

    invoke-virtual {v1, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v14, v15, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_2
    move v11, v0

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    const/16 v16, -0x1

    :goto_3
    if-ltz v10, :cond_5

    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v8, "mime"

    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "audio/unknown"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const/4 v10, -0x1

    goto :goto_5

    :cond_3
    invoke-virtual {v2, v0, v9}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6

    :try_start_1
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    cmp-long v0, v4, v14

    const/4 v8, 0x0

    if-lez v0, :cond_4

    invoke-virtual {v1, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_4
    invoke-virtual {v1, v14, v15, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_5
    const/4 v6, -0x1

    :goto_5
    if-gtz v11, :cond_6

    const/high16 v11, 0x10000

    :cond_6
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v18, -0x1

    if-gez v10, :cond_8

    if-ltz v7, :cond_7

    goto :goto_6

    :cond_7
    return-wide v18

    :cond_8
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    move-wide/from16 v22, v14

    move-wide/from16 v20, v18

    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_21

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_a

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaExtractor;)J

    move-result-wide v14

    move/from16 p9, v10

    int-to-long v9, v11

    cmp-long v24, v14, v9

    if-lez v24, :cond_9

    const-wide/16 v9, 0x400

    add-long/2addr v14, v9

    long-to-int v0, v14

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    move v11, v0

    move-object v0, v9

    :cond_9
    :goto_8
    const/4 v9, 0x0

    goto :goto_9

    :cond_a
    move/from16 p9, v10

    goto :goto_8

    :goto_9
    invoke-virtual {v1, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    move/from16 v14, p9

    if-ne v10, v7, :cond_b

    move/from16 v9, v16

    :goto_a
    const/4 v15, -0x1

    goto :goto_b

    :cond_b
    if-ne v10, v14, :cond_c

    move v9, v6

    goto :goto_a

    :cond_c
    const/4 v9, -0x1

    goto :goto_a

    :goto_b
    if-eq v9, v15, :cond_1d

    const/16 v15, 0x15

    if-ge v13, v15, :cond_d

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v13, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_d
    if-eq v10, v14, :cond_14

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    if-eqz v13, :cond_14

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v24

    add-int v24, v15, v24

    move/from16 p9, v6

    const/4 v6, -0x1

    :goto_c
    const/16 v25, 0x4

    move/from16 p11, v8

    add-int/lit8 v8, v24, -0x4

    if-gt v15, v8, :cond_13

    aget-byte v26, v13, v15

    if-nez v26, :cond_f

    add-int/lit8 v26, v15, 0x1

    aget-byte v26, v13, v26

    if-nez v26, :cond_f

    add-int/lit8 v26, v15, 0x2

    aget-byte v26, v13, v26

    if-nez v26, :cond_f

    add-int/lit8 v26, v15, 0x3

    move/from16 v27, v11

    aget-byte v11, v13, v26

    move/from16 v26, v14

    const/4 v14, 0x1

    if-eq v11, v14, :cond_e

    goto :goto_e

    :cond_e
    :goto_d
    const/4 v11, -0x1

    goto :goto_f

    :cond_f
    move/from16 v27, v11

    move/from16 v26, v14

    const/4 v14, 0x1

    :goto_e
    if-ne v15, v8, :cond_12

    goto :goto_d

    :goto_f
    if-eq v6, v11, :cond_11

    sub-int v11, v15, v6

    if-eq v15, v8, :cond_10

    goto :goto_10

    :cond_10
    const/16 v25, 0x0

    :goto_10
    sub-int v11, v11, v25

    shr-int/lit8 v8, v11, 0x18

    int-to-byte v8, v8

    aput-byte v8, v13, v6

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v14, v11, 0x10

    int-to-byte v14, v14

    aput-byte v14, v13, v8

    add-int/lit8 v8, v6, 0x2

    shr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    aput-byte v14, v13, v8

    add-int/lit8 v6, v6, 0x3

    int-to-byte v8, v11

    aput-byte v8, v13, v6

    :cond_11
    move v6, v15

    :cond_12
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, p11

    move/from16 v14, v26

    move/from16 v11, v27

    goto :goto_c

    :cond_13
    :goto_11
    move/from16 v27, v11

    move/from16 v26, v14

    goto :goto_12

    :cond_14
    move/from16 p9, v6

    move/from16 p11, v8

    goto :goto_11

    :goto_12
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v6, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    iput-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v8, 0x0

    goto :goto_13

    :cond_15
    const/4 v6, 0x0

    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    :goto_13
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_1a

    if-nez v8, :cond_1a

    if-ne v10, v7, :cond_16

    const-wide/16 v10, 0x0

    cmp-long v6, v4, v10

    if-lez v6, :cond_17

    cmp-long v6, v20, v18

    if-nez v6, :cond_17

    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v20, v13

    goto :goto_14

    :cond_16
    const-wide/16 v10, 0x0

    :cond_17
    :goto_14
    cmp-long v6, p6, v10

    if-ltz v6, :cond_18

    iget-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, p6

    if-gez v6, :cond_19

    :cond_18
    const/4 v6, 0x0

    goto :goto_15

    :cond_19
    const/4 v8, 0x1

    :cond_1a
    move-object/from16 v11, p0

    :cond_1b
    const/high16 v24, 0x447a0000    # 1000.0f

    goto :goto_17

    :goto_15
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    iput v10, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v2, v9, v0, v3, v6}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-eqz v11, :cond_1a

    move-object/from16 v11, p0

    iget-object v15, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v15, :cond_1b

    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v13, v13, v20

    cmp-long v17, v13, v22

    if-lez v17, :cond_1c

    goto :goto_16

    :cond_1c
    move-wide/from16 v13, v22

    :goto_16
    long-to-float v6, v13

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v6, v6, v24

    div-float/2addr v6, v12

    invoke-interface {v15, v9, v10, v6}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v22, v13

    :goto_17
    const/4 v6, -0x1

    if-nez v8, :cond_1f

    goto :goto_18

    :cond_1d
    move/from16 p9, v6

    move/from16 p11, v8

    move/from16 v27, v11

    move/from16 v26, v14

    const/4 v6, -0x1

    const/high16 v24, 0x447a0000    # 1000.0f

    move-object/from16 v11, p0

    if-ne v10, v6, :cond_1e

    const/4 v8, 0x1

    goto :goto_19

    :cond_1e
    const/4 v8, 0x0

    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1f
    :goto_19
    move/from16 v6, p9

    if-eqz v8, :cond_20

    move/from16 v10, v26

    move/from16 v11, v27

    const/4 v8, 0x1

    :goto_1a
    const/4 v9, 0x1

    const-wide/16 v14, 0x0

    goto/16 :goto_7

    :cond_20
    move/from16 v8, p11

    move/from16 v10, v26

    move/from16 v11, v27

    goto :goto_1a

    :cond_21
    move-object/from16 v11, p0

    move/from16 v26, v10

    if-ltz v7, :cond_22

    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_22
    if-ltz v26, :cond_23

    move/from16 v10, v26

    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_23
    return-wide v20
.end method


# virtual methods
.method public convertVideo(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)Z
    .locals 2

    iget-boolean v0, p1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSticker:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lorg/telegram/messenger/video/WebmEncoder;->convert(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    iput-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    invoke-direct {p0, p1, v1, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;ZI)Z

    move-result p1

    return p1
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    return-wide v0
.end method

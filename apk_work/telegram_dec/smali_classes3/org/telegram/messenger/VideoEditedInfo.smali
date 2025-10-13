.class public Lorg/telegram/messenger/VideoEditedInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;,
        Lorg/telegram/messenger/VideoEditedInfo$Part;,
        Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;
    }
.end annotation


# instance fields
.field public account:I

.field public alreadyScheduledConverting:Z

.field public avatarStartTime:J

.field public backgroundPath:Ljava/lang/String;

.field public bitrate:I

.field public blurPath:Ljava/lang/String;

.field public canceled:Z

.field public collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

.field public collageParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$Part;",
            ">;"
        }
    .end annotation
.end field

.field public compressQuality:I

.field public cropState:Lorg/telegram/messenger/MediaController$CropState;

.field public encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

.field public end:F

.field public endTime:J

.field public estimatedDuration:J

.field public estimatedSize:J

.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field public forceFragmenting:Z

.field public framerate:I

.field public fromCamera:Z

.field public gradientBottomColor:Ljava/lang/Integer;

.field public gradientTopColor:Ljava/lang/Integer;

.field public hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

.field public isDark:Z

.field public isPhoto:Z

.field public isSticker:Z

.field public isStory:Z

.field public iv:[B

.field public key:[B

.field public mediaEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field public messagePath:Ljava/lang/String;

.field public messageVideoMaskPath:Ljava/lang/String;

.field public mixedSoundInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;",
            ">;"
        }
    .end annotation
.end field

.field public muted:Z

.field public needUpdateProgress:Z

.field public notReadyYet:Z

.field public originalBitrate:I

.field public originalDuration:J

.field public originalHeight:I

.field public originalPath:Ljava/lang/String;

.field public originalWidth:I

.field public paintPath:Ljava/lang/String;

.field public resultHeight:I

.field public resultWidth:I

.field public rotationValue:I

.field public roundVideo:Z

.field public shouldLimitFps:Z

.field public start:F

.field public startTime:J

.field public thumb:Landroid/graphics/Bitmap;

.field public videoConvertFirstWrite:Z

.field public volume:F

.field public wallpaperPeerId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    const/16 v0, 0x18

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->volume:F

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->wallpaperPeerId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->needUpdateProgress:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->shouldLimitFps:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public canAutoPlaySourceVideo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v6, 0x1

    iget-wide v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v7, :cond_2

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-nez v7, :cond_2

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->blurPath:Ljava/lang/String;

    if-nez v7, :cond_2

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    const-string v7, ""

    goto/16 :goto_d

    :cond_2
    :goto_0
    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v7, :cond_3

    const/16 v7, 0xaa

    goto :goto_1

    :cond_3
    const/16 v7, 0xa

    :goto_1
    iget-object v8, v0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v10, v8

    add-int/2addr v7, v10

    goto :goto_2

    :cond_4
    move-object v8, v9

    :goto_2
    iget-object v10, v0, Lorg/telegram/messenger/VideoEditedInfo;->blurPath:Ljava/lang/String;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v10, v9

    add-int/2addr v7, v10

    :cond_5
    new-instance v10, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v10, v7}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    invoke-virtual {v10, v4}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-wide v11, v0, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    invoke-virtual {v10, v11, v12}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    iget v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v7, :cond_a

    invoke-virtual {v10, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    if-eqz v7, :cond_6

    iget v7, v7, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iget v7, v7, Lorg/telegram/ui/Components/Point;->y:F

    :goto_3
    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    goto :goto_3

    :goto_4
    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v2, :cond_b

    if-nez v7, :cond_7

    iget-object v11, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v11, v11, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v11, v11, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_6

    :cond_7
    iget-object v11, v0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v11, v11, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    if-ne v7, v6, :cond_8

    iget-object v11, v11, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_6

    :cond_8
    if-ne v7, v1, :cond_9

    iget-object v11, v11, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_6

    :cond_9
    iget-object v11, v11, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    :goto_6
    iget v12, v11, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    invoke-virtual {v10, v12}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget v12, v11, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    invoke-virtual {v10, v12}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget v12, v11, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    invoke-virtual {v10, v12}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget v12, v11, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    invoke-virtual {v10, v12}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget v11, v11, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    invoke-virtual {v10, v11}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    add-int/2addr v7, v6

    goto :goto_5

    :cond_a
    invoke-virtual {v10, v3}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v10, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    invoke-virtual {v10, v8}, Lorg/telegram/tgnet/SerializedData;->writeByteArray([B)V

    goto :goto_7

    :cond_c
    invoke-virtual {v10, v3}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    :goto_7
    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v10, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_d

    iget-object v11, v0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual {v11, v10, v3}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->serializeTo(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    add-int/2addr v8, v6

    goto :goto_8

    :cond_d
    iget-boolean v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    goto :goto_9

    :cond_e
    invoke-virtual {v10, v3}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    :goto_9
    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v7, :cond_f

    invoke-virtual {v10, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget-boolean v7, v7, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    goto :goto_a

    :cond_f
    invoke-virtual {v10, v3}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    :goto_a
    invoke-virtual {v10, v3}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-boolean v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->isStory:Z

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    iget-boolean v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->fromCamera:Z

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    if-eqz v9, :cond_10

    invoke-virtual {v10, v6}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    invoke-virtual {v10, v9}, Lorg/telegram/tgnet/SerializedData;->writeByteArray([B)V

    goto :goto_b

    :cond_10
    invoke-virtual {v10, v3}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    :goto_b
    iget v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->volume:F

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    iget-boolean v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->isSticker:Z

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeBool(Z)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    if-eqz v7, :cond_11

    iget-object v8, v0, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    if-eqz v8, :cond_11

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v6, :cond_11

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11

    const v7, -0x21524111

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v7, v0, Lorg/telegram/messenger/VideoEditedInfo;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_c
    iget-object v8, v0, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_12

    iget-object v8, v0, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/VideoEditedInfo$Part;

    invoke-virtual {v8, v10}, Lorg/telegram/messenger/VideoEditedInfo$Part;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/2addr v7, v6

    goto :goto_c

    :cond_11
    const v7, 0x56730bcc

    invoke-virtual {v10, v7}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    :cond_12
    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :goto_d
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v9, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget v11, v0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v9, v6, v3

    const/4 v3, 0x1

    aput-object v10, v6, v3

    const/4 v3, 0x2

    aput-object v11, v6, v3

    const/4 v3, 0x3

    aput-object v12, v6, v3

    const/4 v3, 0x4

    aput-object v13, v6, v3

    const/4 v3, 0x5

    aput-object v14, v6, v3

    const/4 v3, 0x6

    aput-object v15, v6, v3

    const/4 v3, 0x7

    aput-object v4, v6, v3

    const/16 v3, 0x8

    aput-object v1, v6, v3

    const/16 v1, 0x9

    aput-object v2, v6, v1

    const/16 v1, 0xa

    aput-object v7, v6, v1

    const/16 v1, 0xb

    aput-object v5, v6, v1

    const-string v1, "-1_%d_%d_%d_%d_%d_%d_%d_%d_%d_%d_-%s_%s"

    invoke-static {v8, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public needConvert()Z
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->isStory:Z

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->fromCamera:Z

    if-nez v0, :cond_0

    return v6

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->blurPath:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController$CropState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v7, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v0, v7, v4

    if-gtz v0, :cond_3

    iget-wide v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iget v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    if-eq v0, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->blurPath:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    if-eqz v0, :cond_6

    iget-wide v7, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    cmp-long v0, v7, v4

    if-gtz v0, :cond_6

    iget-wide v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    iget-wide v2, p0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public parseString(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "_"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-ge v2, v4, :cond_0

    return v3

    :cond_0
    move-object/from16 v2, p1

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/16 v6, 0xb

    const/4 v7, 0x1

    if-lt v5, v6, :cond_16

    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const/4 v5, 0x2

    aget-object v8, v2, v5

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    const/4 v8, 0x3

    aget-object v9, v2, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/4 v9, 0x4

    aget-object v10, v2, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    const/4 v10, 0x5

    aget-object v11, v2, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    aget-object v11, v2, v4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v1, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/4 v11, 0x7

    aget-object v12, v2, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    const/16 v12, 0x8

    aget-object v13, v2, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v1, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    const/16 v13, 0x9

    aget-object v14, v2, v13

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    const/16 v14, 0xa

    aget-object v15, v2, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    iget v15, v1, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/4 v14, -0x1

    if-ne v15, v14, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    iput-boolean v14, v1, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    aget-object v14, v2, v6

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    aget-object v14, v2, v6

    invoke-virtual {v14, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_13

    new-instance v15, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v14}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v14

    if-lt v14, v8, :cond_2

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v12

    iput-wide v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    iput v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    :goto_1
    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v12

    if-eqz v12, :cond_7

    new-instance v12, Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {v12}, Lorg/telegram/messenger/MediaController$SavedFilterState;-><init>()V

    iput-object v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v13

    iput v13, v12, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    if-lt v14, v10, :cond_3

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    :cond_3
    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    new-instance v12, Lorg/telegram/ui/Components/Point;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v13

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    invoke-direct {v12, v13, v8}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v12, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iget-object v8, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v10

    iput v10, v8, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    iget-object v8, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v10

    iput v10, v8, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_7

    if-nez v8, :cond_4

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v10, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v10, v10, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_3

    :cond_4
    if-ne v8, v7, :cond_5

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v10, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v10, v10, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_3

    :cond_5
    if-ne v8, v5, :cond_6

    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v10, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v10, v10, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_3

    :cond_6
    iget-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v10, v10, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v10, v10, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    :goto_3
    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v12

    iput v12, v10, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readByteArray(Z)[B

    move-result-object v8

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    :cond_8
    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v8, :cond_9

    iget-object v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v13, v15, v3}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v8

    if-ne v8, v7, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    iput-boolean v8, v1, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    :cond_b
    if-lt v14, v5, :cond_c

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v5

    if-eqz v5, :cond_c

    new-instance v5, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v5}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v5, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v5, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v5, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v5, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v5, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v8

    iput v8, v5, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v5, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v5, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v5, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    if-lt v14, v9, :cond_c

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v8

    iput-boolean v8, v5, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    :cond_c
    if-lt v14, v4, :cond_d

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    :cond_d
    if-lt v14, v11, :cond_e

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v4

    iput-boolean v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->isStory:Z

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v4

    iput-boolean v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->fromCamera:Z

    :cond_e
    const/16 v4, 0x8

    if-lt v14, v4, :cond_f

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readByteArray(Z)[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->blurPath:Ljava/lang/String;

    :cond_f
    const/16 v4, 0x9

    if-lt v14, v4, :cond_10

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v4

    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->volume:F

    :cond_10
    const/16 v4, 0xa

    if-lt v14, v4, :cond_11

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v4

    iput-boolean v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->isSticker:Z

    :cond_11
    if-lt v14, v6, :cond_12

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v4

    const v5, -0x21524111

    if-ne v4, v5, :cond_12

    new-instance v4, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_6
    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    new-instance v5, Lorg/telegram/messenger/VideoEditedInfo$Part;

    invoke-direct {v5}, Lorg/telegram/messenger/VideoEditedInfo$Part;-><init>()V

    iget-object v6, v1, Lorg/telegram/messenger/VideoEditedInfo;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iput-object v6, v5, Lorg/telegram/messenger/VideoEditedInfo$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    invoke-virtual {v5, v15, v3}, Lorg/telegram/messenger/VideoEditedInfo$Part;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    iget-object v6, v1, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_12
    invoke-virtual {v15}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    :cond_13
    const/16 v6, 0xc

    :cond_14
    :goto_7
    array-length v4, v2

    if-ge v6, v4, :cond_16

    iget-object v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    if-nez v4, :cond_15

    aget-object v4, v2, v6

    goto :goto_8

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    iput-object v4, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_16
    return v7

    :goto_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v3
.end method

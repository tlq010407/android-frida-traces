.class public Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/DraftsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoryDraft"
.end annotation


# instance fields
.field public audioAuthor:Ljava/lang/String;

.field public audioDuration:J

.field public audioLeft:F

.field public audioOffset:J

.field public audioPath:Ljava/lang/String;

.field public audioRight:F

.field public audioTitle:Ljava/lang/String;

.field public audioVolume:F

.field public averageDuration:J

.field public botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public botId:J

.field public botLang:Ljava/lang/String;

.field public caption:Ljava/lang/String;

.field public captionEntities:Ljava/util/ArrayList;

.field public collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

.field public collageParts:Ljava/util/ArrayList;

.field public crop:Lorg/telegram/messenger/MediaController$CropState;

.field public date:J

.field public duration:J

.field public editDocumentId:J

.field public editExpireDate:J

.field public editPhotoId:J

.field public editStoryId:I

.field public editStoryPeerId:J

.field public error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public file:Ljava/lang/String;

.field public fileDeletable:Z

.field private filterFilePath:Ljava/lang/String;

.field private filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field public fullThumb:Ljava/lang/String;

.field public gradientBottomColor:I

.field public gradientTopColor:I

.field public height:I

.field public id:J

.field public invert:I

.field public isEdit:Z

.field public isError:Z

.field public isVideo:Z

.field public left:J

.field public final matrixValues:[F

.field public mediaEntities:Ljava/util/ArrayList;

.field public muted:Z

.field public orientation:I

.field public paintEntitiesFilePath:Ljava/lang/String;

.field public paintFilePath:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private period:I

.field public final privacyRules:Ljava/util/ArrayList;

.field public resultHeight:I

.field public resultWidth:I

.field public right:J

.field public roundDuration:J

.field public roundLeft:F

.field public roundOffset:J

.field public roundPath:Ljava/lang/String;

.field public roundRight:F

.field public roundThumb:Ljava/lang/String;

.field public roundVolume:F

.field public stickers:Ljava/util/List;

.field public thumb:Ljava/lang/String;

.field public videoVolume:F

.field public width:I


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, -0x4e94ff4b

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "StoryDraft parse error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    array-length v4, v3

    if-ge v2, v4, :cond_4

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const v3, 0x1cb5c415

    if-eq v2, v3, :cond_7

    if-nez p2, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (1)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v5, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_b

    if-nez p2, :cond_a

    return-void

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (2)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_c

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_f

    if-nez p2, :cond_e

    return-void

    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (3)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_11

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    if-nez v5, :cond_10

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v7, p2}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>(Lorg/telegram/tgnet/AbstractSerializedData;ZZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_11
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_13

    if-nez p2, :cond_12

    return-void

    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (4)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_15

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-nez v5, :cond_14

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    :cond_14
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_15
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    :cond_16
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const v4, 0x56730bcc

    if-ne v2, v4, :cond_17

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    goto :goto_5

    :cond_17
    const v5, -0x4e94ff4a

    if-ne v2, v5, :cond_18

    new-instance v2, Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {v2}, Lorg/telegram/messenger/MediaController$SavedFilterState;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/MediaController$SavedFilterState;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_18
    :goto_5
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    const/4 v5, 0x4

    if-lt v2, v5, :cond_19

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    :cond_19
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    if-lez v2, :cond_1c

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_1b

    if-nez p2, :cond_1a

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (5)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    :cond_1c
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    if-lez v2, :cond_1d

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryPeerId:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    :cond_1d
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1e

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    :cond_1e
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    if-lez v2, :cond_20

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-ne v2, v4, :cond_1f

    :goto_6
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    goto :goto_7

    :cond_1f
    invoke-static {p1, v2, p2}, Lorg/telegram/tgnet/TLRPC$TL_error;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_error;

    move-result-object v1

    goto :goto_6

    :goto_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    :cond_20
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_23

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    const v2, -0x67ad063a

    if-ne v1, v2, :cond_23

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    const v2, -0x48e18986

    if-ne v1, v2, :cond_21

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    if-ne v1, v2, :cond_22

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    :cond_22
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    :cond_23
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_24

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_24
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_25

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    const v2, 0x43c57c48

    if-ne v1, v2, :cond_25

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundDuration:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundOffset:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundLeft:F

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundRight:F

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    :cond_25
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_26

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    :cond_26
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_27

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botId:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botLang:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    if-eq v1, v4, :cond_27

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$InputMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    :cond_27
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_28

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    const v2, -0x21524111

    if-ne v1, v2, :cond_28

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo$Part;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo$Part;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/VideoEditedInfo$Part;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_28
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v0

    if-lez v0, :cond_29

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x44a3abcd

    if-ne v0, v1, :cond_29

    new-instance v0, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->crop:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MediaController$CropState;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_29
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 10

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    iget-wide v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    iget-wide v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v7, v5

    mul-float v3, v3, v7

    float-to-long v8, v3

    iput-wide v8, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    mul-float v3, v3, v7

    float-to-long v7, v3

    iput-wide v7, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    iput-wide v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    iget v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    new-array v6, v0, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v3, v6, v0}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v5

    :goto_3
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    move-object v0, v4

    goto :goto_4

    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-nez v0, :cond_5

    move-object v0, v4

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-nez v0, :cond_6

    move-object v0, v4

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7
    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    :goto_8
    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundThumb:Ljava/lang/String;

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundDuration:J

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundOffset:J

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundLeft:F

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundRight:F

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botId:J

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botLang:Ljava/lang/String;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-static {p1}, Lorg/telegram/messenger/VideoEditedInfo$Part;->toParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getObjectSize()I
    .locals 2

    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->length()I

    move-result v0

    return v0
.end method

.method public toEntry()Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 10

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    long-to-float v4, v4

    long-to-float v2, v2

    div-float/2addr v4, v2

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    long-to-float v3, v3

    div-float/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    if-eqz v2, :cond_5

    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    if-nez v3, :cond_4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->createCommonMessageResources()V

    :cond_4
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    :goto_1
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_5
    const-string v1, ""

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    :cond_7
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryPeerId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundThumb:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundOffset:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundLeft:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundRight:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botLang:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/VideoEditedInfo$Part;->toStoryEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 6

    const v0, -0x4e94ff4b

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    const v1, 0x1cb5c415

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual {v4, p1, v3}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->serializeTo(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    const-string v4, ""

    if-nez v2, :cond_9

    move-object v2, v4

    :cond_9
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    const v5, 0x56730bcc

    if-nez v2, :cond_a

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_9

    :cond_a
    const v2, -0x4e94ff4a

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MediaController$SavedFilterState;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :goto_9
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryPeerId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_b

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_a

    :cond_b
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_error;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    if-nez v0, :cond_c

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_d

    :cond_c
    const v0, -0x67ad063a

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    const v1, -0x48e18986

    if-nez v0, :cond_d

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_b

    :cond_d
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :goto_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    if-nez v0, :cond_e

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_c

    :cond_e
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :goto_c
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    :goto_d
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    goto :goto_e

    :cond_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :goto_e
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_f

    :cond_10
    const v0, 0x43c57c48

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundDuration:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundOffset:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundLeft:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundRight:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->roundVolume:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    :goto_f
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->videoVolume:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botLang:Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_10

    :cond_11
    move-object v4, v0

    :goto_10
    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    if-nez v0, :cond_12

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_11

    :cond_12
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :goto_11
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_13

    goto :goto_13

    :cond_13
    const v0, -0x21524111

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/VideoEditedInfo$Part;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/VideoEditedInfo$Part;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    goto :goto_12

    :cond_14
    :goto_13
    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v0, :cond_16

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_14

    :cond_16
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaController$CropState;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :goto_14
    return-void
.end method

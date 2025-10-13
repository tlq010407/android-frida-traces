.class public Lorg/telegram/ui/Stories/recorder/StoryEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;,
        Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;
    }
.end annotation


# instance fields
.field public allowScreenshots:Z

.field public audioAuthor:Ljava/lang/String;

.field public audioDuration:J

.field public audioLeft:F

.field public audioOffset:J

.field public audioPath:Ljava/lang/String;

.field public audioRight:F

.field public audioTitle:Ljava/lang/String;

.field public audioVolume:F

.field public averageDuration:J

.field public backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public backgroundFile:Ljava/io/File;

.field public backgroundWallpaperEmoticon:Ljava/lang/String;

.field public backgroundWallpaperPeerId:J

.field public blurredVideoThumb:Landroid/graphics/Bitmap;

.field public botId:J

.field public botLang:Ljava/lang/String;

.field public caption:Ljava/lang/CharSequence;

.field public captionEntitiesAllowed:Z

.field private checkStickersReqId:I

.field public collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

.field public collageContent:Ljava/util/ArrayList;

.field public cover:J

.field public coverBitmap:Landroid/graphics/Bitmap;

.field public coverSet:Z

.field public crop:Lorg/telegram/messenger/MediaController$CropState;

.field public final currentAccount:I

.field public draftDate:J

.field public draftId:J

.field public draftThumbFile:Ljava/io/File;

.field public duration:J

.field public editDocumentId:J

.field public editExpireDate:J

.field public editPhotoId:J

.field public editStickers:Ljava/util/List;

.field public editStoryId:I

.field public editStoryPeerId:J

.field public editedCaption:Z

.field public editedMedia:Z

.field public editedMediaAreas:Ljava/util/ArrayList;

.field public editedPrivacy:Z

.field public editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field public error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public file:Ljava/io/File;

.field public fileDeletable:Z

.field public fileDuration:D

.field public filterFile:Ljava/io/File;

.field public filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field private fromCamera:Z

.field public gradientBottomColor:I

.field public gradientTopColor:I

.field public hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

.field public height:I

.field public invert:I

.field public isDark:Z

.field public isDraft:Z

.field public isEdit:Z

.field public isEditSaved:Z

.field public isEditingCover:Z

.field public isError:Z

.field public isRepost:Z

.field public isRepostMessage:Z

.field public isVideo:Z

.field public left:F

.field public final matrix:Landroid/graphics/Matrix;

.field public mediaEntities:Ljava/util/ArrayList;

.field public messageFile:Ljava/io/File;

.field public messageObjects:Ljava/util/ArrayList;

.field public messageVideoMaskFile:Ljava/io/File;

.field public muted:Z

.field public orientation:I

.field public paintBlurFile:Ljava/io/File;

.field public paintEntitiesFile:Ljava/io/File;

.field public paintFile:Ljava/io/File;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public period:I

.field public pinned:Z

.field public privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

.field public final privacyRules:Ljava/util/ArrayList;

.field public repostCaption:Ljava/lang/String;

.field public repostMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public repostPeer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public repostPeerName:Ljava/lang/CharSequence;

.field public repostStoryId:I

.field public resultHeight:I

.field public resultWidth:I

.field public right:F

.field public round:Ljava/io/File;

.field public roundDuration:J

.field public roundLeft:F

.field public roundOffset:J

.field public roundRight:F

.field public roundThumb:Ljava/lang/String;

.field public roundVolume:F

.field public scheduleDate:I

.field public shareUserIds:Ljava/util/ArrayList;

.field public silent:Z

.field public stickers:Ljava/util/List;

.field public thumbBitmap:Landroid/graphics/Bitmap;

.field public thumbPath:Ljava/lang/String;

.field public thumbPathBitmap:Landroid/graphics/Bitmap;

.field public updateDocumentRef:Lorg/telegram/messenger/Utilities$Callback;

.field public uploadThumbFile:Ljava/io/File;

.field public videoLeft:F

.field public videoLoop:Z

.field public videoOffset:J

.field public videoRight:F

.field public videoVolume:F

.field public width:I


# direct methods
.method public static synthetic $r8$lambda$-LPOWJxo20PNSUJsdJkiigxMu14(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$4(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$-LXUfdVqgqjkn3OPlMUMJMISS-M(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$checkStickers$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1OOyTYUgvqNne_axFzTZTiCLD_E(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$2(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1xqTUSrQQ2dYduuDfFVEPTC6KXY(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$detectHDR$12(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ae-fTtakoYm6_u-moVGWyXi9PQI(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$checkStickers$16(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EUeGHoSOs8zXahaxowCLuq3i09o(Ljava/lang/String;[[ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$getVideoEditedInfo$11(Ljava/lang/String;[[ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H6dmbGYF3l9IaDiz6ctKYYobTL8([Ljava/lang/String;[[ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$getVideoEditedInfo$10([Ljava/lang/String;[[ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHHPUlYH86ib8KyQczLcR_lQ6LE(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$0(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TD6AEcXvX7Srlmbowqorv2rdYU8(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/String;[[ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$getVideoEditedInfo$9(Ljava/lang/String;[[ILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TSN5EM8OSuSg-WH-tNytlut3uso(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$detectHDR$13(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bn3NXI1ZgknZFF3FZZLeS1gFIKc(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$setupGradient$8(Ljava/lang/Runnable;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$g6zd4WjZ6N6os63CZGZgQgxCQmc(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$updateFilter$6(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g_edLyp54xvYNOwUWnO55mF6loA(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$5(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jL_8R1zwjTR3nzIiM0RSM6HP65k(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$checkStickers$14(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$odi6BzU-Z_F_TrRDE93WhUENqpI(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$3(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qDr-FM-3QRDmUaVcieDPw5Jzl-Q(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$1(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sszhObw9gQqDSz3_tfBkPZcUeUs(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;Ljava/lang/Runnable;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$setupGradient$7(Landroid/graphics/Bitmap;Ljava/lang/Runnable;[I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLoop:Z

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    const/16 v2, 0x2d0

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 v2, 0x500

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    const v0, 0x15180

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    return-void
.end method

.method public static asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v1, 0x0

    iput v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    iget-wide v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v1, v1

    const v2, 0x47667800    # 59000.0f

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    goto :goto_0

    :cond_1
    iget-boolean p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x2d0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const/16 p1, 0x500

    :goto_1
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    goto :goto_2

    :cond_2
    const/16 p0, 0x438

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const/16 p1, 0x780

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_1
    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static canRepostMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_8

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iget v3, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-eqz v4, :cond_3

    return v0

    :cond_3
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-gez v7, :cond_5

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v1, :cond_8

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_8

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget p0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long v7, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    cmp-long v3, v1, v5

    if-gez v3, :cond_8

    if-eqz p0, :cond_6

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-nez v1, :cond_8

    :cond_6
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    return v4

    :cond_8
    :goto_1
    return v0
.end method

.method public static drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float p2, p2

    int-to-float v4, v4

    div-float/2addr p2, v4

    int-to-float p3, p3

    int-to-float v2, v2

    div-float/2addr p3, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float v4, v4, p2

    float-to-int p3, v4

    mul-float v2, v2, p2

    float-to-int p2, v2

    invoke-virtual {p1, v3, v3, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private ext(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static fromPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 5

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const/4 v3, 0x0

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float v1, v1

    const v2, 0x47667800    # 59000.0f

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vthumb://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    if-lez v1, :cond_1

    iget p0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    if-lez p0, :cond_1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    return-object v0
.end method

.method public static fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    const/4 p1, 0x0

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iput-boolean p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    return-object v0
.end method

.method public static fromStoryItem(Ljava/io/File;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 9

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    const/16 v3, 0x2d0

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const/16 v3, 0x500

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_0

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    instance-of p0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz p0, :cond_6

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iget-object p0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_1

    iget p0, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget p0, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p0, :cond_6

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz p0, :cond_6

    :goto_2
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_6

    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_4

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_4
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toInput(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    sub-int/2addr p0, v2

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    :try_start_0
    new-instance p0, Landroid/text/SpannableString;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p0

    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickers(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    iget p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object v0
.end method

.method public static fromVideoShoot(Ljava/io/File;Ljava/lang/String;J)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    const/4 p0, 0x0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-wide p2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float p0, p2

    const p1, 0x47686c00    # 59500.0f

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    return-object v0
.end method

.method public static getCoverTime(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_4

    return-wide v0

    :cond_4
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->video_start_ts:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    :cond_5
    :goto_2
    return-wide v0
.end method

.method public static getRepostDialogId(Lorg/telegram/messenger/MessageObject;)J
    .locals 2

    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->useForwardForRepost(Lorg/telegram/messenger/MessageObject;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRepostMessageId(Lorg/telegram/messenger/MessageObject;)I
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->useForwardForRepost(Lorg/telegram/messenger/MessageObject;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    return p0
.end method

.method public static getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    sub-long/2addr v9, v11

    sub-long/2addr v7, v9

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v10, v6, v9

    int-to-long v10, v10

    const-wide/16 v12, 0x4

    mul-long v10, v10, v12

    mul-int v14, v1, v2

    int-to-long v14, v14

    mul-long v14, v14, v12

    add-long/2addr v10, v14

    long-to-double v10, v10

    const-wide v12, 0x3ff199999999999aL    # 1.1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    long-to-double v7, v7

    cmpg-double v12, v10, v7

    if-gtz v12, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-gt v6, v1, :cond_1

    if-gt v9, v2, :cond_1

    invoke-interface {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p4, :cond_2

    if-eqz v7, :cond_2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v6

    if-lt v6, v4, :cond_2

    invoke-interface {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v0, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v11, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {v11, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v9, 0x8

    invoke-static {v0, v9, v5}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v8, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    int-to-float v9, v2

    int-to-float v10, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v4

    :cond_2
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-interface {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v1, "video/webm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v2, "video/mp4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v2, 0x1

    cmp-long v0, p0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$buildBitmap$0(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$buildBitmap$1(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$buildBitmap$2(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$buildBitmap$3(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$buildBitmap$4(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$buildBitmap$5(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$checkStickers$14(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    instance-of v1, p1, Lorg/telegram/tgnet/Vector;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    check-cast p1, Lorg/telegram/tgnet/Vector;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v3, :cond_0

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_0
    if-nez v3, :cond_1

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v4, :cond_1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_1
    if-eqz v3, :cond_2

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$checkStickers$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkStickers$16(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p5, :cond_0

    iget-object v0, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget p4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object p4

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    const/4 p2, 0x1

    aput-object p3, p5, p2

    invoke-virtual {p4, p1, p5}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p3, p4, p5}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$detectHDR$12(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$detectHDR$13(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    const-string v0, "color-range"

    const-string v1, "color-standard"

    const-string v2, "color-transfer"

    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    if-nez v3, :cond_0

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    const/high16 v4, 0x447a0000    # 1000.0f

    iput v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->maxlum:F

    const v4, 0x3a83126f    # 0.001f

    iput v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->minlum:F

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorTransfer:I

    :cond_1
    invoke-virtual {v4, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorStandard:I

    :cond_2
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static synthetic lambda$getVideoEditedInfo$10([Ljava/lang/String;[[ILjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$getVideoEditedInfo$11(Ljava/lang/String;[[ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getVideoEditedInfo$9(Ljava/lang/String;[[ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->isStory:Z

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    iput-boolean v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->fromCamera:Z

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->messagePath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->messageVideoMaskPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->backgroundPath:Ljava/lang/String;

    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iget v7, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    invoke-static {v4, v6, v7, v3}, Lorg/telegram/messenger/MediaController;->extractRealEncoderBitrate(IIIZ)I

    move-result v4

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v9, 0x4

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide/16 v16, 0x3e8

    if-eqz v6, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v6

    if-nez v6, :cond_8

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    iput-boolean v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    aget-object v6, p2, v13

    const/16 v18, 0x7

    aget v6, v6, v18

    const/16 v14, 0x3b

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MediaController;->getVideoBitrate(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v12, :cond_4

    aget-object v1, p2, v13

    const/4 v6, 0x3

    aget v1, v1, v6

    :cond_4
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    const v6, 0xf4240

    if-ge v1, v6, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x1e8480

    :goto_4
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    iput v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    goto :goto_5

    :cond_5
    iget v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    const v6, 0x7a120

    if-ge v1, v6, :cond_6

    const v1, 0x2625a0

    goto :goto_4

    :cond_6
    const v12, 0x2dc6c0

    invoke-static {v1, v12, v6}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v1

    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "story bitrate, original = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " => "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    aget-object v1, p2, v13

    aget v6, v1, v9

    int-to-long v12, v6

    iput-wide v12, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    mul-long v14, v12, v16

    iput-wide v14, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float v12, v12

    mul-float v9, v9, v12

    float-to-long v13, v9

    mul-long v13, v13, v16

    iput-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    mul-float v9, v9, v12

    float-to-long v10, v9

    mul-long v10, v10, v16

    iput-wide v10, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    sub-long/2addr v10, v13

    iput-wide v10, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iput v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->volume:F

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    const/4 v9, 0x5

    aget v1, v1, v9

    int-to-float v1, v1

    int-to-float v6, v6

    div-float/2addr v6, v8

    int-to-float v4, v4

    mul-float v6, v6, v4

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    float-to-long v6, v1

    iput-wide v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-wide v8, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    :goto_6
    iput-object v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->blurPath:Ljava/lang/String;

    const-wide/16 v9, 0x0

    goto/16 :goto_10

    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_9
    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    :goto_7
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v13, v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v10, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v10, :cond_a

    iget v1, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    aget-object v10, p2, v13

    aget v10, v10, v3

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v1, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    aget-object v10, p2, v13

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget-wide v10, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    aget-object v1, p2, v13

    aget v1, v1, v9

    int-to-long v14, v1

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const/4 v1, 0x1

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_b
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/VideoEditedInfo$Part;->toParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    if-nez v1, :cond_c

    goto/16 :goto_d

    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v6, v5

    const-wide/16 v9, 0x0

    :cond_d
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/VideoEditedInfo$Part;

    iget-boolean v13, v11, Lorg/telegram/messenger/VideoEditedInfo$Part;->isVideo:Z

    if-eqz v13, :cond_d

    iget-wide v13, v11, Lorg/telegram/messenger/VideoEditedInfo$Part;->duration:J

    cmp-long v15, v13, v9

    if-lez v15, :cond_d

    move-object v6, v11

    move-wide v9, v13

    goto :goto_8

    :cond_e
    if-eqz v6, :cond_14

    iget-wide v9, v6, Lorg/telegram/messenger/VideoEditedInfo$Part;->duration:J

    long-to-float v1, v9

    iget v9, v6, Lorg/telegram/messenger/VideoEditedInfo$Part;->right:F

    iget v10, v6, Lorg/telegram/messenger/VideoEditedInfo$Part;->left:F

    sub-float/2addr v9, v10

    mul-float v9, v9, v1

    float-to-long v13, v9

    iput-wide v13, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    iput-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    iget-wide v13, v6, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    mul-float v10, v10, v1

    float-to-long v9, v10

    add-long/2addr v13, v9

    neg-long v9, v13

    iput-wide v9, v6, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/VideoEditedInfo$Part;

    iget-boolean v13, v11, Lorg/telegram/messenger/VideoEditedInfo$Part;->isVideo:Z

    if-eqz v13, :cond_f

    if-eq v11, v6, :cond_f

    iget-wide v13, v11, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    add-long/2addr v13, v9

    iput-wide v13, v11, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    goto :goto_9

    :cond_10
    :goto_a
    const-wide/16 v13, -0x1

    goto :goto_f

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v1, :cond_12

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    sub-float/2addr v1, v6

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    :goto_b
    long-to-float v6, v9

    mul-float v1, v1, v6

    float-to-long v9, v1

    :goto_c
    iput-wide v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    iput-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    goto :goto_e

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    sub-float/2addr v1, v6

    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    goto :goto_b

    :cond_13
    :goto_d
    iget-wide v9, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    goto :goto_c

    :cond_14
    :goto_e
    const-wide/16 v9, 0x0

    goto :goto_a

    :goto_f
    iput-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    iput-wide v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    iput v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->volume:F

    iput v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/16 v1, 0x1e

    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v1, v11

    div-float/2addr v1, v8

    int-to-float v4, v4

    mul-float v1, v1, v4

    div-float/2addr v1, v7

    float-to-long v6, v1

    iput-wide v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    iput-object v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    :goto_10
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->account:I

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    iput-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->wallpaperPeerId:J

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    iput-boolean v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->isDark:Z

    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController$CropState;->clone()Lorg/telegram/messenger/MediaController$CropState;

    move-result-object v1

    :goto_11
    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    goto :goto_12

    :cond_15
    new-instance v1, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    goto :goto_11

    :goto_12
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v1, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->gradientTopColor:Ljava/lang/Integer;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->gradientBottomColor:Ljava/lang/Integer;

    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->forceFragmenting:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-nez v1, :cond_17

    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->collageParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$Part;

    iget-boolean v4, v3, Lorg/telegram/messenger/VideoEditedInfo$Part;->isVideo:Z

    if-eqz v4, :cond_16

    iget v4, v3, Lorg/telegram/messenger/VideoEditedInfo$Part;->volume:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    iget-boolean v4, v3, Lorg/telegram/messenger/VideoEditedInfo$Part;->muted:Z

    if-nez v4, :cond_16

    new-instance v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$Part;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lorg/telegram/messenger/VideoEditedInfo$Part;->volume:F

    iput v5, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    iget v5, v3, Lorg/telegram/messenger/VideoEditedInfo$Part;->left:F

    iget-wide v6, v3, Lorg/telegram/messenger/VideoEditedInfo$Part;->duration:J

    long-to-float v6, v6

    mul-float v7, v5, v6

    float-to-long v7, v7

    mul-long v7, v7, v16

    iput-wide v7, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    iget-wide v7, v3, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    mul-long v7, v7, v16

    iput-wide v7, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    iget v3, v3, Lorg/telegram/messenger/VideoEditedInfo$Part;->right:F

    sub-float/2addr v3, v5

    mul-float v3, v3, v6

    float-to-long v5, v3

    mul-long v5, v5, v16

    iput-wide v5, v4, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v1, :cond_1a

    new-instance v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;-><init>(Ljava/lang/String;)V

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    iput v1, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    long-to-float v4, v4

    mul-float v5, v1, v4

    float-to-long v5, v5

    mul-long v5, v5, v16

    iput-wide v5, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v7, :cond_18

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    long-to-float v7, v7

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v11, v11

    mul-float v8, v8, v11

    sub-float/2addr v7, v8

    float-to-long v7, v7

    mul-long v7, v7, v16

    iput-wide v7, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    const-wide/16 v7, 0x0

    goto :goto_14

    :cond_18
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    :goto_14
    iget-wide v11, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    add-long/2addr v11, v9

    iput-wide v11, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    cmp-long v13, v11, v7

    if-gez v13, :cond_19

    sub-long/2addr v5, v11

    iput-wide v5, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    iput-wide v7, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    :cond_19
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    sub-float/2addr v5, v1

    mul-float v5, v5, v4

    float-to-long v4, v5

    mul-long v4, v4, v16

    iput-wide v4, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v1, :cond_1d

    new-instance v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;-><init>(Ljava/lang/String;)V

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iput v1, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v4, v4

    mul-float v5, v1, v4

    float-to-long v5, v5

    mul-long v5, v5, v16

    iput-wide v5, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v7, :cond_1b

    iget-wide v7, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    long-to-float v7, v7

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v11, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v11, v11

    mul-float v8, v8, v11

    sub-float/2addr v7, v8

    float-to-long v7, v7

    mul-long v7, v7, v16

    iput-wide v7, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    const-wide/16 v7, 0x0

    goto :goto_15

    :cond_1b
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    :goto_15
    iget-wide v11, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    add-long/2addr v11, v9

    iput-wide v11, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    cmp-long v9, v11, v7

    if-gez v9, :cond_1c

    sub-long/2addr v5, v11

    iput-wide v5, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    iput-wide v7, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    :cond_1c
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    sub-float/2addr v5, v1

    mul-float v5, v5, v4

    float-to-long v4, v5

    mul-long v4, v4, v16

    iput-wide v4, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    move-object/from16 v1, p3

    invoke-interface {v1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setupGradient$7(Landroid/graphics/Bitmap;Ljava/lang/Runnable;[I)V
    .locals 1

    const/4 v0, 0x0

    aget v0, p3, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v0, 0x1

    aget p3, p3, v0

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupGradient$8(Ljava/lang/Runnable;[I)V
    .locals 1

    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v0, 0x1

    aget p2, p2, v0

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFilter$6(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V
    .locals 3

    const/16 v0, 0x5a

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    if-eqz p2, :cond_1

    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-static {p2, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static makeCacheFile(ILjava/lang/String;)Ljava/io/File;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    const-wide/32 v1, -0x80000000

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/high16 v1, -0x80000000

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    const-string v1, "mp4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "webm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static makeCacheFile(IZ)Ljava/io/File;
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    const-string p1, "mp4"

    goto :goto_0

    :cond_0
    const-string p1, "jpg"

    :goto_0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static repostMessage(Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 5

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    const/16 v2, 0x438

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 v2, 0x780

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getRepostDialogId(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    const/4 v4, 0x6

    iput-byte v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iput v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/MessageObject;

    if-eqz p0, :cond_5

    iget v3, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const/4 p0, 0x0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float p0, v1

    const v1, 0x47686c00    # 59500.0f

    div-float/2addr v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static repostStoryItem(Ljava/io/File;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 5

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostMedia:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostStoryId:I

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostCaption:Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    const/16 v3, 0x2d0

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const/16 v3, 0x500

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_0

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    instance-of p0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz p0, :cond_6

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iget-object p0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_1

    iget p0, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget p0, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p0, :cond_6

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    goto :goto_4

    :cond_3
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz p0, :cond_6

    :goto_2
    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_6

    iget-object p0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_4

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_4
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickers(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-object v0
.end method

.method public static setupScale(Landroid/graphics/BitmapFactory$Options;II)V
    .locals 7

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget p2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v3, p2, v2

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    mul-long v3, v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, 0x1068

    if-gt p2, v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-gtz p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget p2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_1
    return-void
.end method

.method public static useForwardForRepost(Lorg/telegram/messenger/MessageObject;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget v3, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_5

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget p0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_5

    if-eqz p0, :cond_3

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-nez v1, :cond_5

    :cond_3
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    :goto_0
    return-object v0

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    :goto_1
    return-object v0
.end method


# virtual methods
.method public buildBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 26

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v0, 0x7

    invoke-direct {v6, v0}, Landroid/graphics/Paint;-><init>(I)V

    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v7, v0

    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v8, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-static {v0, v7, v8, v13, v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    iget v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v10, v13

    invoke-virtual {v15, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v15, v0, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v15}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v15

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperEmoticon:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_1

    iget v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-boolean v13, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    invoke-static {v10, v0, v13}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_1
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {v15}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-static {v15, v10, v0, v13}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    :cond_2
    iget-wide v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v0, v12, v18

    if-eqz v0, :cond_4

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-boolean v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    invoke-static {v14, v0, v12, v13, v10}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v15}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-static {v15, v0, v10, v12}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v11}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v10, Landroid/graphics/LinearGradient;

    invoke-virtual {v15}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iget v11, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    filled-new-array {v13, v11}, [I

    move-result-object v23

    new-array v11, v4, [F

    fill-array-data v11, :array_0

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, v10

    move/from16 v22, v12

    move-object/from16 v24, v11

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    int-to-float v13, v10

    invoke-virtual {v15}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    int-to-float v12, v10

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object v10, v15

    const/4 v4, 0x1

    move/from16 v17, v12

    move/from16 v12, v18

    move/from16 v14, v17

    move-object v4, v15

    move-object v15, v0

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz v3, :cond_5

    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object/from16 v16, v9

    goto/16 :goto_10

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v13, 0x0

    :goto_2
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_9

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :goto_3
    if-eqz v3, :cond_8

    :try_start_1
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda5;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda5;-><init>(Ljava/io/File;)V

    const/4 v10, 0x1

    invoke-static {v0, v7, v8, v10, v10}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v3

    iget-object v14, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    div-int/lit8 v14, v14, 0x5a

    const/4 v15, 0x2

    rem-int/2addr v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v16, v9

    :goto_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_7
    :goto_5
    iget-object v14, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v14, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-float v15, v7

    move-object/from16 v16, v9

    int-to-float v9, v8

    :try_start_2
    invoke-virtual {v14, v10, v15, v9}, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->bounds(Landroid/graphics/RectF;FF)V

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v4, v9, v14}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v9

    neg-float v9, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v9, v14

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v15

    neg-float v15, v15

    div-float/2addr v15, v14

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v18, v6

    div-float v6, v17, v14

    :try_start_3
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v17

    div-float v2, v17, v14

    invoke-virtual {v4, v9, v15, v6, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v6, v11

    div-float/2addr v2, v6

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v9, v12

    div-float/2addr v6, v9

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v14

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v4, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_6
    const/4 v6, 0x1

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_4

    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    move-object/from16 v18, v6

    move-object/from16 v16, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_6

    :goto_8
    add-int/2addr v13, v6

    move/from16 v2, p1

    move-object/from16 v9, v16

    move-object/from16 v6, v18

    goto/16 :goto_2

    :cond_9
    move-object/from16 v16, v9

    const/4 v3, 0x0

    move/from16 v2, p1

    goto :goto_c

    :cond_a
    move-object/from16 v18, v6

    move-object/from16 v16, v9

    const/4 v3, 0x0

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :goto_9
    if-eqz v0, :cond_c

    :try_start_5
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda6;-><init>(Ljava/io/File;)V

    const/4 v6, 0x1

    invoke-static {v2, v7, v8, v6, v6}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move/from16 v2, p1

    :try_start_6
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v6, v18

    :try_start_7
    invoke-virtual {v4, v0, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    :goto_a
    move-object/from16 v6, v18

    goto :goto_b

    :catch_7
    move-exception v0

    move/from16 v2, p1

    goto :goto_a

    :goto_b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_c
    move/from16 v2, p1

    move-object/from16 v6, v18

    :goto_c
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_d

    :try_start_8
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_9
    invoke-static {v0, v7, v8, v9, v10}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    iget v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v4, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v4, v0, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    const/4 v9, 0x0

    :goto_d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_d
    const/4 v9, 0x0

    :goto_e
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    if-eqz v0, :cond_e

    :try_start_a
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    const/4 v10, 0x1

    invoke-static {v0, v7, v8, v9, v10}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    iget v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v4, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v4, v0, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_e
    :goto_f
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_f

    :try_start_b
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    const/4 v10, 0x1

    invoke-static {v0, v7, v8, v9, v10}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    iget v7, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v4, v0, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_f
    :goto_10
    return-object v16

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildPhoto(Ljava/io/File;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/16 v1, 0x16

    const/4 v2, 0x1

    const/16 v3, 0x28

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public cancelCheckStickers()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    return-void
.end method

.method public checkStickers(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 7

    if-eqz p1, :cond_6

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;-><init>()V

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    if-nez v2, :cond_2

    new-array v2, v3, [B

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    :cond_2
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isDocumentHasAttachedStickers(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;-><init>()V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v1, :cond_5

    new-array v1, v3, [B

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    :cond_5
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    :goto_0
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    :cond_6
    :goto_1
    return-void
.end method

.method public clearFilter()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public clearPaint()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    :cond_4
    return-void
.end method

.method public copy()Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->copy(Z)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    return-object v0
.end method

.method public copy(Z)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 3

    .line 0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    :cond_7
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual {v2}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->copy()Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFileSafe(Ljava/io/File;Ljava/io/File;)Z

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLoop:Z

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLoop:Z

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    return-object p1
.end method

.method public cutIntoEntries()Ljava/util/ArrayList;
    .locals 14

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v0, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    sub-float/2addr v0, v4

    long-to-float v2, v2

    mul-float v0, v0, v2

    float-to-long v2, v0

    const-wide/32 v4, 0x10d87

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v4, v4

    const v5, 0x47667800    # 59000.0f

    div-float/2addr v5, v4

    add-float/2addr v1, v5

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v4, 0xe678

    move-wide v6, v4

    :goto_0
    cmp-long v1, v6, v2

    if-gez v1, :cond_3

    sub-long v8, v2, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    cmp-long v1, v8, v10

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->copy(Z)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget v10, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float v11, v6

    iget-wide v12, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget v10, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    add-long/2addr v8, v6

    long-to-float v8, v8

    div-float/2addr v8, v12

    add-float/2addr v10, v8

    iput v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    const-string v8, ""

    iput-object v8, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    add-long/2addr v6, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public decodeBounds(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    mul-float v0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    const/16 v0, 0x384

    if-gt p1, v0, :cond_1

    const/16 p1, 0x2d0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 p1, 0x500

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    goto :goto_2

    :cond_1
    const/16 p1, 0x438

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 p1, 0x780

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public destroy(Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    :cond_1
    if-nez p1, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearPaint()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearFilter()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-byte v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    iget-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    const-string v3, ""

    iput-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v0, :cond_a

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-eqz v2, :cond_a

    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-eqz v0, :cond_c

    :cond_b
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    :cond_c
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cancelCheckStickers()V

    return-void
.end method

.method public detectHDR(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    :goto_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public getOriginalFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v0, :cond_2

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    sub-float/2addr v0, v4

    long-to-float v2, v2

    mul-float v0, v0, v2

    float-to-long v2, v0

    const-wide/32 v4, 0x10d87

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    long-to-float v0, v2

    const v1, 0x47667800    # 59000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getVideoEditedInfo(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    if-gt v0, v3, :cond_1

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    if-le v4, v2, :cond_2

    :cond_1
    int-to-float v0, v0

    const/high16 v4, 0x44340000    # 720.0f

    div-float/2addr v4, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/16 v6, 0xb

    aput v6, v5, v4

    aput v2, v5, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    new-array v4, v6, [I

    aput-object v4, v2, v3

    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/String;[[ILorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, p1, v3

    new-array v0, v6, [I

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, v2, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda11;-><init>([Ljava/lang/String;[[ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez p1, :cond_8

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    :cond_8
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, v2, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;[[ILjava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :goto_4
    return-void
.end method

.method public hasVideo()Z
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isCollage()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setupGradient(Ljava/lang/Runnable;)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const-string v3, "vthumb://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xf0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v5, v2

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v6, v1, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, v4, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v6, v1, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    invoke-static {v0, v4, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    :goto_1
    invoke-static {v1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public setupMatrix()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix(Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public setupMatrix(Landroid/graphics/Matrix;I)V
    .locals 9

    .line 0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    add-int/2addr v2, p2

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    if-ne p2, v3, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    const/4 v6, 0x2

    if-ne p2, v6, :cond_1

    const/high16 v4, -0x40800000    # -1.0f

    :cond_1
    int-to-float p2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p2, v5

    int-to-float v6, v1

    div-float/2addr v6, v5

    invoke-virtual {p1, v3, v4, p2, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v2, :cond_4

    neg-int p2, v0

    int-to-float p2, p2

    div-float/2addr p2, v5

    neg-int v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p1, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p2, v2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 p2, 0x5a

    if-eq v2, p2, :cond_2

    const/16 p2, 0x10e

    if-ne v2, p2, :cond_3

    :cond_2
    move v8, v1

    move v1, v0

    move v0, v8

    :cond_3
    int-to-float p2, v0

    div-float/2addr p2, v5

    int-to-float v2, v1

    div-float/2addr v2, v5

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_5

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_5
    int-to-float v2, v1

    div-float v3, v2, v0

    const v4, 0x3fa51eb8    # 1.29f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :cond_6
    :goto_1
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    mul-float v0, v0, p2

    sub-float/2addr v2, v0

    div-float/2addr v2, v5

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float v1, v1, p2

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public setupMultipleStoriesSelector()V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/32 v2, 0x10d88

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/32 v2, 0xe678

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iget-wide v6, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    sub-long/2addr v6, v0

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    long-to-float v0, v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    :cond_2
    return-void
.end method

.method public updateFilter(Lorg/telegram/ui/Components/PhotoFilterView;Ljava/lang/Runnable;)V
    .locals 9

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearFilter()V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->getSavedFilterState()Lorg/telegram/messenger/MediaController$SavedFilterState;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController$SavedFilterState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    const/high16 v1, -0x40800000    # -1.0f

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v6, v3, v1, v0, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "png"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "webp"

    if-nez v1, :cond_8

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    :cond_8
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    if-eqz v8, :cond_9

    goto :goto_2

    :cond_9
    const-string v2, "jpg"

    :goto_2
    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-nez p2, :cond_b

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz v8, :cond_a

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_a
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_3
    const/16 v1, 0x5a

    invoke-virtual {v0, p2, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    :cond_b
    sget-object p1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, v8, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_c
    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_d
    :goto_6
    return-void
.end method

.method public wouldBeVideo()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public wouldBeVideo(Ljava/util/ArrayList;)Z
    .locals 7

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-byte v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-nez v4, :cond_4

    iget-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    :cond_4
    if-ne v4, v1, :cond_6

    iget-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    invoke-static {v6, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v2
.end method

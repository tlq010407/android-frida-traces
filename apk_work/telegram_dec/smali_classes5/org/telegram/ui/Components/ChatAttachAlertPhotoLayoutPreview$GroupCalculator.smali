.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupCalculator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;
    }
.end annotation


# instance fields
.field height:F

.field private final maxSizeWidth:I

.field maxX:I

.field maxY:I

.field photos:Ljava/util/ArrayList;

.field public posArray:Ljava/util/ArrayList;

.field public positions:Ljava/util/HashMap;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

.field width:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->positions:Ljava/util/HashMap;

    const/16 p1, 0x3e8

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->maxSizeWidth:I

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->calculate()V

    return-void
.end method

.method private getLeft(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;III)F
    .locals 11

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eq v6, p1, :cond_0

    iget-byte v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-ge v7, p4, :cond_0

    iget-byte v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    invoke-static {v7, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v7, p2

    iget-byte v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    sub-int/2addr v8, p2

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_1
    if-gt v8, v7, :cond_0

    aget v9, v1, v8

    iget v10, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_3

    aget p1, v1, v4

    cmpg-float p2, v2, p1

    if-gez p2, :cond_2

    move v2, p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method private getTop(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;I)F
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->maxX:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eq v6, p1, :cond_0

    iget-byte v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ge v7, p2, :cond_0

    iget-byte v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    :goto_1
    iget-byte v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-gt v7, v8, :cond_0

    aget v8, v1, v7

    iget v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    add-float/2addr v8, v9

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_3

    aget p1, v1, v4

    cmpg-float p2, v2, p1

    if-gez p2, :cond_2

    move v2, p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method private multiHeight([FII)F
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    aget v1, p1, p2

    add-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public calculate()V
    .locals 45

    move-object/from16 v10, p0

    const/16 v13, 0x8

    const/4 v15, 0x2

    const/4 v9, 0x1

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->positions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez v8, :cond_0

    iput v6, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->width:I

    iput v7, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->height:F

    iput v6, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->maxX:I

    iput v6, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->maxY:I

    return-void

    :cond_0
    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    new-array v0, v8, [C

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    :goto_0
    const v16, 0x3f4ccccd    # 0.8f

    const v18, 0x3f99999a    # 1.2f

    if-ge v2, v8, :cond_c

    iget-object v11, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MediaController$PhotoEntry;

    new-instance v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-direct {v7}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;-><init>()V

    add-int/lit8 v5, v8, -0x1

    if-ne v2, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    iget-object v5, v11, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v5, :cond_2

    iget v14, v5, Lorg/telegram/messenger/MediaController$CropState;->width:I

    goto :goto_2

    :cond_2
    iget v14, v11, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    :goto_2
    if-eqz v5, :cond_3

    iget v5, v5, Lorg/telegram/messenger/MediaController$CropState;->height:I

    goto :goto_3

    :cond_3
    iget v5, v11, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    :goto_3
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->access$400()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->access$400()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_7

    :cond_4
    :try_start_0
    iget-boolean v1, v11, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_6

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v12, v11, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, v12}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v12, 0x18

    invoke-virtual {v1, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v12, "90"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "270"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :catch_0
    :cond_5
    :goto_4
    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    iget-object v12, v11, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v1, v12}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v12, "Orientation"

    invoke-virtual {v1, v12, v9}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x6

    if-eq v1, v12, :cond_7

    if-eq v1, v13, :cond_7

    goto :goto_4

    :cond_7
    :goto_5
    const/4 v1, 0x1

    :goto_6
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->access$400()Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-eqz v1, :cond_8

    move/from16 v44, v14

    move v14, v5

    move/from16 v5, v44

    :cond_8
    int-to-float v1, v14

    int-to-float v5, v5

    div-float/2addr v1, v5

    iput v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    cmpl-float v5, v1, v18

    if-lez v5, :cond_9

    const/16 v5, 0x77

    goto :goto_8

    :cond_9
    cmpg-float v5, v1, v16

    if-gez v5, :cond_a

    const/16 v5, 0x6e

    goto :goto_8

    :cond_a
    const/16 v5, 0x71

    :goto_8
    aput-char v5, v0, v2

    add-float/2addr v3, v1

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_b

    const/4 v4, 0x1

    :cond_b
    iget-object v1, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->positions:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v9

    const/4 v7, 0x0

    const/16 v13, 0x8

    goto/16 :goto_0

    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v5, v7

    div-float/2addr v0, v5

    float-to-int v11, v0

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    div-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v5, v8

    div-float v12, v3, v5

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const v13, 0x444b8000    # 814.0f

    div-float v14, v3, v13

    if-ne v8, v9, :cond_d

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBackgroundPaddingLeft()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    int-to-float v1, v1

    mul-float v1, v1, v16

    iget v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v1, v3

    div-float v23, v1, v2

    const/16 v22, 0x320

    const/16 v24, 0xf

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v24}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    :goto_9
    move/from16 v35, v8

    const/4 v5, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2a

    :cond_d
    const/4 v5, 0x4

    if-nez v4, :cond_e

    if-eq v8, v15, :cond_f

    const/4 v3, 0x3

    if-eq v8, v3, :cond_f

    if-ne v8, v5, :cond_e

    goto :goto_a

    :cond_e
    const/16 v15, 0x3e8

    goto/16 :goto_10

    :cond_f
    :goto_a
    const/high16 v3, 0x43c80000    # 400.0f

    const v4, 0x43cb8000    # 407.0f

    if-ne v8, v15, :cond_14

    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v2, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    const-string v5, "ww"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    float-to-double v9, v12

    const v12, 0x3f9d3f87

    float-to-double v13, v12

    const-wide v17, 0x3ff6666666666666L    # 1.4

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v17

    cmpl-double v12, v9, v13

    if-lez v12, :cond_10

    iget v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v10, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    sub-float v12, v9, v10

    float-to-double v12, v12

    const-wide v17, 0x3fc999999999999aL    # 0.2

    cmpg-double v14, v12, v17

    if-gez v14, :cond_10

    div-float v1, v7, v9

    div-float/2addr v7, v10

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x444b8000    # 814.0f

    div-float/2addr v1, v3

    const/16 v29, 0x3e8

    const/16 v31, 0x7

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v0

    move/from16 v30, v1

    invoke-virtual/range {v24 .. v31}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v31, 0xb

    const/16 v27, 0x1

    const/16 v28, 0x1

    :goto_b
    move-object/from16 v24, v2

    :goto_c
    invoke-virtual/range {v24 .. v31}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v5, 0x0

    const/4 v14, 0x1

    move-object/from16 v10, p0

    move/from16 v35, v8

    goto/16 :goto_2a

    :cond_10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "qq"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_e

    :cond_11
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v7, v1

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v1, v4, v1

    iget v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    div-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    const/16 v3, 0x3e8

    rsub-int v14, v1, 0x3e8

    if-ge v14, v11, :cond_12

    sub-int v3, v11, v14

    sub-int/2addr v1, v3

    goto :goto_d

    :cond_12
    move v11, v14

    :goto_d
    int-to-float v3, v11

    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v3, v4

    int-to-float v4, v1

    iget v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x444b8000    # 814.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v4

    const/16 v28, 0x0

    const/16 v31, 0xd

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v0

    move/from16 v29, v11

    move/from16 v30, v3

    invoke-virtual/range {v24 .. v31}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v31, 0xe

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v24, v2

    move/from16 v29, v1

    goto :goto_c

    :cond_13
    :goto_e
    const/16 v1, 0x1f4

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v3, v1, v3

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v1, v4

    const v4, 0x444b8000    # 814.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/16 v29, 0x1f4

    const/16 v31, 0xd

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v0

    move/from16 v30, v1

    invoke-virtual/range {v24 .. v31}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v31, 0xe

    const/16 v25, 0x1

    const/16 v26, 0x1

    goto/16 :goto_b

    :cond_14
    const v5, 0x44064f5d

    const/4 v9, 0x3

    move-object/from16 v10, p0

    if-ne v8, v9, :cond_17

    iget-object v2, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v3, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v9, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v12, 0x6e

    if-ne v1, v12, :cond_15

    iget v1, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v7, v7, v1

    iget v5, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v5, v1

    div-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v4, 0x444b8000    # 814.0f

    sub-float v13, v4, v1

    int-to-float v4, v11

    iget v5, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v5, v5, v1

    iget v7, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v7, v7, v13

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    iget v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const v7, 0x444b8000    # 814.0f

    mul-float v5, v5, v7

    int-to-float v0, v0

    add-float/2addr v5, v0

    const/16 v0, 0x3e8

    rsub-int v14, v4, 0x3e8

    int-to-float v0, v14

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v32

    const/high16 v33, 0x3f800000    # 1.0f

    const/16 v34, 0xd

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const v0, 0x444b8000    # 814.0f

    div-float/2addr v13, v0

    const/16 v31, 0x0

    const/16 v34, 0x6

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v27, v3

    move/from16 v32, v4

    move/from16 v33, v13

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const v0, 0x444b8000    # 814.0f

    div-float/2addr v1, v0

    const/16 v31, 0x1

    const/16 v34, 0xa

    const/16 v30, 0x1

    move-object/from16 v27, v9

    move/from16 v33, v1

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v0, 0x3e8

    iput v0, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    new-array v0, v15, [F

    aput v1, v0, v6

    const/4 v1, 0x1

    aput v13, v0, v1

    iput-object v0, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    iput v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto/16 :goto_9

    :cond_15
    iget v0, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v7, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x444b8000    # 814.0f

    div-float/2addr v0, v1

    const/16 v32, 0x3e8

    const/16 v34, 0x7

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v27, v2

    move/from16 v33, v0

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const v1, 0x444b8000    # 814.0f

    sub-float v13, v1, v0

    const/16 v0, 0x1f4

    int-to-float v2, v0

    iget v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v4, v2, v4

    iget v5, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v1

    cmpg-float v1, v2, v14

    if-gez v1, :cond_16

    move v2, v14

    :cond_16
    const/16 v31, 0x1

    const/16 v34, 0x9

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v27, v3

    move/from16 v32, v0

    move/from16 v33, v2

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v34, 0xa

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v27, v9

    :goto_f
    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto/16 :goto_9

    :cond_17
    iget-object v4, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v9, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v12, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v13, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v15, 0x77

    if-ne v1, v15, :cond_1a

    iget v0, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v0, v7, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x444b8000    # 814.0f

    div-float/2addr v0, v1

    const/16 v32, 0x3e8

    const/16 v34, 0x7

    const/16 v28, 0x0

    const/16 v29, 0x2

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v27, v4

    move/from16 v33, v0

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v1, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v2, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v1, v2

    iget v2, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v1, v2

    div-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v11

    iget v4, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v4, v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x43a50000    # 330.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v4, v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    const/16 v4, 0x3e8

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    if-ge v4, v7, :cond_18

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v3, v11

    sub-int/2addr v7, v11

    sub-int/2addr v2, v7

    :cond_18
    move/from16 v32, v3

    const v3, 0x444b8000    # 814.0f

    sub-float v0, v3, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v3

    cmpg-float v1, v0, v14

    if-gez v1, :cond_19

    move v0, v14

    :cond_19
    const/16 v31, 0x1

    const/16 v34, 0x9

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v27, v9

    move/from16 v33, v0

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v34, 0x8

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v27, v12

    move/from16 v32, v4

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v34, 0xa

    const/16 v28, 0x2

    const/16 v29, 0x2

    move-object/from16 v27, v13

    move/from16 v32, v2

    goto/16 :goto_f

    :cond_1a
    iget v1, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v1, v3, v1

    iget v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v5, v3, v5

    add-float/2addr v1, v5

    iget v5, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v5, v3, v5

    add-float/2addr v1, v5

    const v3, 0x444b8000    # 814.0f

    div-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v2

    int-to-float v5, v1

    iget v7, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v7, v5, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    div-float/2addr v7, v3

    const v11, 0x3ea8f5c3    # 0.33f

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v14, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v5, v14

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v7

    sub-float/2addr v5, v2

    iget v11, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v11, v11, v3

    int-to-float v0, v0

    add-float/2addr v11, v0

    const/16 v0, 0x3e8

    rsub-int v14, v1, 0x3e8

    int-to-float v0, v14

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v32

    add-float v0, v7, v2

    add-float v33, v0, v5

    const/16 v31, 0x2

    const/16 v34, 0xd

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v31, 0x0

    const/16 v34, 0x6

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v27, v9

    move/from16 v32, v1

    move/from16 v33, v7

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v31, 0x1

    const/16 v34, 0x2

    const/16 v30, 0x1

    move-object/from16 v27, v12

    move/from16 v33, v2

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v0, 0x3e8

    iput v0, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v31, 0x2

    const/16 v34, 0xa

    const/16 v30, 0x2

    move-object/from16 v27, v13

    move/from16 v33, v5

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v15, 0x3e8

    iput v15, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    iput v14, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    aput v7, v0, v6

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v5, v0, v1

    iput-object v0, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    goto/16 :goto_9

    :goto_10
    iget-object v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v9, v13, [F

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v8, :cond_1c

    const v1, 0x3f8ccccd    # 1.1f

    cmpl-float v1, v12, v1

    if-lez v1, :cond_1b

    iget-object v1, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v9, v0

    goto :goto_12

    :cond_1b
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v1, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v9, v0

    :goto_12
    aget v1, v9, v0

    const v3, 0x3fd9999a    # 1.7f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3f2aaae3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v9, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    goto :goto_11

    :cond_1c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    :goto_13
    if-ge v4, v13, :cond_1f

    sub-int v3, v13, v4

    const/4 v0, 0x3

    if-gt v4, v0, :cond_1e

    if-le v3, v0, :cond_1d

    move/from16 v27, v4

    const/16 v16, 0x1

    const/16 v20, 0x4

    goto :goto_15

    :cond_1d
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;

    invoke-direct {v10, v9, v6, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->multiHeight([FII)F

    move-result v20

    invoke-direct {v10, v9, v4, v13}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->multiHeight([FII)F

    move-result v22

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v15, v2

    move v2, v4

    move/from16 v27, v4

    move/from16 v4, v20

    const/16 v20, 0x4

    move/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;IIFF)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    const/16 v16, 0x1

    goto :goto_15

    :cond_1e
    move/from16 v27, v4

    const/16 v20, 0x4

    goto :goto_14

    :goto_15
    add-int/lit8 v4, v27, 0x1

    const/4 v5, 0x4

    const/16 v15, 0x3e8

    goto :goto_13

    :cond_1f
    const/16 v16, 0x1

    const/16 v20, 0x4

    const/4 v15, 0x1

    :goto_16
    add-int/lit8 v0, v13, -0x1

    if-ge v15, v0, :cond_24

    const/4 v5, 0x1

    :goto_17
    sub-int v0, v13, v15

    if-ge v5, v0, :cond_23

    sub-int v4, v0, v5

    const/4 v0, 0x3

    if-gt v15, v0, :cond_22

    const v1, 0x3f59999a    # 0.85f

    cmpg-float v1, v12, v1

    if-gez v1, :cond_20

    const/4 v1, 0x4

    goto :goto_18

    :cond_20
    const/4 v1, 0x3

    :goto_18
    if-gt v5, v1, :cond_22

    if-le v4, v0, :cond_21

    move/from16 v30, v5

    move/from16 v29, v8

    move/from16 v22, v12

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v12, v7

    goto :goto_1a

    :cond_21
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;

    invoke-direct {v10, v9, v6, v15}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->multiHeight([FII)F

    move-result v22

    add-int v0, v15, v5

    invoke-direct {v10, v9, v15, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->multiHeight([FII)F

    move-result v27

    invoke-direct {v10, v9, v0, v13}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->multiHeight([FII)F

    move-result v28

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v15

    move/from16 v29, v8

    move-object v8, v3

    move v3, v5

    move/from16 v30, v5

    move/from16 v5, v22

    move/from16 v22, v12

    const/4 v12, 0x0

    move/from16 v6, v27

    move-object v12, v7

    const/16 v17, 0x0

    move/from16 v7, v28

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;IIIFFF)V

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    const/16 v16, 0x1

    goto :goto_1a

    :cond_22
    move/from16 v30, v5

    move/from16 v29, v8

    move/from16 v22, v12

    const/16 v17, 0x0

    move-object v12, v7

    goto :goto_19

    :goto_1a
    add-int/lit8 v5, v30, 0x1

    move-object v7, v12

    move/from16 v12, v22

    move/from16 v8, v29

    const/4 v6, 0x0

    goto :goto_17

    :cond_23
    move/from16 v29, v8

    move/from16 v22, v12

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v12, v7

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v22

    const/4 v6, 0x0

    goto :goto_16

    :cond_24
    move-object v12, v7

    move/from16 v29, v8

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v0, 0x2

    const/4 v15, 0x1

    :goto_1b
    add-int/lit8 v1, v13, -0x2

    if-ge v15, v1, :cond_29

    const/4 v8, 0x1

    :goto_1c
    sub-int v7, v13, v15

    if-ge v8, v7, :cond_28

    const/4 v6, 0x1

    :goto_1d
    sub-int v0, v7, v8

    if-ge v6, v0, :cond_27

    sub-int v5, v0, v6

    const/4 v0, 0x3

    if-gt v15, v0, :cond_25

    if-gt v8, v0, :cond_25

    if-gt v6, v0, :cond_25

    if-le v5, v0, :cond_26

    :cond_25
    move/from16 v33, v6

    move/from16 v22, v7

    move/from16 v28, v8

    move-object/from16 v16, v9

    move/from16 v32, v13

    move/from16 v35, v29

    move/from16 v29, v14

    const/4 v14, 0x1

    goto :goto_1e

    :cond_26
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;

    const/4 v0, 0x0

    invoke-direct {v10, v9, v0, v15}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->multiHeight([FII)F

    move-result v22

    add-int v0, v15, v8

    invoke-direct {v10, v9, v15, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->multiHeight([FII)F

    move-result v28

    add-int v1, v0, v6

    invoke-direct {v10, v9, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->multiHeight([FII)F

    move-result v30

    invoke-direct {v10, v9, v1, v13}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->multiHeight([FII)F

    move-result v31

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v15

    move v3, v8

    move/from16 v32, v13

    move-object v13, v4

    move v4, v6

    move/from16 v33, v6

    move/from16 v6, v22

    move/from16 v22, v7

    move/from16 v7, v28

    move/from16 v28, v8

    move/from16 v35, v29

    move/from16 v8, v30

    move-object/from16 v16, v9

    move/from16 v29, v14

    const/4 v14, 0x1

    move/from16 v9, v31

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;IIIIFFFF)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1e
    add-int/lit8 v6, v33, 0x1

    move-object/from16 v9, v16

    move/from16 v7, v22

    move/from16 v8, v28

    move/from16 v14, v29

    move/from16 v13, v32

    move/from16 v29, v35

    const/16 v16, 0x1

    goto :goto_1d

    :cond_27
    move/from16 v28, v8

    move-object/from16 v16, v9

    move/from16 v32, v13

    move/from16 v35, v29

    move/from16 v29, v14

    const/4 v14, 0x1

    add-int/lit8 v8, v28, 0x1

    move/from16 v14, v29

    move/from16 v29, v35

    const/16 v16, 0x1

    goto/16 :goto_1c

    :cond_28
    move-object/from16 v16, v9

    move/from16 v32, v13

    move/from16 v35, v29

    move/from16 v29, v14

    const/4 v14, 0x1

    add-int/2addr v15, v14

    move/from16 v14, v29

    move/from16 v29, v35

    const/4 v0, 0x2

    const/16 v16, 0x1

    goto/16 :goto_1b

    :cond_29
    move-object/from16 v16, v9

    move/from16 v35, v29

    move/from16 v29, v14

    const/4 v14, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_33

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_20
    iget-object v5, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->heights:[F

    array-length v8, v5

    if-ge v3, v8, :cond_2b

    aget v5, v5, v3

    add-float/2addr v4, v5

    cmpg-float v8, v5, v2

    if-gez v8, :cond_2a

    move v2, v5

    :cond_2a
    add-int/2addr v3, v14

    goto :goto_20

    :cond_2b
    const v3, 0x44a68000    # 1332.0f

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v5, v4

    if-le v5, v14, :cond_2e

    const/4 v5, 0x0

    aget v8, v4, v5

    aget v9, v4, v14

    if-gt v8, v9, :cond_2c

    array-length v8, v4

    const/4 v13, 0x2

    if-le v8, v13, :cond_2d

    aget v8, v4, v13

    if-gt v9, v8, :cond_2c

    goto :goto_21

    :cond_2c
    const/4 v9, 0x3

    goto :goto_22

    :cond_2d
    :goto_21
    array-length v8, v4

    const/4 v9, 0x3

    if-le v8, v9, :cond_2f

    aget v8, v4, v13

    aget v4, v4, v9

    if-le v8, v4, :cond_2f

    :goto_22
    mul-float v3, v3, v18

    goto :goto_23

    :cond_2e
    const/4 v5, 0x0

    const/4 v9, 0x3

    :cond_2f
    :goto_23
    int-to-float v4, v11

    cmpg-float v2, v2, v4

    if-gez v2, :cond_30

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v3, v3, v2

    :cond_30
    if-eqz v0, :cond_31

    cmpg-float v2, v3, v7

    if-gez v2, :cond_32

    :cond_31
    move-object v0, v1

    move v7, v3

    :cond_32
    add-int/2addr v6, v14

    goto :goto_1f

    :cond_33
    const/4 v5, 0x0

    if-nez v0, :cond_34

    return-void

    :cond_34
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_24
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v3, v2

    if-ge v6, v3, :cond_3b

    aget v2, v2, v6

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->heights:[F

    aget v3, v3, v6

    const/16 v4, 0x3e8

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_25
    if-ge v7, v2, :cond_39

    aget v9, v16, v1

    mul-float v9, v9, v3

    float-to-int v9, v9

    sub-int/2addr v4, v9

    iget-object v11, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v36, v11

    check-cast v36, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-nez v6, :cond_35

    const/4 v11, 0x4

    goto :goto_26

    :cond_35
    const/4 v11, 0x0

    :goto_26
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v12, v12

    sub-int/2addr v12, v14

    if-ne v6, v12, :cond_36

    const/16 v12, 0x8

    or-int/2addr v11, v12

    goto :goto_27

    :cond_36
    const/16 v12, 0x8

    :goto_27
    if-nez v7, :cond_37

    or-int/2addr v11, v14

    move-object/from16 v8, v36

    :cond_37
    add-int/lit8 v13, v2, -0x1

    if-ne v7, v13, :cond_38

    const/4 v13, 0x2

    or-int/lit8 v8, v11, 0x2

    move/from16 v43, v8

    move-object/from16 v8, v36

    :goto_28
    const v11, 0x444b8000    # 814.0f

    goto :goto_29

    :cond_38
    move/from16 v43, v11

    goto :goto_28

    :goto_29
    div-float v13, v3, v11

    move/from16 v15, v29

    invoke-static {v15, v13}, Ljava/lang/Math;->max(FF)F

    move-result v42

    move/from16 v37, v7

    move/from16 v38, v7

    move/from16 v39, v6

    move/from16 v40, v6

    move/from16 v41, v9

    invoke-virtual/range {v36 .. v43}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    add-int/2addr v1, v14

    add-int/2addr v7, v14

    goto :goto_25

    :cond_39
    move/from16 v15, v29

    const v11, 0x444b8000    # 814.0f

    const/16 v12, 0x8

    if-eqz v8, :cond_3a

    iget v2, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/2addr v2, v4

    iput v2, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    iget v2, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v2, v4

    iput v2, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :cond_3a
    add-int/2addr v6, v14

    move/from16 v29, v15

    goto :goto_24

    :cond_3b
    :goto_2a
    move/from16 v0, v35

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v0, :cond_3e

    iget-object v1, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v2, :cond_3c

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/lit16 v2, v2, 0xc8

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :cond_3c
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_3d

    iput-boolean v14, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    :cond_3d
    iget v2, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->maxX:I

    iget-byte v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->maxX:I

    iget v2, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->maxY:I

    iget-byte v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->maxY:I

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iget-byte v7, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    invoke-direct {v10, v1, v2, v4, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->getLeft(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;III)F

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->left:F

    add-int/2addr v6, v14

    goto :goto_2b

    :cond_3e
    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v0, :cond_3f

    iget-object v1, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    invoke-direct {v10, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->getTop(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;I)F

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->top:F

    add-int/2addr v6, v14

    goto :goto_2c

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->getWidth()I

    move-result v0

    iput v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->width:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->getHeight()F

    move-result v0

    iput v0, v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->height:F

    return-void
.end method

.method public getHeight()F
    .locals 9

    const/16 v0, 0xa

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    iget-byte v7, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    :goto_1
    iget-byte v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-gt v7, v8, :cond_0

    aget v8, v1, v7

    add-float/2addr v8, v6

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget v2, v1, v3

    const/4 v3, 0x1

    :goto_2
    if-ge v3, v0, :cond_3

    aget v4, v1, v3

    cmpg-float v5, v2, v4

    if-gez v5, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method public getWidth()I
    .locals 9

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    iget-byte v7, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    :goto_1
    iget-byte v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-gt v7, v8, :cond_0

    aget v8, v1, v7

    add-int/2addr v8, v6

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget v2, v1, v2

    const/4 v3, 0x1

    :goto_2
    if-ge v3, v0, :cond_3

    aget v4, v1, v3

    if-ge v2, v4, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

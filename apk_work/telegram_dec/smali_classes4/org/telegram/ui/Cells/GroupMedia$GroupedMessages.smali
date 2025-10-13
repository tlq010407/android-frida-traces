.class public Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/GroupMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupedMessages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$TransitionParams;,
        Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;
    }
.end annotation


# instance fields
.field public hasSibling:Z

.field height:F

.field public maxSizeHeight:F

.field public maxSizeWidth:I

.field maxX:I

.field maxY:I

.field public medias:Ljava/util/ArrayList;

.field public posArray:Ljava/util/ArrayList;

.field public positions:Ljava/util/HashMap;

.field public final transitionParams:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$TransitionParams;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->positions:Ljava/util/HashMap;

    const/16 v0, 0x320

    iput v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const v0, 0x444b8000    # 814.0f

    iput v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    new-instance v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$TransitionParams;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$TransitionParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->transitionParams:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$TransitionParams;

    return-void
.end method

.method private getLeft(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;III)F
    .locals 11

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

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

    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

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
    iget p1, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public calculate()V
    .locals 38

    move-object/from16 v0, p0

    const/4 v3, 0x1

    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    const/4 v4, 0x0

    iput v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    iput v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->width:I

    iput v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->height:F

    iput v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxY:I

    return-void

    :cond_0
    const/16 v7, 0x320

    iput v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->hasSibling:Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    :goto_0
    const/high16 v12, 0x40000000    # 2.0f

    const v13, 0x3f99999a    # 1.2f

    if-ge v9, v5, :cond_f

    iget-object v15, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    new-instance v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-direct {v6}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;-><init>()V

    add-int/lit8 v14, v5, -0x1

    if-ne v9, v14, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    iput-boolean v14, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    instance-of v14, v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v14, :cond_2

    move-object v14, v15

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    iget v1, v14, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->w:I

    iput v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    iget v1, v14, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->h:I

    iput v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    goto :goto_7

    :cond_2
    instance-of v1, v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    const/16 v14, 0x64

    if-eqz v1, :cond_9

    move-object v1, v15

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    :goto_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    goto :goto_4

    :cond_4
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_7

    const/16 v2, 0x64

    goto :goto_5

    :cond_7
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    :goto_5
    iput v2, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    iget v14, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    :goto_6
    iput v14, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    goto :goto_7

    :cond_9
    iput v14, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    goto :goto_6

    :goto_7
    iget v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    if-lez v1, :cond_a

    iget v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    if-gtz v1, :cond_b

    :cond_a
    const/16 v1, 0x32

    iput v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    iput v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    :cond_b
    iget v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    int-to-float v1, v1

    iget v2, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    cmpl-float v2, v1, v13

    if-lez v2, :cond_c

    const-string v1, "w"

    :goto_8
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_c
    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    const-string v1, "n"

    goto :goto_8

    :cond_d
    const-string v1, "q"

    goto :goto_8

    :goto_9
    iget v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v10, v1

    cmpl-float v1, v1, v12

    if-lez v1, :cond_e

    const/4 v11, 0x1

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v3

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v9, v9

    div-float/2addr v6, v9

    div-float/2addr v1, v6

    float-to-int v1, v1

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v14, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    iget v14, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v14, v14

    div-float/2addr v9, v14

    div-float/2addr v6, v9

    float-to-int v6, v6

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v14, v9

    int-to-float v9, v5

    div-float/2addr v10, v9

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v15, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v9, v15

    if-ne v5, v3, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v1, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    cmpl-float v2, v1, v8

    if-ltz v2, :cond_10

    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v2, v2

    div-float v1, v2, v1

    div-float/2addr v1, v2

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float v1, v1, v6

    goto :goto_a

    :cond_10
    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float v1, v1, v2

    div-float/2addr v1, v2

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v6

    mul-float v1, v1, v6

    move/from16 v37, v2

    move v2, v1

    move/from16 v1, v37

    :goto_a
    float-to-int v14, v2

    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v15, v1, v2

    const/4 v13, 0x0

    const/16 v16, 0xf

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto/16 :goto_2d

    :cond_11
    const/4 v15, 0x4

    if-nez v11, :cond_1e

    const/4 v11, 0x2

    if-eq v5, v11, :cond_12

    const/4 v13, 0x3

    if-eq v5, v13, :cond_12

    if-ne v5, v15, :cond_1e

    :cond_12
    const v13, 0x3ecccccd    # 0.4f

    if-ne v5, v11, :cond_17

    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ww"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    float-to-double v10, v10

    float-to-double v14, v14

    const-wide v16, 0x3ff6666666666666L    # 1.4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    cmpl-double v16, v10, v14

    if-lez v16, :cond_13

    iget v10, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v11, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    sub-float v14, v10, v11

    float-to-double v14, v14

    const-wide v16, 0x3fc999999999999aL    # 0.2

    cmpg-double v18, v14, v16

    if-gez v18, :cond_13

    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v1, v1

    div-float v7, v1, v10

    div-float/2addr v1, v11

    iget v8, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v8, v12

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v1, v7

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/16 v23, 0x0

    const/16 v26, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v2

    move/from16 v24, v7

    move/from16 v25, v1

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/16 v23, 0x1

    const/16 v26, 0xb

    const/16 v22, 0x1

    move-object/from16 v19, v6

    move/from16 v24, v2

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto/16 :goto_2d

    :cond_13
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    const-string v9, "qq"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_e

    :cond_14
    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v7

    mul-float v13, v13, v7

    iget v9, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v7, v9

    div-float v9, v8, v9

    iget v10, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v8, v10

    add-float/2addr v9, v8

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v13, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    iget v8, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v8, v7

    if-ge v8, v1, :cond_15

    sub-int v8, v1, v8

    sub-int/2addr v7, v8

    goto :goto_b

    :cond_15
    move v1, v8

    :goto_b
    iget v8, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    int-to-float v9, v1

    iget v10, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v9, v10

    int-to-float v10, v7

    iget v11, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v8, v9

    const/16 v23, 0x0

    const/16 v26, 0xd

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v2

    move/from16 v24, v1

    move/from16 v25, v8

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v26, 0xe

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v19, v6

    move/from16 v24, v7

    :goto_c
    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    :goto_d
    iput v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    goto/16 :goto_2d

    :cond_16
    :goto_e
    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/4 v7, 0x2

    div-int/2addr v1, v7

    int-to-float v7, v1

    iget v8, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v8, v7, v8

    iget v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v7, v9

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v7, v8

    const/16 v23, 0x0

    const/16 v26, 0xd

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v2

    move/from16 v24, v1

    move/from16 v25, v7

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v26, 0xe

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v19, v6

    goto :goto_c

    :cond_17
    const v10, 0x3f28f5c3    # 0.66f

    const/4 v11, 0x3

    if-ne v5, v11, :cond_1a

    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v11, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v11, 0x6e

    if-ne v7, v11, :cond_18

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v7, v7, v9

    iget v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v11, v11

    mul-float v11, v11, v10

    iget v12, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v12, v10

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v10, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    sub-float/2addr v10, v7

    int-to-float v1, v1

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v11, v11

    mul-float v11, v11, v9

    iget v9, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v9, v9, v7

    iget v12, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v12, v12, v10

    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    iget v11, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v9, v9, v11

    int-to-float v6, v6

    add-float/2addr v9, v6

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v6, v1

    int-to-float v6, v6

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0xd

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x1

    move-object v11, v2

    move-object/from16 v27, v15

    move v15, v9

    move/from16 v16, v6

    invoke-virtual/range {v11 .. v18}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v17, v10, v9

    const/4 v15, 0x0

    const/16 v18, 0x6

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v11, v8

    move/from16 v16, v1

    invoke-virtual/range {v11 .. v18}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v25, v7, v9

    const/16 v23, 0x1

    const/16 v26, 0xa

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v19, v27

    move/from16 v24, v1

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    move-object/from16 v15, v27

    iput v1, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v7, v9

    div-float/2addr v10, v9

    const/4 v9, 0x2

    new-array v11, v9, [F

    aput v7, v11, v4

    aput v10, v11, v3

    iput-object v11, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    sub-int/2addr v1, v6

    iput v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    iput v6, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    :goto_f
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->hasSibling:Z

    goto/16 :goto_d

    :cond_18
    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v1, v1

    iget v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v1, v6

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float v6, v6, v10

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v1, v6

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/4 v7, 0x0

    const/16 v18, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v11, v2

    move-object v2, v15

    move v15, v7

    move/from16 v16, v6

    move/from16 v17, v1

    invoke-virtual/range {v11 .. v18}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/4 v7, 0x2

    div-int/2addr v6, v7

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    sub-float/2addr v7, v1

    int-to-float v1, v6

    iget v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v1, v10

    iget v11, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v1, v11

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v1, v7

    cmpg-float v7, v1, v9

    if-gez v7, :cond_19

    move/from16 v25, v9

    goto :goto_10

    :cond_19
    move/from16 v25, v1

    :goto_10
    const/4 v15, 0x1

    const/16 v18, 0x9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v11, v8

    move/from16 v16, v6

    move/from16 v17, v25

    invoke-virtual/range {v11 .. v18}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v23, 0x1

    const/16 v26, 0xa

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v19, v2

    move/from16 v24, v6

    goto/16 :goto_c

    :cond_1a
    iget-object v11, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v12, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v14, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v15, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v3, v15

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v15, 0x77

    const v4, 0x3ea8f5c3    # 0.33f

    if-ne v7, v15, :cond_1d

    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v2, v2

    iget v6, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v2, v6

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float v6, v6, v10

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v2, v6

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/16 v23, 0x0

    const/16 v26, 0x7

    const/16 v20, 0x0

    const/16 v21, 0x2

    const/16 v22, 0x0

    move-object/from16 v19, v11

    move/from16 v24, v6

    move/from16 v25, v2

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v6

    iget v7, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v8, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v7, v8

    iget v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    int-to-float v1, v1

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v7

    mul-float v7, v7, v13

    iget v8, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v8, v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    iget v8, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v8, v8

    mul-float v8, v8, v4

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v4, v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v4, v7

    sub-int/2addr v4, v1

    const/high16 v8, 0x42680000    # 58.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    if-ge v4, v10, :cond_1b

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v10, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v8, 0x2

    div-int/lit8 v11, v10, 0x2

    sub-int/2addr v7, v11

    sub-int/2addr v10, v11

    sub-int/2addr v1, v10

    :cond_1b
    move/from16 v24, v7

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    sub-float/2addr v7, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v2, v6

    cmpg-float v6, v2, v9

    if-gez v6, :cond_1c

    move v2, v9

    :cond_1c
    const/16 v23, 0x1

    const/16 v26, 0x9

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v19, v12

    move/from16 v25, v2

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v26, 0x8

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v19, v14

    move/from16 v24, v4

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v26, 0xa

    const/16 v20, 0x2

    const/16 v21, 0x2

    move-object/from16 v19, v3

    move/from16 v24, v1

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    goto/16 :goto_2d

    :cond_1d
    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    iget v9, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v9, v8, v9

    iget v10, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v8, v10

    add-float/2addr v9, v10

    iget v10, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v8, v10

    add-float/2addr v9, v10

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v2

    int-to-float v7, v1

    iget v9, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v9, v7, v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget v10, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v9, v10

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v10, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v7, v10

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v2, v7

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    iget v7, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v4, v4, v7

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v6, v1

    int-to-float v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-float v6, v9, v2

    add-float v25, v6, v8

    const/16 v23, 0x2

    const/16 v26, 0xd

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v11

    move/from16 v24, v4

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v23, 0x0

    const/16 v26, 0x6

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v19, v12

    move/from16 v24, v1

    move/from16 v25, v9

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v23, 0x1

    const/16 v26, 0x2

    const/16 v22, 0x1

    move-object/from16 v19, v14

    move/from16 v25, v2

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    iput v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v23, 0x2

    const/16 v26, 0xa

    const/16 v22, 0x2

    move-object/from16 v19, v3

    move/from16 v25, v8

    invoke-virtual/range {v19 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    iput v1, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    sub-int/2addr v1, v4

    iput v1, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    iput v4, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    iput v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v9, v1, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    aput v8, v1, v2

    iput-object v1, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    goto/16 :goto_f

    :cond_1e
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [F

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v5, :cond_20

    const v6, 0x3f8ccccd    # 1.1f

    cmpl-float v6, v10, v6

    if-lez v6, :cond_1f

    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v3, v4

    goto :goto_12

    :cond_1f
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v3, v4

    :goto_12
    aget v6, v3, v4

    const v7, 0x3fd9999a    # 1.7f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v7, 0x3f2aaae3

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v3, v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_11

    :cond_20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    :goto_13
    if-ge v6, v2, :cond_23

    sub-int v7, v2, v6

    const/4 v8, 0x3

    if-gt v6, v8, :cond_21

    if-le v7, v8, :cond_22

    :cond_21
    :goto_14
    const/16 v27, 0x1

    goto :goto_15

    :cond_22
    new-instance v8, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v11, 0x0

    invoke-direct {v0, v3, v11, v6}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v12

    invoke-direct {v0, v3, v6, v2}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v11

    invoke-direct {v8, v6, v7, v12, v11}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIFF)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_23
    const/16 v27, 0x1

    const/4 v6, 0x1

    :goto_16
    add-int/lit8 v7, v2, -0x1

    if-ge v6, v7, :cond_28

    const/4 v7, 0x1

    :goto_17
    sub-int v8, v2, v6

    if-ge v7, v8, :cond_27

    sub-int/2addr v8, v7

    const/4 v11, 0x3

    if-gt v6, v11, :cond_25

    const v12, 0x3f59999a    # 0.85f

    cmpg-float v12, v10, v12

    if-gez v12, :cond_24

    const/4 v12, 0x4

    goto :goto_18

    :cond_24
    const/4 v12, 0x3

    :goto_18
    if-gt v7, v12, :cond_25

    if-le v8, v11, :cond_26

    :cond_25
    :goto_19
    const/4 v8, 0x1

    goto :goto_1a

    :cond_26
    new-instance v11, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v12, 0x0

    invoke-direct {v0, v3, v12, v6}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v24

    add-int v12, v6, v7

    invoke-direct {v0, v3, v6, v12}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v25

    invoke-direct {v0, v3, v12, v2}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v26

    move-object/from16 v20, v11

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-direct/range {v20 .. v26}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIFFF)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :goto_1a
    add-int/2addr v7, v8

    goto :goto_17

    :cond_27
    const/4 v8, 0x1

    add-int/2addr v6, v8

    const/16 v27, 0x1

    goto :goto_16

    :cond_28
    const/4 v6, 0x1

    :goto_1b
    const/4 v7, 0x2

    add-int/lit8 v8, v2, -0x2

    if-ge v6, v8, :cond_2d

    const/4 v7, 0x1

    :goto_1c
    sub-int v8, v2, v6

    if-ge v7, v8, :cond_2c

    const/4 v10, 0x1

    :goto_1d
    sub-int v11, v8, v7

    if-ge v10, v11, :cond_2b

    sub-int/2addr v11, v10

    const/4 v12, 0x3

    if-gt v6, v12, :cond_29

    if-gt v7, v12, :cond_29

    if-gt v10, v12, :cond_29

    if-le v11, v12, :cond_2a

    :cond_29
    :goto_1e
    const/4 v11, 0x1

    goto :goto_1f

    :cond_2a
    new-instance v12, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v13, 0x0

    invoke-direct {v0, v3, v13, v6}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v33

    add-int v13, v6, v7

    invoke-direct {v0, v3, v6, v13}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v34

    add-int v14, v13, v10

    invoke-direct {v0, v3, v13, v14}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v35

    invoke-direct {v0, v3, v14, v2}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v36

    move-object/from16 v28, v12

    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v31, v10

    move/from16 v32, v11

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIIFFFF)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :goto_1f
    add-int/2addr v10, v11

    goto :goto_1d

    :cond_2b
    const/4 v11, 0x1

    add-int/2addr v7, v11

    goto :goto_1c

    :cond_2c
    const/4 v11, 0x1

    add-int/2addr v6, v11

    goto :goto_1b

    :cond_2d
    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/4 v6, 0x3

    div-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_38

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v11, 0x0

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v13, 0x0

    :goto_21
    iget-object v14, v10, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    array-length v15, v14

    if-ge v11, v15, :cond_2f

    aget v14, v14, v11

    add-float/2addr v13, v14

    cmpg-float v15, v14, v12

    if-gez v15, :cond_2e

    move v12, v14

    :cond_2e
    const/4 v14, 0x1

    add-int/2addr v11, v14

    const/4 v15, 0x4

    goto :goto_21

    :cond_2f
    const/4 v14, 0x1

    sub-float/2addr v13, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget-object v13, v10, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v15, v13

    move/from16 v21, v2

    if-le v15, v14, :cond_34

    const/4 v15, 0x0

    aget v2, v13, v15

    aget v15, v13, v14

    if-gt v2, v15, :cond_33

    array-length v2, v13

    const/4 v14, 0x2

    if-le v2, v14, :cond_31

    aget v2, v13, v14

    if-gt v15, v2, :cond_30

    goto :goto_22

    :cond_30
    const v2, 0x3f99999a    # 1.2f

    const/4 v15, 0x3

    goto :goto_24

    :cond_31
    :goto_22
    array-length v2, v13

    const/4 v15, 0x3

    if-le v2, v15, :cond_32

    aget v2, v13, v14

    aget v13, v13, v15

    if-le v2, v13, :cond_32

    :goto_23
    const v2, 0x3f99999a    # 1.2f

    goto :goto_24

    :cond_32
    const v2, 0x3f99999a    # 1.2f

    goto :goto_25

    :cond_33
    const/4 v15, 0x3

    goto :goto_23

    :goto_24
    mul-float v11, v11, v2

    goto :goto_25

    :cond_34
    const v2, 0x3f99999a    # 1.2f

    const/4 v15, 0x3

    :goto_25
    int-to-float v13, v1

    cmpg-float v12, v12, v13

    if-gez v12, :cond_35

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float v11, v11, v12

    :cond_35
    if-eqz v7, :cond_37

    cmpg-float v12, v11, v8

    if-gez v12, :cond_36

    goto :goto_27

    :cond_36
    :goto_26
    const/4 v10, 0x1

    goto :goto_28

    :cond_37
    :goto_27
    move-object v7, v10

    move v8, v11

    goto :goto_26

    :goto_28
    add-int/2addr v6, v10

    move/from16 v2, v21

    const/4 v15, 0x4

    goto :goto_20

    :cond_38
    if-nez v7, :cond_39

    return-void

    :cond_39
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_29
    iget-object v4, v7, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v6, v4

    if-ge v1, v6, :cond_3f

    aget v4, v4, v1

    iget-object v6, v7, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    aget v6, v6, v1

    iget v8, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    iget v10, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    const/4 v11, 0x1

    add-int/lit8 v12, v4, -0x1

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    move v10, v8

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_2a
    if-ge v8, v4, :cond_3e

    aget v13, v3, v2

    mul-float v13, v13, v6

    float-to-int v13, v13

    sub-int/2addr v10, v13

    iget-object v14, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v28, v14

    check-cast v28, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-nez v1, :cond_3a

    const/4 v14, 0x4

    goto :goto_2b

    :cond_3a
    const/4 v14, 0x0

    :goto_2b
    iget-object v15, v7, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v15, v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ne v1, v15, :cond_3b

    or-int/lit8 v14, v14, 0x8

    :cond_3b
    if-nez v8, :cond_3c

    or-int/lit8 v14, v14, 0x1

    :cond_3c
    if-ne v8, v12, :cond_3d

    const/4 v15, 0x2

    or-int/lit8 v11, v14, 0x2

    move/from16 v35, v11

    move-object/from16 v11, v28

    goto :goto_2c

    :cond_3d
    move/from16 v35, v14

    :goto_2c
    iget v14, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v14, v6, v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v34

    move/from16 v29, v8

    move/from16 v30, v8

    move/from16 v31, v1

    move/from16 v32, v1

    move/from16 v33, v13

    invoke-virtual/range {v28 .. v35}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v13, 0x1

    add-int/2addr v2, v13

    add-int/2addr v8, v13

    goto :goto_2a

    :cond_3e
    const/4 v13, 0x1

    iget v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/2addr v4, v10

    iput v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    iget v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v4, v10

    iput v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v1, v13

    goto :goto_29

    :cond_3f
    :goto_2d
    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v5, :cond_47

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    if-eq v2, v4, :cond_40

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_41

    :cond_40
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/lit16 v2, v2, 0xc8

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :cond_41
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_42

    iput-boolean v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    :cond_42
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    iget-boolean v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    const/16 v4, 0x3e8

    if-eqz v2, :cond_45

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eq v2, v4, :cond_43

    add-int/lit8 v2, v2, 0x6c

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :cond_43
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/lit8 v2, v2, 0x6c

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    :cond_44
    :goto_2f
    const/4 v1, 0x1

    goto :goto_30

    :cond_45
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v6, 0x2

    and-int/2addr v2, v6

    if-eqz v2, :cond_44

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eq v2, v4, :cond_46

    add-int/lit8 v2, v2, -0x6c

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_2f

    :cond_46
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    if-eqz v2, :cond_44

    add-int/lit8 v2, v2, 0x6c

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    goto :goto_2f

    :goto_30
    add-int/2addr v3, v1

    goto :goto_2e

    :cond_47
    const/4 v3, 0x0

    :goto_31
    if-ge v3, v5, :cond_4a

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v2, :cond_48

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/lit16 v2, v2, 0xc8

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :cond_48
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    :cond_49
    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    iget-byte v6, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxY:I

    iget-byte v6, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxY:I

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v6, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iget-byte v7, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    invoke-direct {v0, v1, v2, v6, v7}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getLeft(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;III)F

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->left:F

    const/4 v1, 0x1

    add-int/2addr v3, v1

    goto :goto_31

    :cond_4a
    const/4 v1, 0x1

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v5, :cond_4b

    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getTop(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;I)F

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->top:F

    add-int/2addr v4, v1

    goto :goto_32

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getWidth()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->width:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getHeight()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->height:F

    return-void
.end method

.method public getHeight()F
    .locals 9

    const/16 v0, 0xa

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

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

.method public getPosition(Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    return-object p1
.end method

.method public getWidth()I
    .locals 9

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

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

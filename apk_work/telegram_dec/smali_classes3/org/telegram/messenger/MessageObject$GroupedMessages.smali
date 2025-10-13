.class public Lorg/telegram/messenger/MessageObject$GroupedMessages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupedMessages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;,
        Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;
    }
.end annotation


# instance fields
.field public captionAbove:Z

.field public captionMessage:Lorg/telegram/messenger/MessageObject;

.field public groupId:J

.field public hasCaption:Z

.field public hasSibling:Z

.field public isDocuments:Z

.field private maxSizeWidth:I

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public posArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;",
            ">;"
        }
    .end annotation
.end field

.field public positions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;",
            ">;"
        }
    .end annotation
.end field

.field public positionsArray:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field public reversed:Z

.field public final transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positionsArray:Landroidx/collection/LongSparseArray;

    const/16 v0, 0x320

    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    new-instance v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-direct {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    return-void
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
    iget p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public calculate()V
    .locals 39

    move-object/from16 v0, p0

    const/4 v1, 0x3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positionsArray:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    const/16 v4, 0x320

    iput v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iput-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    return-void

    :cond_0
    if-ge v4, v6, :cond_1

    return-void

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-boolean v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    iput-boolean v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iput-boolean v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionAbove:Z

    iget-boolean v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v8, :cond_2

    add-int/lit8 v8, v4, -0x1

    :goto_0
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    const v16, 0x3f99999a    # 1.2f

    if-eqz v15, :cond_4

    if-ltz v8, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    move/from16 v17, v4

    goto/16 :goto_10

    :cond_4
    if-ge v8, v4, :cond_3

    :goto_2
    iget-object v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v2, :cond_5

    add-int/lit8 v2, v4, -0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-ne v8, v2, :cond_c

    iput-object v3, v15, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;

    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v2, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v10, :cond_7

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v17, v4

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v10, :cond_9

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v17, v4

    iget-wide v3, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v18, 0x0

    cmp-long v20, v3, v18

    if-nez v20, :cond_8

    iget-wide v3, v10, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v10, v3, v18

    if-nez v10, :cond_8

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v2, :cond_8

    iget-object v2, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v2, :cond_a

    :cond_8
    :goto_5
    const/4 v10, 0x1

    goto :goto_6

    :cond_9
    move/from16 v17, v4

    :cond_a
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    iput-boolean v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    goto :goto_7

    :cond_c
    move/from16 v17, v4

    :cond_d
    :goto_7
    iget-object v2, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_e

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    if-eqz v2, :cond_e

    iput-boolean v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionAbove:Z

    :cond_e
    iget-object v2, v15, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-direct {v3}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;-><init>()V

    iget-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v4, :cond_f

    if-nez v8, :cond_10

    goto :goto_8

    :cond_f
    add-int/lit8 v4, v17, -0x1

    if-ne v8, v4, :cond_10

    :goto_8
    const/4 v4, 0x1

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    :goto_9
    iput-boolean v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v2, :cond_11

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_11
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v4, v4

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    :goto_a
    iput v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    cmpl-float v2, v4, v16

    if-lez v2, :cond_12

    const-string v2, "w"

    :goto_b
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_12
    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v2, v4, v2

    if-gez v2, :cond_13

    const-string v2, "n"

    goto :goto_b

    :cond_13
    const-string v2, "q"

    goto :goto_b

    :goto_c
    iget v2, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v11, v2

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_14

    const/4 v12, 0x1

    :cond_14
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positionsArray:Landroidx/collection/LongSparseArray;

    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move/from16 v19, v10

    int-to-long v9, v4

    invoke-virtual {v2, v9, v10, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v15, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v2, :cond_17

    if-eqz v14, :cond_15

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_15

    iput-object v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    const/4 v14, 0x0

    goto :goto_d

    :cond_15
    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-nez v2, :cond_16

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    :goto_d
    iput-boolean v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    goto :goto_e

    :cond_17
    const/4 v2, 0x0

    :goto_e
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v3, :cond_18

    add-int/lit8 v8, v8, -0x1

    :goto_f
    move-object v3, v2

    move/from16 v4, v17

    move/from16 v10, v19

    goto/16 :goto_1

    :cond_18
    add-int/2addr v8, v6

    goto :goto_f

    :goto_10
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v8, 0x3e8

    if-eqz v3, :cond_1c

    move/from16 v3, v17

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v3, :cond_1b

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iput v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    if-nez v2, :cond_1a

    const/4 v9, 0x7

    iput v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    :cond_19
    iput-boolean v5, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    goto :goto_12

    :cond_1a
    add-int/lit8 v9, v3, -0x1

    if-ne v2, v9, :cond_19

    const/16 v9, 0xb

    iput v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    iput-boolean v6, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    :goto_12
    iput-boolean v6, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iput-byte v5, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    iput-byte v5, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    int-to-byte v9, v2

    iput-byte v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iput-byte v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iput v8, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    iget v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    iput v4, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    add-int/2addr v2, v6

    goto :goto_11

    :cond_1b
    return-void

    :cond_1c
    move/from16 v3, v17

    if-eqz v10, :cond_1d

    iget v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    add-int/lit8 v9, v9, -0x32

    iput v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v9, 0xfa

    goto :goto_13

    :cond_1d
    const/16 v9, 0xc8

    :goto_13
    const/high16 v10, 0x42f00000    # 120.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v15, Landroid/graphics/Point;->x:I

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v15, v15

    div-float/2addr v2, v15

    div-float/2addr v10, v2

    float-to-int v2, v10

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v15, Landroid/graphics/Point;->x:I

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v15, v15

    div-float/2addr v8, v15

    div-float/2addr v10, v8

    float-to-int v8, v10

    const v10, 0x444b8000    # 814.0f

    div-float/2addr v15, v10

    int-to-float v1, v3

    div-float/2addr v11, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    const v4, 0x43cb8000    # 407.0f

    if-ne v3, v6, :cond_1e

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v2, v2

    iget v7, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v2, v7

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float v24, v2, v10

    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v22, 0x0

    const/16 v25, 0xf

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v1

    move/from16 v23, v2

    invoke-virtual/range {v18 .. v25}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto/16 :goto_14

    :cond_1e
    const/4 v10, 0x4

    if-nez v12, :cond_2d

    const/4 v12, 0x2

    if-eq v3, v12, :cond_1f

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1f

    if-ne v3, v10, :cond_2d

    :cond_1f
    const v4, 0x3ecccccd    # 0.4f

    if-ne v3, v12, :cond_24

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "ww"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    float-to-double v11, v11

    float-to-double v14, v15

    const-wide v22, 0x3ff6666666666666L    # 1.4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v22

    cmpl-double v16, v11, v14

    if-lez v16, :cond_20

    iget v11, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v12, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    sub-float v14, v11, v12

    float-to-double v14, v14

    const-wide v22, 0x3fc999999999999aL    # 0.2

    cmpg-double v16, v14, v22

    if-gez v16, :cond_20

    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v2, v2

    div-float v4, v2, v11

    div-float/2addr v2, v12

    const v7, 0x43cb8000    # 407.0f

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v4, 0x444b8000    # 814.0f

    div-float/2addr v2, v4

    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v26, 0x0

    const/16 v29, 0x7

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v1

    move/from16 v27, v4

    move/from16 v28, v2

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v26, 0x1

    const/16 v29, 0xb

    const/16 v25, 0x1

    move-object/from16 v22, v8

    move/from16 v27, v1

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    :goto_14
    const/4 v12, 0x0

    goto/16 :goto_3a

    :cond_20
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    const-string v10, "qq"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    goto :goto_18

    :cond_21
    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v7

    mul-float v4, v4, v7

    iget v10, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v7, v10

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v10, v11, v10

    iget v12, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v7, v4

    if-ge v7, v2, :cond_22

    sub-int v7, v2, v7

    sub-int/2addr v4, v7

    goto :goto_15

    :cond_22
    move v2, v7

    :goto_15
    int-to-float v7, v2

    iget v10, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v7, v10

    int-to-float v10, v4

    iget v11, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v10, v11

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    const v10, 0x444b8000    # 814.0f

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr v7, v10

    const/16 v26, 0x0

    const/16 v29, 0xd

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v1

    move/from16 v27, v2

    move/from16 v28, v7

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v29, 0xe

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v22, v8

    move/from16 v27, v4

    :goto_16
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    :goto_17
    const/4 v12, 0x1

    goto/16 :goto_3a

    :cond_23
    :goto_18
    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v4, 0x2

    div-int/2addr v2, v4

    int-to-float v4, v2

    iget v7, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v7, v4, v7

    iget v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v10

    const v10, 0x444b8000    # 814.0f

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    const/16 v26, 0x0

    const/16 v29, 0xd

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v1

    move/from16 v27, v2

    move/from16 v28, v4

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v29, 0xe

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v22, v8

    goto :goto_16

    :cond_24
    const v10, 0x44064f5d

    const/4 v11, 0x3

    if-ne v3, v11, :cond_28

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v11, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v12, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v14, 0x6e

    if-ne v7, v14, :cond_26

    iget v1, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v7

    mul-float v7, v7, v1

    iget v10, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v10, v1

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const v7, 0x43cb8000    # 407.0f

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v7, 0x444b8000    # 814.0f

    sub-float v10, v7, v1

    int-to-float v2, v2

    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v7

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v7, v7, v14

    iget v14, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v14, v14, v1

    iget v15, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v15, v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v7, v14}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iget v7, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const v14, 0x444b8000    # 814.0f

    mul-float v7, v7, v14

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v8, v2

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0xd

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v22, v4

    move/from16 v27, v7

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const v8, 0x444b8000    # 814.0f

    div-float/2addr v10, v8

    const/16 v26, 0x0

    const/16 v29, 0x6

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v22, v11

    move/from16 v27, v2

    move/from16 v28, v10

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const v8, 0x444b8000    # 814.0f

    div-float/2addr v1, v8

    const/16 v26, 0x1

    const/16 v29, 0xa

    const/16 v23, 0x0

    const/16 v25, 0x1

    move-object/from16 v22, v12

    move/from16 v28, v1

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v8, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/4 v14, 0x2

    new-array v15, v14, [F

    aput v1, v15, v5

    aput v10, v15, v6

    iput-object v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz v13, :cond_25

    sub-int/2addr v8, v2

    iput v8, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_19

    :cond_25
    sub-int/2addr v8, v7

    iput v8, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    iput v7, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    :goto_19
    iput-boolean v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    goto/16 :goto_17

    :cond_26
    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v2, v2

    iget v7, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v2, v7

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v7, 0x444b8000    # 814.0f

    div-float/2addr v2, v7

    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v26, 0x0

    const/16 v29, 0x7

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v22, v4

    move/from16 v27, v7

    move/from16 v28, v2

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v7, 0x2

    div-int/2addr v4, v7

    const v7, 0x444b8000    # 814.0f

    sub-float v10, v7, v2

    int-to-float v2, v4

    iget v8, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v8, v2, v8

    iget v14, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v2, v14

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v7

    cmpg-float v7, v2, v1

    if-gez v7, :cond_27

    goto :goto_1a

    :cond_27
    move v1, v2

    :goto_1a
    const/16 v26, 0x1

    const/16 v29, 0x9

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v22, v11

    move/from16 v27, v4

    move/from16 v28, v1

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v29, 0xa

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v22, v12

    goto/16 :goto_16

    :cond_28
    iget-object v11, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v12, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-object v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v4, v15

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v15, 0x77

    const v5, 0x3ea8f5c3    # 0.33f

    if-ne v7, v15, :cond_2b

    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v7

    iget v8, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v7, v8

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x444b8000    # 814.0f

    div-float/2addr v7, v8

    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v25, 0x0

    const/16 v28, 0x7

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x0

    move-object/from16 v21, v11

    move/from16 v26, v8

    move/from16 v27, v7

    invoke-virtual/range {v21 .. v28}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v8, v8

    iget v10, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v11, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v10, v11

    iget v11, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v10, v11

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    int-to-float v2, v2

    iget v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v10, v10

    const v11, 0x3ecccccd    # 0.4f

    mul-float v10, v10, v11

    iget v11, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v11, v11, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    iget v11, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v11, v11

    mul-float v11, v11, v5

    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v5, v5, v8

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v5, v10

    sub-int/2addr v5, v2

    const/high16 v11, 0x42680000    # 58.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    if-ge v5, v14, :cond_29

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v14, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v11, 0x2

    div-int/lit8 v15, v14, 0x2

    sub-int/2addr v10, v15

    sub-int/2addr v14, v15

    sub-int/2addr v2, v14

    :cond_29
    move/from16 v26, v10

    const v10, 0x444b8000    # 814.0f

    sub-float v7, v10, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr v7, v10

    cmpg-float v8, v7, v1

    if-gez v8, :cond_2a

    goto :goto_1b

    :cond_2a
    move v1, v7

    :goto_1b
    const/16 v25, 0x1

    const/16 v28, 0x9

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v21, v12

    move/from16 v27, v1

    invoke-virtual/range {v21 .. v28}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v28, 0x8

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v21, v6

    move/from16 v26, v5

    invoke-virtual/range {v21 .. v28}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v28, 0xa

    const/16 v22, 0x2

    const/16 v23, 0x2

    move-object/from16 v21, v4

    move/from16 v26, v2

    invoke-virtual/range {v21 .. v28}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v12, 0x2

    goto/16 :goto_3a

    :cond_2b
    iget v1, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v1, v7, v1

    iget v10, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v7, v10

    add-float/2addr v1, v10

    iget v10, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v7, v10

    add-float/2addr v1, v10

    const v7, 0x444b8000    # 814.0f

    div-float v10, v7, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v14

    int-to-float v10, v1

    iget v14, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v14, v10, v14

    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    div-float/2addr v14, v7

    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget v15, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v10, v15

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v7

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v14

    sub-float/2addr v5, v2

    iget v10, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v10, v10, v7

    int-to-float v7, v8

    add-float/2addr v10, v7

    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v7, v1

    int-to-float v7, v7

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-float v8, v14, v2

    add-float v27, v8, v5

    const/16 v25, 0x2

    const/16 v28, 0xd

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v11

    move/from16 v26, v7

    invoke-virtual/range {v21 .. v28}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v25, 0x0

    const/16 v28, 0x6

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v21, v12

    move/from16 v26, v1

    move/from16 v27, v14

    invoke-virtual/range {v21 .. v28}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v25, 0x1

    const/16 v28, 0x2

    const/16 v22, 0x0

    const/16 v24, 0x1

    move-object/from16 v21, v6

    move/from16 v27, v2

    invoke-virtual/range {v21 .. v28}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v25, 0x2

    const/16 v28, 0xa

    const/16 v24, 0x2

    move-object/from16 v21, v4

    move/from16 v27, v5

    invoke-virtual/range {v21 .. v28}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v8, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eqz v13, :cond_2c

    sub-int/2addr v8, v1

    iput v8, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :goto_1c
    const/4 v1, 0x3

    goto :goto_1d

    :cond_2c
    sub-int/2addr v8, v7

    iput v8, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    iput v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    iput v7, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    goto :goto_1c

    :goto_1d
    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v14, v1, v4

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput v5, v1, v2

    iput-object v1, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    goto/16 :goto_17

    :cond_2d
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [F

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v3, :cond_2f

    const v7, 0x3f8ccccd    # 1.1f

    cmpl-float v7, v11, v7

    if-lez v7, :cond_2e

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aput v7, v5, v6

    goto :goto_1f

    :cond_2e
    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    aput v7, v5, v6

    :goto_1f
    aget v7, v5, v6

    const v12, 0x3fd9999a    # 1.7f

    invoke-static {v12, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const v12, 0x3f2aaae3

    invoke-static {v12, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aput v7, v5, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_1e

    :cond_2f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    :goto_20
    if-ge v7, v4, :cond_32

    sub-int v8, v4, v7

    const/4 v12, 0x3

    if-gt v7, v12, :cond_30

    if-le v8, v12, :cond_31

    :cond_30
    :goto_21
    const/16 v29, 0x1

    goto :goto_22

    :cond_31
    new-instance v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v14, 0x0

    invoke-direct {v0, v5, v14, v7}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v15

    invoke-direct {v0, v5, v7, v4}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v14

    invoke-direct {v12, v7, v8, v15, v14}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIFF)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :goto_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_32
    const/16 v29, 0x1

    const/4 v7, 0x1

    :goto_23
    add-int/lit8 v8, v4, -0x1

    if-ge v7, v8, :cond_37

    const/4 v8, 0x1

    :goto_24
    sub-int v12, v4, v7

    if-ge v8, v12, :cond_36

    sub-int/2addr v12, v8

    const/4 v14, 0x3

    if-gt v7, v14, :cond_34

    const v15, 0x3f59999a    # 0.85f

    cmpg-float v15, v11, v15

    if-gez v15, :cond_33

    const/4 v15, 0x4

    goto :goto_25

    :cond_33
    const/4 v15, 0x3

    :goto_25
    if-gt v8, v15, :cond_34

    if-le v12, v14, :cond_35

    :cond_34
    :goto_26
    const/4 v12, 0x1

    goto :goto_27

    :cond_35
    new-instance v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v15, 0x0

    invoke-direct {v0, v5, v15, v7}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v25

    add-int v15, v7, v8

    invoke-direct {v0, v5, v7, v15}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v26

    invoke-direct {v0, v5, v15, v4}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v27

    move-object/from16 v21, v14

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v12

    invoke-direct/range {v21 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIFFF)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :goto_27
    add-int/2addr v8, v12

    goto :goto_24

    :cond_36
    const/4 v12, 0x1

    add-int/2addr v7, v12

    const/16 v29, 0x1

    goto :goto_23

    :cond_37
    const/4 v7, 0x1

    const/4 v8, 0x2

    :goto_28
    add-int/lit8 v11, v4, -0x2

    if-ge v7, v11, :cond_3c

    const/4 v8, 0x1

    :goto_29
    sub-int v11, v4, v7

    if-ge v8, v11, :cond_3b

    const/4 v12, 0x1

    :goto_2a
    sub-int v14, v11, v8

    if-ge v12, v14, :cond_3a

    sub-int/2addr v14, v12

    const/4 v15, 0x3

    if-gt v7, v15, :cond_38

    if-gt v8, v15, :cond_38

    if-gt v12, v15, :cond_38

    if-le v14, v15, :cond_39

    :cond_38
    move/from16 v21, v11

    :goto_2b
    const/4 v10, 0x1

    goto :goto_2c

    :cond_39
    new-instance v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v10, 0x0

    invoke-direct {v0, v5, v10, v7}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v35

    add-int v10, v7, v8

    invoke-direct {v0, v5, v7, v10}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v36

    move/from16 v21, v11

    add-int v11, v10, v12

    invoke-direct {v0, v5, v10, v11}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v37

    invoke-direct {v0, v5, v11, v4}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v38

    move-object/from16 v30, v15

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v12

    move/from16 v34, v14

    invoke-direct/range {v30 .. v38}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIIFFFF)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :goto_2c
    add-int/2addr v12, v10

    move/from16 v11, v21

    const/4 v10, 0x4

    goto :goto_2a

    :cond_3a
    const/4 v10, 0x1

    add-int/2addr v8, v10

    const/4 v10, 0x4

    goto :goto_29

    :cond_3b
    const/4 v10, 0x1

    add-int/2addr v7, v10

    const/4 v8, 0x2

    const/4 v10, 0x4

    goto :goto_28

    :cond_3c
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v7, 0x3

    div-int/2addr v4, v7

    const/4 v7, 0x4

    mul-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v10, v14, :cond_46

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const v15, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v15, 0x0

    const v18, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v21, 0x0

    :goto_2e
    iget-object v7, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    array-length v8, v7

    if-ge v15, v8, :cond_3e

    aget v7, v7, v15

    add-float v21, v21, v7

    cmpg-float v8, v7, v18

    if-gez v8, :cond_3d

    move/from16 v18, v7

    :cond_3d
    const/4 v7, 0x1

    add-int/2addr v15, v7

    goto :goto_2e

    :cond_3e
    const/4 v7, 0x1

    sub-float v21, v21, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v15, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    move/from16 v21, v4

    array-length v4, v15

    move-object/from16 v24, v6

    if-le v4, v7, :cond_41

    const/4 v4, 0x0

    aget v6, v15, v4

    aget v4, v15, v7

    if-gt v6, v4, :cond_3f

    array-length v6, v15

    const/4 v7, 0x2

    if-le v6, v7, :cond_40

    aget v6, v15, v7

    if-gt v4, v6, :cond_3f

    goto :goto_2f

    :cond_3f
    const/4 v6, 0x3

    goto :goto_30

    :cond_40
    :goto_2f
    array-length v4, v15

    const/4 v6, 0x3

    if-le v4, v6, :cond_42

    aget v4, v15, v7

    aget v7, v15, v6

    if-le v4, v7, :cond_42

    :goto_30
    mul-float v8, v8, v16

    goto :goto_31

    :cond_41
    const/4 v6, 0x3

    :cond_42
    :goto_31
    int-to-float v4, v2

    cmpg-float v4, v18, v4

    if-gez v4, :cond_43

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v8, v8, v4

    :cond_43
    if-eqz v11, :cond_45

    cmpg-float v4, v8, v12

    if-gez v4, :cond_44

    goto :goto_33

    :cond_44
    :goto_32
    const/4 v4, 0x1

    goto :goto_34

    :cond_45
    :goto_33
    move v12, v8

    move-object v11, v14

    goto :goto_32

    :goto_34
    add-int/2addr v10, v4

    move/from16 v4, v21

    move-object/from16 v6, v24

    const/4 v7, 0x4

    goto :goto_2d

    :cond_46
    if-nez v11, :cond_47

    return-void

    :cond_47
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_35
    iget-object v7, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v8, v7

    if-ge v4, v8, :cond_4d

    aget v7, v7, v4

    iget-object v8, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    aget v8, v8, v4

    iget v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v12, 0x1

    add-int/lit8 v14, v7, -0x1

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v12, v10

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_36
    if-ge v10, v7, :cond_4c

    aget v16, v5, v2

    move-object/from16 v18, v5

    mul-float v5, v16, v8

    float-to-int v5, v5

    sub-int/2addr v12, v5

    move/from16 v16, v6

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v30, v6

    check-cast v30, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move/from16 v19, v7

    if-nez v4, :cond_48

    const/4 v6, 0x4

    goto :goto_37

    :cond_48
    const/4 v6, 0x0

    :goto_37
    iget-object v7, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v7, v7

    const/16 v21, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_49

    or-int/lit8 v6, v6, 0x8

    :cond_49
    if-nez v10, :cond_4a

    or-int/lit8 v6, v6, 0x1

    if-eqz v13, :cond_4a

    move-object/from16 v15, v30

    :cond_4a
    if-ne v10, v14, :cond_4b

    const/4 v7, 0x2

    or-int/2addr v6, v7

    if-nez v13, :cond_4b

    move/from16 v37, v6

    move-object/from16 v15, v30

    :goto_38
    const v7, 0x444b8000    # 814.0f

    goto :goto_39

    :cond_4b
    move/from16 v37, v6

    goto :goto_38

    :goto_39
    div-float v6, v8, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v36

    move/from16 v31, v10

    move/from16 v32, v10

    move/from16 v33, v4

    move/from16 v34, v4

    move/from16 v35, v5

    invoke-virtual/range {v30 .. v37}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/2addr v10, v5

    move/from16 v6, v16

    move-object/from16 v5, v18

    move/from16 v7, v19

    goto :goto_36

    :cond_4c
    move-object/from16 v18, v5

    move/from16 v16, v6

    const/4 v5, 0x1

    const v7, 0x444b8000    # 814.0f

    iget v6, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/2addr v6, v12

    iput v6, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    iget v6, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v6, v12

    iput v6, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v4, v5

    move/from16 v6, v16

    move-object/from16 v5, v18

    goto/16 :goto_35

    :cond_4d
    move v12, v6

    :goto_3a
    const/4 v5, 0x0

    :goto_3b
    if-ge v5, v3, :cond_59

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v13, :cond_4f

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v2, :cond_4e

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v2, v9

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :cond_4e
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_52

    const/4 v4, 0x1

    goto :goto_3c

    :cond_4f
    const/4 v4, 0x2

    iget-byte v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v2, v12, :cond_50

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_51

    :cond_50
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v2, v9

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :cond_51
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_52

    :goto_3c
    iput-boolean v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    :cond_52
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-nez v13, :cond_58

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->access$000(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-boolean v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    if-eqz v2, :cond_54

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_53

    add-int/lit8 v2, v2, 0x6c

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :cond_53
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/lit8 v2, v2, 0x6c

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/16 v6, 0x3e8

    goto :goto_3f

    :cond_54
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_57

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v6, 0x3e8

    if-eq v2, v6, :cond_56

    add-int/lit8 v2, v2, -0x6c

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :cond_55
    :goto_3d
    const/4 v1, 0x1

    goto :goto_3f

    :cond_56
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    if-eqz v2, :cond_55

    add-int/lit8 v2, v2, 0x6c

    iput v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    goto :goto_3d

    :cond_57
    :goto_3e
    const/16 v6, 0x3e8

    goto :goto_3d

    :cond_58
    const/4 v4, 0x2

    goto :goto_3e

    :goto_3f
    add-int/2addr v5, v1

    goto :goto_3b

    :cond_59
    return-void
.end method

.method public contains(I)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public findCaptionMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    move-object v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public findMessageWithFlags(I)Lorg/telegram/messenger/MessageObject;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v2, :cond_1

    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findMessageWithFlags(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positionsArray:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    :cond_1
    return-object v0
.end method

.class public Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;,
        Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;
    }
.end annotation


# static fields
.field public static currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

.field public static currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

.field private static lastHapticTime:J

.field private static uniqPrefix:I


# instance fields
.field animateInProgress:F

.field animateOutProgress:F

.field private final animationType:I

.field avatars:Ljava/util/ArrayList;

.field private cell:Landroid/view/View;

.field private final container:Landroid/widget/FrameLayout;

.field private final currentAccount:I

.field private decorView:Landroid/view/ViewGroup;

.field private dismissProgress:F

.field private dismissed:Z

.field private final effectImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

.field private final emojiImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

.field private final emojiStaticImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

.field private final groupId:J

.field private holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

.field private holderView2:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field isFinished:Z

.field public isStories:Z

.field private lastDrawnToX:F

.field private lastDrawnToY:F

.field loc:[I

.field private final messageId:I

.field private nextReactionOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

.field private final reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public startTime:J

.field public started:Z

.field private useWindow:Z

.field private wasScrolled:Z

.field private windowManager:Landroid/view/WindowManager;

.field public windowView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V
    .locals 36

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p5

    move-object/from16 v9, p8

    move/from16 v8, p9

    move/from16 v7, p10

    move/from16 v6, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x2

    new-array v0, v5, [I

    iput-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v4, 0x0

    iput-object v4, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iput-object v4, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView2:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    iput-boolean v6, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->isStories:Z

    instance-of v0, v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v16, v11

    check-cast v16, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v5

    iput-wide v5, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->groupId:J

    :goto_0
    move-object/from16 v6, v16

    goto :goto_1

    :cond_0
    instance-of v4, v11, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_1

    move-object v4, v11

    check-cast v4, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    iput-wide v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->groupId:J

    goto :goto_0

    :cond_1
    iput v1, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    iput-wide v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->groupId:J

    const/4 v6, 0x0

    :goto_1
    iput-object v9, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iput v7, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animationType:I

    iput v8, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentAccount:I

    iput-object v11, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->cell:Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v11

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v0

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_2
    instance-of v0, v11, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v0, :cond_3

    move-object v0, v11

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/ChatActionCell;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz p11, :cond_4

    const/4 v4, 0x2

    if-ne v7, v4, :cond_4

    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    const/16 v16, 0x1

    const/16 v18, 0x1

    move-object/from16 v19, v0

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v17, 0x2

    move-object/from16 v4, p4

    move-object/from16 v25, v5

    move-object/from16 v5, p5

    move-object/from16 v26, v6

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object v14, v10

    move/from16 v10, v16

    move/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    iput-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->nextReactionOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    goto :goto_4

    :cond_4
    move-wide/from16 v21, v2

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object v14, v10

    :goto_4
    instance-of v0, v13, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_5

    move-object v0, v13

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    move-object v7, v0

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    if-eqz v12, :cond_7

    const/4 v1, 0x0

    :goto_6
    iget-object v0, v12, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, v12, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v0, :cond_6

    iget-object v0, v12, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v12, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iput-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    const v0, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x1

    move/from16 v11, p10

    if-ne v11, v12, :cond_13

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    move-object/from16 v10, v26

    if-eqz v10, :cond_8

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v3, :cond_8

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_12

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    cmp-long v3, v5, v21

    if-gez v3, :cond_12

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_12

    iget-object v5, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->unread:Z

    if-eqz v5, :cond_9

    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    new-instance v6, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v6}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    cmp-long v16, v8, v21

    if-gez v16, :cond_b

    invoke-static/range {p9 .. p9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-nez v8, :cond_a

    :cond_9
    move/from16 v12, p9

    :goto_a
    move-object/from16 v30, v2

    move-object/from16 v31, v4

    goto/16 :goto_f

    :cond_a
    move/from16 v12, p9

    invoke-virtual {v5, v12, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v6, v8, v5}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_b
    move/from16 v12, p9

    invoke-static/range {p9 .. p9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {v5, v12, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v6, v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :goto_b
    new-instance v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    const/4 v9, 0x0

    invoke-direct {v1, v15, v9}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V

    iput-object v6, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->fromX:F

    iput v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->fromY:F

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const v8, 0x3dcccccd    # 0.1f

    mul-float v5, v5, v8

    const v8, 0x3e99999a    # 0.3f

    add-float/2addr v5, v8

    iput v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->jumpY:F

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    const v8, 0x3ecccccd    # 0.4f

    mul-float v5, v5, v8

    add-float/2addr v5, v0

    iput v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->randomScale:F

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    int-to-float v5, v5

    div-float/2addr v5, v6

    iput v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->randomRotation:F

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    const/high16 v17, 0x43480000    # 200.0f

    mul-float v5, v5, v17

    const/high16 v17, 0x43c80000    # 400.0f

    add-float v5, v5, v17

    float-to-int v5, v5

    iput v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->leftTime:I

    iget-object v5, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const v17, 0x3f19999a    # 0.6f

    const v18, 0x3e4ccccd    # 0.2f

    if-eqz v5, :cond_d

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    div-float/2addr v5, v6

    add-float v5, v5, v18

    iput v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toX:F

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v8

    div-float/2addr v5, v6

    iput v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toY:F

    move-object/from16 v30, v2

    move-object/from16 v31, v4

    goto/16 :goto_e

    :cond_d
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v26, 0x0

    :goto_c
    const/16 v8, 0xa

    if-ge v5, v8, :cond_11

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v8

    rem-int/lit8 v8, v8, 0x64

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v17

    div-float/2addr v8, v6

    add-float v8, v8, v18

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v28

    rem-int/lit8 v28, v28, 0x64

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const v27, 0x3ecccccd    # 0.4f

    mul-float v6, v6, v27

    const/high16 v28, 0x42c80000    # 100.0f

    div-float v6, v6, v28

    add-float v6, v6, v18

    const/high16 v29, 0x4f000000

    move-object/from16 v30, v2

    move-object/from16 v31, v4

    const/4 v2, 0x0

    :goto_d
    iget-object v4, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_f

    iget-object v4, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toX:F

    sub-float/2addr v4, v8

    move/from16 v32, v8

    iget-object v8, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toY:F

    sub-float/2addr v8, v6

    mul-float v4, v4, v4

    mul-float v8, v8, v8

    add-float/2addr v4, v8

    cmpg-float v8, v4, v29

    if-gez v8, :cond_e

    move/from16 v29, v4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v32

    goto :goto_d

    :cond_f
    move/from16 v32, v8

    cmpl-float v2, v29, v26

    if-lez v2, :cond_10

    move v0, v6

    move/from16 v26, v29

    move/from16 v9, v32

    :cond_10
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v30

    move-object/from16 v4, v31

    const/high16 v6, 0x42c80000    # 100.0f

    goto :goto_c

    :cond_11
    move-object/from16 v30, v2

    move-object/from16 v31, v4

    iput v9, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toX:F

    iput v0, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toY:F

    :goto_e
    iget-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v30

    move-object/from16 v4, v31

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x1

    goto/16 :goto_9

    :cond_12
    move/from16 v12, p9

    goto :goto_10

    :cond_13
    move/from16 v12, p9

    move-object/from16 v10, v26

    :goto_10
    iget-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-nez v0, :cond_15

    const/4 v1, 0x0

    cmpl-float v2, p6, v1

    if-eqz v2, :cond_14

    cmpl-float v2, p7, v1

    if-eqz v2, :cond_14

    goto :goto_11

    :cond_14
    const/16 v17, 0x0

    goto :goto_12

    :cond_15
    :goto_11
    const/16 v17, 0x1

    :goto_12
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v14, :cond_17

    iget-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v14, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v9, 0x0

    aget v2, v0, v9

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float v3, v3, v4

    instance-of v4, v14, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v4, :cond_16

    move-object v4, v14

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->bigReactionSelectedProgress:F

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-lez v6, :cond_16

    mul-float v4, v4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v4, v3

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v3, v4

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v3, v4

    sub-float/2addr v0, v4

    :cond_16
    move-object/from16 v4, p4

    move/from16 v18, v0

    move v14, v2

    :goto_13
    const/4 v8, 0x2

    goto/16 :goto_19

    :cond_17
    const/4 v9, 0x0

    if-eqz v0, :cond_18

    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    aget v0, v0, v9

    int-to-float v0, v0

    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float v3, v3, v4

    move-object/from16 v4, p4

    move v14, v0

    move/from16 v18, v2

    goto :goto_13

    :cond_18
    move-object/from16 v0, v25

    if-eqz v0, :cond_1c

    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    move-object/from16 v4, p4

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    aget v2, v2, v9

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v3, :cond_19

    const/4 v3, 0x0

    goto :goto_14

    :cond_19
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    :goto_14
    add-float/2addr v2, v3

    iget-object v3, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v5, :cond_1a

    const/4 v5, 0x0

    goto :goto_15

    :cond_1a
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    :goto_15
    add-float/2addr v3, v5

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_1b

    goto :goto_18

    :cond_1b
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v0

    move v14, v2

    move/from16 v18, v3

    const/4 v8, 0x2

    move v3, v0

    goto :goto_19

    :cond_1c
    move-object/from16 v4, p4

    if-eqz v4, :cond_1e

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    aget v2, v0, v9

    int-to-float v2, v2

    add-float v2, v2, p6

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    add-float v0, v0, p7

    instance-of v3, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_1d

    move-object v3, v4

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->starsPriceTopPadding:I

    goto :goto_16

    :cond_1d
    const/4 v3, 0x0

    :goto_16
    int-to-float v3, v3

    add-float/2addr v0, v3

    move/from16 v18, v0

    move v14, v2

    :goto_17
    const/4 v3, 0x0

    goto/16 :goto_13

    :cond_1e
    move/from16 v2, p6

    move/from16 v3, p7

    :goto_18
    move v14, v2

    move/from16 v18, v3

    goto :goto_17

    :goto_19
    if-ne v11, v8, :cond_20

    if-eqz p11, :cond_1f

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/high16 v0, 0x42700000    # 60.0f

    :goto_1a
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1b

    :cond_1f
    const/high16 v0, 0x42080000    # 34.0f

    goto :goto_1a

    :goto_1b
    int-to-float v2, v0

    mul-float v2, v2, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v1

    float-to-int v1, v2

    move v5, v0

    move v2, v1

    const/4 v6, 0x1

    goto :goto_21

    :cond_20
    const/4 v6, 0x1

    if-ne v11, v6, :cond_24

    const/high16 v0, 0x42a00000    # 80.0f

    if-eqz p11, :cond_23

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v2

    if-eqz v2, :cond_21

    const/high16 v2, 0x43700000    # 240.0f

    :goto_1c
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_1d

    :cond_21
    const/high16 v2, 0x430c0000    # 140.0f

    goto :goto_1c

    :goto_1d
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v1, v0

    :goto_1e
    move v5, v2

    :goto_1f
    move v2, v1

    goto :goto_21

    :cond_22
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->sizeForAroundReaction()I

    move-result v1

    goto :goto_1e

    :cond_23
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->sizeForAroundReaction()I

    move-result v1

    :goto_20
    move v5, v0

    goto :goto_1f

    :cond_24
    const/high16 v0, 0x43af0000    # 350.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->sizeForBigReaction()I

    move-result v1

    goto :goto_20

    :goto_21
    shr-int/lit8 v1, v5, 0x1

    shr-int/lit8 v0, v2, 0x1

    int-to-float v6, v1

    div-float v19, v3, v6

    const/4 v3, 0x0

    iput v3, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    iput v3, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    new-instance v6, Landroid/widget/FrameLayout;

    move-object/from16 v3, p1

    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->container:Landroid/widget/FrameLayout;

    new-instance v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;

    move/from16 v33, v0

    move-object v0, v15

    move/from16 p5, v1

    move-object/from16 v1, p0

    move-object/from16 p6, v15

    move v15, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v34, v5

    move/from16 v5, p11

    move-object/from16 v35, v6

    const/16 v16, 0x1

    move-object v6, v10

    move/from16 v20, v15

    const/4 v15, 0x2

    move/from16 v8, p5

    const/16 v23, 0x0

    move/from16 v9, p10

    move-object/from16 v24, v10

    move/from16 v10, v17

    move/from16 v11, v19

    const/4 v15, 0x1

    move v12, v14

    move/from16 v13, v18

    move-object/from16 v15, p1

    move-object/from16 v14, p8

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;IIZFFFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    invoke-direct {v1, v0, v15}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->effectImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    new-instance v9, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    invoke-direct {v9, v0, v15}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->emojiImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    new-instance v10, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    invoke-direct {v10, v0, v15}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->emojiStaticImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-object/from16 v2, p8

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v3, :cond_25

    invoke-static/range {p9 .. p9}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    move-object v11, v4

    goto :goto_22

    :cond_25
    move-object/from16 v11, v23

    :goto_22
    if-nez v11, :cond_26

    iget-wide v3, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v5, v3, v21

    if-eqz v5, :cond_27

    :cond_26
    const/4 v3, 0x1

    goto :goto_23

    :cond_27
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissed:Z

    goto/16 :goto_33

    :goto_23
    if-eqz v11, :cond_32

    const-string v12, "_"

    move/from16 v13, p10

    const/4 v2, 0x2

    if-eq v13, v2, :cond_2e

    if-ne v13, v3, :cond_28

    const/16 v2, 0x1010

    invoke-static {v2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_28
    if-nez v13, :cond_2c

    :cond_29
    if-ne v13, v3, :cond_2a

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_24

    :cond_2a
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->effect_animation:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_24
    if-ne v13, v3, :cond_2b

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v3

    :goto_25
    move-object v4, v3

    goto :goto_26

    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    :goto_26
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    goto :goto_27

    :cond_2c
    const/4 v14, 0x0

    :goto_27
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2, v14, v14}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_2d
    const/4 v2, 0x2

    goto :goto_28

    :cond_2e
    const/4 v14, 0x0

    :goto_28
    if-ne v13, v2, :cond_31

    if-eqz p11, :cond_2f

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_29

    :cond_2f
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->appear_animation:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_29
    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v4, v33

    :goto_2a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_30
    const/4 v3, 0x0

    goto/16 :goto_30

    :cond_31
    move/from16 v4, v33

    if-nez v13, :cond_30

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->uniqPrefix:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2a

    :cond_32
    move/from16 v13, p10

    const/4 v14, 0x0

    if-nez v13, :cond_33

    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-wide v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    move/from16 v6, p9

    const/4 v7, 0x1

    invoke-direct {v3, v7, v6, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->setAnimatedReactionDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    const/4 v3, 0x2

    goto :goto_2b

    :cond_33
    move/from16 v6, p9

    const/4 v3, 0x2

    const/4 v7, 0x1

    if-ne v13, v3, :cond_34

    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-wide v14, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v4, v3, v6, v14, v15}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->setAnimatedReactionDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    :cond_34
    :goto_2b
    if-eqz v13, :cond_35

    if-ne v13, v7, :cond_30

    :cond_35
    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-wide v7, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v4, v3, v6, v7, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    if-eqz v24, :cond_3a

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_36

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonBackground:I

    goto :goto_2c

    :cond_36
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonBackground:I

    goto :goto_2c

    :cond_37
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_38

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonTextSelected:I

    goto :goto_2c

    :cond_38
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonTextSelected:I

    :goto_2c
    if-eqz p2, :cond_39

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    goto :goto_2d

    :cond_39
    move-object/from16 v3, v23

    :goto_2d
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    goto :goto_2e

    :cond_3a
    const/4 v2, -0x1

    :goto_2e
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-nez v13, :cond_3b

    const/4 v2, 0x1

    goto :goto_2f

    :cond_3b
    const/4 v2, 0x0

    :goto_2f
    xor-int/lit8 v3, v2, 0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->createFrom(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;ZZ)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->setAnimatedEmojiEffect(Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :goto_30
    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-eqz v2, :cond_3c

    const/4 v2, 0x2

    if-ne v13, v2, :cond_3d

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_3c
    :goto_31
    move/from16 v3, p5

    move/from16 v2, v34

    goto :goto_32

    :cond_3d
    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_31

    :goto_32
    sub-int v5, v2, v3

    shr-int/lit8 v4, v5, 0x1

    const/4 v6, 0x1

    if-ne v13, v6, :cond_3e

    move v5, v4

    :cond_3e
    move-object/from16 v6, v35

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v7, 0x1

    if-eq v13, v7, :cond_40

    if-nez p11, :cond_40

    if-eqz v11, :cond_3f

    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v25

    iget-object v7, v11, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v26

    const-string v29, "webp"

    const/16 v31, 0x1

    const-string v27, "40_40_lastreactframe"

    const/16 v28, 0x0

    move-object/from16 v30, v11

    invoke-virtual/range {v25 .. v31}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_3f
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_40
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    neg-int v7, v4

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    neg-int v8, v5

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v5

    invoke-virtual {v6, v1}, Landroid/view/View;->setPivotX(F)V

    int-to-float v1, v4

    invoke-virtual {v6, v1}, Landroid/view/View;->setPivotY(F)V

    :goto_33
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissed:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->emojiImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->container:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->wasScrolled:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->nextReactionOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->removeCurrentView()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animationType:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissProgress:F

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissProgress:F

    return p1
.end method

.method static synthetic access$216(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissProgress:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissProgress:F

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->holderView:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToX:F

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToX:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToY:F

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToY:F

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->effectImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->emojiStaticImageView:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    return-object p0
.end method

.method public static dismissAll()V
    .locals 2

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissed:Z

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissed:Z

    :cond_1
    return-void
.end method

.method public static getFilterForAroundAnimation()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->sizeForAroundReaction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->sizeForAroundReaction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_nolimit_pcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isPlaying(IJLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z
    .locals 7

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animationType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_3

    :cond_0
    iget-wide v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->groupId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    cmp-long v4, p1, v2

    if-eqz v4, :cond_2

    :cond_1
    iget p1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->messageId:I

    if-ne p0, p1, :cond_3

    :cond_2
    iget-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static onScrolled(I)V
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToY:F

    int-to-float v2, p0

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastDrawnToY:F

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->wasScrolled:Z

    :cond_0
    return-void
.end method

.method public static removeCurrent(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    if-nez v0, :cond_0

    sget-object v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    invoke-direct {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->removeCurrentView()V

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissed:Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    sput-object p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    sput-object p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    return-void
.end method

.method private removeCurrentView()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->useWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;II)V
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v14, p8

    if-eqz v13, :cond_8

    if-eqz p6, :cond_8

    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "view_animations"

    const/4 v15, 0x1

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v11, 0x2

    if-eq v14, v11, :cond_2

    if-nez v14, :cond_3

    :cond_2
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;II)V

    :cond_3
    new-instance v10, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v16, 0x0

    move-object v0, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v17, v10

    move/from16 v10, p8

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    move-object/from16 v0, v17

    if-ne v14, v15, :cond_4

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    goto :goto_0

    :cond_4
    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    :goto_0
    instance-of v1, v12, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_6

    move-object v1, v12

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v14, :cond_5

    const/4 v2, 0x2

    if-ne v14, v2, :cond_6

    :cond_5
    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    :goto_1
    iput-boolean v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->useWindow:Z

    if-eqz v15, :cond_7

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x3e8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v2, 0x10118

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v2, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->decorView:Landroid/view/ViewGroup;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->invalidate()V

    instance-of v0, v13, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_8

    move-object v0, v13

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_3
    return-void
.end method

.method public static sizeForAroundReaction()I
    .locals 2

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static sizeForBigReaction()I
    .locals 3

    const/high16 v0, 0x43af0000    # 350.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static startAnimation()V
    .locals 5

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animationType:I

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastHapticTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastHapticTime:J

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->cell:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startShortAnimation()V

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->cell:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    :goto_0
    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static startShortAnimation()V
    .locals 5

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animationType:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastHapticTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->lastHapticTime:J

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->cell:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.class public Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;,
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;,
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;,
        Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    }
.end annotation


# static fields
.field private static animationUniq:I

.field private static final comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

.field private static final cutTagPaint:Landroid/graphics/Paint;

.field private static final paint:Landroid/graphics/Paint;

.field private static pointer:I

.field private static final tagPaint:Landroid/graphics/Paint;

.field private static final textPaint:Landroid/text/TextPaint;

.field private static final usersComparator:Ljava/util/Comparator;


# instance fields
.field private animateFromTotalHeight:I

.field public animateHeight:Z

.field private animateMove:Z

.field private animateWidth:Z

.field final animatedReactions:Ljava/util/HashMap;

.field attached:Z

.field availableWidth:I

.field currentAccount:I

.field public drawServiceShaderBackground:F

.field public fromWidth:I

.field private fromX:F

.field private fromY:F

.field public hasPaidReaction:Z

.field public hasUnreadReactions:Z

.field public height:I

.field public isEmpty:Z

.field public isSmall:Z

.field private lastDrawTotalHeight:I

.field lastDrawingReactionButtons:Ljava/util/HashMap;

.field lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

.field private lastDrawnWidth:I

.field private lastDrawnX:F

.field private lastDrawnY:F

.field public lastLineX:I

.field lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

.field lastX:F

.field lastY:F

.field longPressRunnable:Ljava/lang/Runnable;

.field messageObject:Lorg/telegram/messenger/MessageObject;

.field outButtons:Ljava/util/ArrayList;

.field parentView:Landroid/view/View;

.field public positionOffsetY:I

.field pressed:Z

.field public reactionButtons:Ljava/util/ArrayList;

.field private final reactionLineWidths:Ljava/util/ArrayList;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrimDirection:Z

.field private scrimProgress:F

.field private final scrimRect:Landroid/graphics/RectF;

.field private final scrimRect2:Landroid/graphics/Rect;

.field private scrimViewReaction:Ljava/lang/Integer;

.field public tags:Z

.field public totalHeight:I

.field private touchSlop:F

.field private wasDrawn:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public static synthetic $r8$lambda$PUvINze9IkR1wVS4VbZduDR1Brs(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lambda$static$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UHLi4PuOVSFhhIP-vKr7DAdhnuY(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lambda$checkTouchEvent$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->tagPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->cutTagPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$1;)V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    sput v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pointer:I

    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->usersComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionLineWidths:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimRect2:Landroid/graphics/Rect;

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Landroid/view/View;

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->initPaints(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->touchSlop:F

    return-void
.end method

.method static synthetic access$300()Landroid/text/TextPaint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$500()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->cutTagPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->tagPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->usersComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private didPressReaction(Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_3

    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getDelegate()Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didPressReaction(Lorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static equalsTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;)Z
    .locals 4

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    cmp-long v0, v2, p0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private equalsUsersList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getPeerId(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v4

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getPeerId(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v0
.end method

.method public static fillTagPath(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fillTagPath(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method public static fillTagPath(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 20

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->rewind()V

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v7, v4

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, -0x3ccc0000    # -180.0f

    invoke-virtual {v8, v1, v4, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const v1, 0x3fb33333    # 1.4f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Landroid/graphics/RectF;->right:F

    const v3, 0x411170a4    # 9.09f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x3d656042    # 0.056f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v9, v2, v3

    const v3, 0x3f9c28f6    # 1.22f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v10, v2, v3

    const v3, 0x40447ae1    # 3.07f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v11, v2, v3

    const v3, 0x4019fbe7    # 2.406f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v12, v2, v3

    const v3, 0x410451ec    # 8.27f

    add-float/2addr v3, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v13, v2, v3

    const v3, 0x410ec49c    # 8.923f

    add-float/2addr v3, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v14, v2, v3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const v3, 0x3fe0624e    # 1.753f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float v15, v2, v4

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v7, v2, v3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const v3, 0x3f29ba5e    # 0.663f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float v16, v2, v4

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v5, v2, v3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const v3, 0x4124353f    # 10.263f

    add-float/2addr v3, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float v17, v2, v4

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v6, v2, v3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const v3, 0x413553f8    # 11.333f

    add-float/2addr v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v18, v2, v3

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v19, v2, v1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v1, p2

    move v2, v10

    move v4, v12

    move/from16 p1, v9

    move v9, v6

    move v6, v11

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v13, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move v2, v14

    move/from16 v3, v19

    move v4, v14

    move/from16 v5, v18

    move v6, v13

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v11, v15}, Landroid/graphics/Path;->lineTo(FF)V

    iget v6, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    move v1, v12

    move/from16 v2, v16

    move v3, v10

    move v4, v6

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private getParentWidth()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getParentWidth()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method private static getPeerId(Lorg/telegram/tgnet/TLObject;)J
    .locals 2

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0

    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static initPaints(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->paint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->textPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p0, 0x41400000    # 12.0f

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->cutTagPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private synthetic lambda$checkTouchEvent$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V
    .locals 3

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->didPressReaction(Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 2

    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getPeerId(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getPeerId(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static reactionsEqual(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;)Z
    .locals 4

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-nez v0, :cond_2

    return v1

    :cond_2
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    cmp-long v0, v2, p0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method


# virtual methods
.method public animateChange()Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v5, :cond_2

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z

    move-result v6

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z

    move-result v7

    if-eq v6, v7, :cond_2

    const/4 v5, 0x0

    :cond_2
    if-eqz v5, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    iget-object v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    iget v7, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    if-ne v6, v7, :cond_4

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    iget v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    if-ne v6, v8, :cond_4

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iget v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    if-ne v6, v8, :cond_4

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    iget v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    if-ne v6, v8, :cond_4

    iget-boolean v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    iget-boolean v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    if-ne v6, v8, :cond_4

    iget-object v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-nez v6, :cond_4

    iget-object v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    iput v1, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    goto :goto_4

    :cond_4
    :goto_2
    iput v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromX:I

    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromY:I

    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromWidth:I

    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromTextColor:I

    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromBackgroundColor:I

    iget v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTagDotColor:I

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromTagDotColor:I

    const/4 v2, 0x3

    iput v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    iget v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    iget v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    if-eq v2, v6, :cond_5

    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v6, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    invoke-virtual {v2, v6, v4}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    :cond_5
    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-nez v2, :cond_6

    iget-object v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v6, :cond_9

    :cond_6
    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    :cond_7
    iget-object v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    :cond_8
    iget-object v2, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    iget-object v6, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->equalsUsersList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v2, :cond_9

    iget-object v3, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-virtual {v2, v3, v5, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->animateFromState(Lorg/telegram/ui/Components/AvatarsDrawable;IZ)V

    :cond_9
    :goto_3
    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    iput v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    goto :goto_3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtonsTmp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastImageDrawn:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    const/4 v2, 0x1

    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->wasDrawn:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnX:F

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_e

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_f

    :cond_e
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateMove:Z

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromX:F

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromY:F

    const/4 v2, 0x1

    :cond_f
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    if-eq v0, v1, :cond_10

    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateWidth:Z

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromWidth:I

    const/4 v2, 0x1

    :cond_10
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawTotalHeight:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    if-eq v0, v1, :cond_11

    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateFromTotalHeight:I

    goto :goto_6

    :cond_11
    move v4, v2

    :goto_6
    return v4
.end method

.method public animateReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 12

    iget-wide v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    sget v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animationUniq:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animationUniq:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v10, :cond_0

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const-string v9, "tgs"

    const/4 v11, 0x1

    const-string v7, "40_40_nolimit"

    const/4 v8, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_0
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->tags:Z

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isSame(Lorg/telegram/tgnet/TLRPC$Reaction;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->startAnimation()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public checkTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/ChatActionCell;

    iget v4, v4, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    goto :goto_0

    :cond_2
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v7, v7

    cmpl-float v7, v0, v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    iget-object v8, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    iget-object v8, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastX:F

    iput v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastY:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iput-boolean v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->touchSlop:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_7

    :cond_6
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastY:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->touchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_e

    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_8
    iput-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_e

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_e

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->longPressRunnable:Ljava/lang/Runnable;

    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->didPressReaction(Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_d
    iput-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastSelectedButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    :cond_e
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pressed:Z

    return p1

    :cond_f
    :goto_4
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;FLjava/lang/Integer;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v2, v2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnX:F

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    :cond_1
    :goto_0
    move v12, v1

    move v13, v2

    goto :goto_1

    :cond_2
    iget-boolean v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateMove:Z

    if-eqz v3, :cond_1

    mul-float v1, v1, p2

    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromX:F

    sub-float v4, v11, p2

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    mul-float v2, v2, p2

    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromY:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    goto :goto_0

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x3f000000    # 0.5f

    if-ge v15, v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimViewReaction:Ljava/lang/Integer;

    if-nez v2, :cond_3

    if-nez p3, :cond_3

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimProgress:F

    cmpg-float v2, v2, v17

    if-gez v2, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detachPreview()V

    :cond_3
    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimViewReaction:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_6

    :cond_4
    if-eqz p3, :cond_5

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v2, v2

    iget v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v3, v3

    const/4 v4, 0x3

    cmpl-float v5, p2, v11

    if-eqz v5, :cond_6

    iget v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v5, v4, :cond_6

    mul-float v2, v2, p2

    iget v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromX:I

    int-to-float v5, v5

    sub-float v6, v11, p2

    mul-float v5, v5, v6

    add-float/2addr v2, v5

    mul-float v3, v3, p2

    iget v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromY:I

    int-to-float v5, v5

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    :cond_6
    const/4 v5, 0x1

    cmpl-float v6, p2, v11

    if-eqz v6, :cond_7

    iget v6, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v6, v5, :cond_7

    mul-float v6, p2, v17

    add-float v6, v6, v17

    add-float v7, v12, v2

    iget v8, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v8, v8

    div-float v8, v8, v16

    add-float/2addr v7, v8

    add-float v8, v13, v3

    iget v9, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v9, v9

    div-float v9, v9, v16

    add-float/2addr v8, v9

    invoke-virtual {v10, v6, v6, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    move/from16 v6, p2

    goto :goto_3

    :cond_7
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_3
    add-float v7, v12, v2

    add-float v8, v13, v3

    iget v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v2, v4, :cond_8

    move/from16 v9, p2

    goto :goto_4

    :cond_8
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_4
    if-eqz p3, :cond_9

    const/16 v16, 0x1

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    :goto_5
    iget-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimDirection:Z

    iget v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimProgress:F

    move-object/from16 v2, p1

    move v3, v7

    move/from16 v17, v4

    move v4, v8

    move v8, v5

    move v5, v9

    move/from16 v7, v16

    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->draw(Landroid/graphics/Canvas;FFFFZZF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_a
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    sub-float v6, v11, p2

    mul-float v2, v6, v17

    add-float v2, v2, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v12

    iget v4, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v4, v4

    div-float v4, v4, v16

    add-float/2addr v3, v4

    iget v4, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v4, v4

    add-float/2addr v4, v13

    iget v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v5, v5

    div-float v5, v5, v16

    add-float/2addr v4, v5

    invoke-virtual {v10, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v12

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v1, v1

    add-float v4, v13, v1

    iget-boolean v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimDirection:Z

    iget v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->draw(Landroid/graphics/Canvas;FFFFZZF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method public drawOverlay(Landroid/graphics/Canvas;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v2, v2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnX:F

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    :cond_1
    :goto_0
    move v10, v1

    move v11, v2

    goto :goto_1

    :cond_2
    iget-boolean v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateMove:Z

    if-eqz v3, :cond_1

    mul-float v1, v1, p2

    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromX:F

    sub-float v4, v9, p2

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    mul-float v2, v2, p2

    iget v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromY:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    goto :goto_0

    :goto_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x3f000000    # 0.5f

    if-ge v13, v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    if-nez v2, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v2, v2

    iget v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v3, v3

    const/4 v4, 0x3

    cmpl-float v5, p2, v9

    if-eqz v5, :cond_4

    iget v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v5, v4, :cond_4

    mul-float v2, v2, p2

    iget v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromX:I

    int-to-float v5, v5

    sub-float v6, v9, p2

    mul-float v5, v5, v6

    add-float/2addr v2, v5

    mul-float v3, v3, p2

    iget v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromY:I

    int-to-float v5, v5

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    :cond_4
    cmpl-float v5, p2, v9

    if-eqz v5, :cond_5

    iget v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    mul-float v5, p2, v15

    add-float/2addr v5, v15

    add-float v6, v10, v2

    iget v7, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v14

    add-float/2addr v6, v7

    add-float v7, v11, v3

    iget v15, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v15, v15

    div-float/2addr v15, v14

    add-float/2addr v7, v15

    invoke-virtual {v8, v5, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    move/from16 v6, p2

    goto :goto_3

    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_3
    add-float v5, v10, v2

    add-float v7, v11, v3

    iget v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    if-ne v2, v4, :cond_6

    move/from16 v14, p2

    goto :goto_4

    :cond_6
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_4
    const/4 v15, 0x0

    move-object/from16 v2, p1

    move v3, v5

    move v4, v7

    move v5, v14

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawOverlay(Landroid/graphics/Canvas;FFFFZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    if-nez v2, :cond_8

    goto :goto_7

    :cond_8
    sub-float v6, v9, p2

    mul-float v2, v6, v15

    add-float/2addr v2, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v10

    iget v4, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v14

    add-float/2addr v3, v4

    iget v4, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    iget v5, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v14

    add-float/2addr v4, v5

    invoke-virtual {v8, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v10

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v1, v1

    add-float v4, v11, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawOverlay(Landroid/graphics/Canvas;FFFFZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method public drawPreview(Landroid/view/View;Landroid/graphics/Canvas;ILjava/lang/Integer;)V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz p4, :cond_1

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getParentWidth()I

    move-result v5

    iget v6, v2, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    int-to-float v5, v5

    sub-float/2addr v5, v3

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimRect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v4

    sub-float v4, v7, v3

    int-to-float v8, p3

    add-float/2addr v4, v8

    add-float/2addr v3, v5

    add-float/2addr v7, v8

    invoke-virtual {v6, v5, v4, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimProgress:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimRect:Landroid/graphics/RectF;

    invoke-static {v2, v4, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attachPreview(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v4, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawPreview(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public getCurrentTotalHeight(F)F
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateFromTotalHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    int-to-float p1, p1

    return p1
.end method

.method public getCurrentWidth(F)F
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateWidth:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->fromWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    int-to-float p1, p1

    return p1
.end method

.method public getReactionButton(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
    .locals 3

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    return-object p1
.end method

.method public getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
    .locals 2

    .line 0
    iget-boolean v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v0, :cond_0

    const-string p1, "stars"

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object p1

    return-object p1
.end method

.method public hasOverlay()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasPaidReaction:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x2008

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public measure(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->height:I

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->positionOffsetY:I

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iput v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->availableWidth:I

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionLineWidths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x41d00000    # 26.0f

    const/4 v12, 0x1

    if-ge v4, v9, :cond_b

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v9}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z

    move-result v13

    const/high16 v14, 0x40800000    # 4.0f

    if-eqz v13, :cond_1

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iput v11, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iput v10, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    goto/16 :goto_5

    :cond_1
    iget-boolean v13, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    const/high16 v15, 0x41000000    # 8.0f

    if-eqz v13, :cond_3

    const/high16 v10, 0x42280000    # 42.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iput v10, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iput v10, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    iget-boolean v10, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    if-eqz v10, :cond_2

    iget v10, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v10, v10

    iget-object v11, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v11

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    goto/16 :goto_5

    :cond_2
    iget-object v10, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    if-eqz v10, :cond_8

    iget v11, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    if-le v11, v12, :cond_8

    iget v11, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    invoke-virtual {v10}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getCurrentWidth()I

    move-result v10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v11, v10

    iput v11, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    goto/16 :goto_5

    :cond_3
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/high16 v16, 0x41a00000    # 20.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v13, v13, v17

    iget-object v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_4

    const/high16 v3, 0x40c00000    # 6.0f

    goto :goto_1

    :cond_4
    const/high16 v3, 0x40800000    # 4.0f

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v13, v3

    iput v13, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iget-object v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v3, :cond_6

    iget-object v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    iget-object v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v12, :cond_5

    iget-object v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iget v12, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v12, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v10, v13

    int-to-float v10, v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    mul-int v3, v3, v13

    int-to-float v3, v3

    const v13, 0x3f4ccccd    # 0.8f

    mul-float v3, v3, v13

    add-float/2addr v10, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v10, v3

    add-float/2addr v12, v10

    float-to-int v3, v12

    iput v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iget-object v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iput v10, v3, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    goto :goto_4

    :cond_6
    iget-boolean v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->hasName:Z

    if-eqz v3, :cond_7

    iget v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v3, v3

    iget-object v10, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    add-float/2addr v3, v10

    float-to-int v3, v3

    :goto_3
    iput v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    goto :goto_4

    :cond_7
    iget v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iget-object v10, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getCurrentWidth()I

    move-result v10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v3, v10

    goto :goto_3

    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    :cond_8
    :goto_5
    iget v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    add-int/2addr v3, v5

    if-le v3, v1, :cond_9

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionLineWidths:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v7, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    :cond_9
    iput v5, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    iput v7, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    iput v8, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->top:I

    iget v3, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v3, v9

    add-int/2addr v5, v3

    if-le v5, v6, :cond_a

    move v6, v5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionLineWidths:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v2, v4, :cond_f

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_6
    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v10, v14, :cond_e

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v14, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    if-eq v14, v8, :cond_d

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    add-int/lit8 v15, v10, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v14, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v9, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    add-int/2addr v14, v9

    sub-int v9, v1, v14

    :goto_7
    if-ge v13, v10, :cond_c

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v15, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v15, v9

    iput v15, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_c
    move v13, v10

    :cond_d
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_6

    :cond_e
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v12

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v9, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    add-int/2addr v9, v10

    sub-int v9, v1, v9

    :goto_8
    if-gt v13, v8, :cond_12

    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v14, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v14, v9

    iput v14, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_f
    if-ne v2, v12, :cond_12

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    const/4 v8, 0x0

    :goto_9
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_12

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v13, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->top:I

    if-ltz v13, :cond_11

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionLineWidths:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v13, v14, :cond_10

    goto :goto_a

    :cond_10
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionLineWidths:Ljava/util/ArrayList;

    iget v14, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->top:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    goto :goto_b

    :cond_11
    :goto_a
    const/4 v13, 0x0

    :goto_b
    iget v14, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    int-to-float v14, v14

    int-to-float v15, v1

    sub-float/2addr v15, v13

    div-float/2addr v15, v10

    add-float/2addr v14, v15

    float-to-int v13, v14

    iput v13, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_12
    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastLineX:I

    if-eq v2, v4, :cond_14

    if-ne v2, v12, :cond_13

    goto :goto_c

    :cond_13
    iput v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    goto :goto_d

    :cond_14
    :goto_c
    iput v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_15

    const/16 v17, 0x0

    goto :goto_e

    :cond_15
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move/from16 v17, v1

    :goto_e
    add-int v7, v7, v17

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->height:I

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    return-void
.end method

.method public onAttachToWindow()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->attached:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->attached:Z

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public recordDrawingState()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawingReactionButtons:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->wasDrawn:Z

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnX:F

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnY:F

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->width:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawnWidth:I

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->lastDrawTotalHeight:I

    return-void
.end method

.method public resetAnimation()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->outButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateMove:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateWidth:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateHeight:Z

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput v0, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setMessage(Lorg/telegram/messenger/MessageObject;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v0, p4

    iput-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-boolean v8, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isSmall:Z

    iput-boolean v9, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->tags:Z

    iput-object v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v11, 0x0

    iput-boolean v11, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasUnreadReactions:Z

    iput-boolean v11, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasPaidReaction:Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_14

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;->dialogId:J

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v1, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    add-int/2addr v12, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_1
    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_12

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/TLRPC$Reaction;->equals(Lorg/telegram/tgnet/TLRPC$Reaction;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_3
    new-instance v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v3, v14

    move/from16 v4, p2

    move-object v15, v5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZZ)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v0

    iput-boolean v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->inGroup:Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasPaidReaction:Z

    if-nez v0, :cond_4

    iget-boolean v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->paid:Z

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasPaidReaction:Z

    const/4 v0, 0x2

    if-nez v8, :cond_9

    if-nez v9, :cond_9

    iget-object v1, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v16, v1, v3

    if-lez v16, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget v3, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget v4, v14, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    if-ne v4, v0, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v3, :cond_8

    goto :goto_6

    :cond_6
    iget-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz v4, :cond_7

    if-eqz v2, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    if-eqz v3, :cond_8

    :goto_6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_7
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    move/from16 v18, v12

    :goto_8
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    move/from16 v18, v12

    goto :goto_b

    :cond_a
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_9

    if-gt v12, v2, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    iget-object v3, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    iget-object v3, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReactions;->recent_reactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    iget v5, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v18, v12

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v2, v2, 0x1

    move/from16 v12, v18

    const/4 v0, 0x2

    const/4 v11, 0x0

    goto :goto_9

    :cond_d
    move/from16 v18, v12

    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->setUsers(Ljava/util/ArrayList;)V

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_8

    :goto_a
    iput v0, v15, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    iget-object v1, v15, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    :cond_e
    :goto_b
    if-eqz v8, :cond_f

    iget v0, v14, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    const/4 v5, 0x1

    if-le v0, v5, :cond_f

    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz v0, :cond_f

    new-instance v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;

    const/4 v2, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v3, v14

    move/from16 v4, p2

    const/4 v12, 0x1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionLayoutButton;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZZ)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v0

    iput-boolean v0, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->inGroup:Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-boolean v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    goto :goto_c

    :cond_f
    const/4 v1, 0x0

    if-eqz v8, :cond_10

    const/4 v0, 0x2

    if-ne v13, v0, :cond_10

    goto :goto_c

    :cond_10
    iget-boolean v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->attached:Z

    if-eqz v0, :cond_11

    invoke-virtual {v15}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    :cond_11
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v18

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_12
    const/4 v1, 0x0

    :goto_c
    if-nez v8, :cond_13

    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->comparator:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;

    iget v2, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    iput v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ButtonsComparator;->currentAccount:I

    iget-object v2, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_d
    iget-object v2, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_13

    iget-object v2, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;

    move-result-object v2

    sget v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pointer:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->pointer:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->lastDrawnPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_13
    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->hasUnreadReactions(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    iput-boolean v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->hasUnreadReactions:Z

    goto :goto_e

    :cond_14
    const/4 v1, 0x0

    :goto_e
    const/4 v11, 0x0

    :goto_f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_15

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_15
    iget-object v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->reactionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    return-void
.end method

.method public setScrimProgress(F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimProgress:F

    return-void
.end method

.method public setScrimProgress(FZ)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimProgress:F

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimDirection:Z

    return-void
.end method

.method public setScrimReaction(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->scrimViewReaction:Ljava/lang/Integer;

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    instance-of p1, p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class public Lorg/telegram/ui/Stars/StarReactionsOverlay;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private accumulatedRippleIntensity:F

.field private cell:Lorg/telegram/ui/Cells/BaseCell;

.field private final chatActivity:Lorg/telegram/ui/ChatActivity;

.field private final clickBounds:Landroid/graphics/RectF;

.field private final clip:Lorg/telegram/ui/GradientClip;

.field private final counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private final counterAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private counterShown:Z

.field private final effectAssets:[I

.field private final effects:Ljava/util/ArrayList;

.field private focus:F

.field private focusAnimator:Landroid/animation/ValueAnimator;

.field public hidden:Z

.field private hideCounterRunnable:Ljava/lang/Runnable;

.field private lastRippleTime:J

.field private final longPressRunnable:Ljava/lang/Runnable;

.field private messageId:I

.field private final pos:[I

.field private final pos2:[I

.field private pressed:Z

.field private final reactionBounds:Landroid/graphics/RectF;

.field private final redPaint:Landroid/graphics/Paint;

.field private final shadowPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$-0uHECMoW-tP0e3UehsS-AglCpI(Lorg/telegram/ui/Stars/StarReactionsOverlay;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->lambda$new$1(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MeoN0O3re61DZ6DmZrQG8fF4HrU(Lorg/telegram/ui/Stars/StarReactionsOverlay;Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->lambda$checkBalance$2(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$OSWZhIXfQa9ypI8eE36I7qWE3V0(Lorg/telegram/ui/Stars/StarReactionsOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->lambda$focusTo$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iQ5dtsasBSzNkUVm6jAs-rkCkto(Lorg/telegram/ui/Stars/StarReactionsOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->lambda$hide$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$rXmZ6C4ZBLu_m1as3w83eY2vTg0(Lorg/telegram/ui/Stars/StarReactionsOverlay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 8

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos2:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->clickBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->shadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->redPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1a4

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counterAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v1, Lorg/telegram/ui/GradientClip;

    invoke-direct {v1}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->clip:Lorg/telegram/ui/GradientClip;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effects:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/messenger/R$raw;->star_reaction_effect1:I

    sget v2, Lorg/telegram/messenger/R$raw;->star_reaction_effect2:I

    sget v3, Lorg/telegram/messenger/R$raw;->star_reaction_effect3:I

    sget v4, Lorg/telegram/messenger/R$raw;->star_reaction_effect4:I

    sget v5, Lorg/telegram/messenger/R$raw;->star_reaction_effect5:I

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effectAssets:[I

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const-string v1, "fonts/num.otf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40600000    # 3.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setShadowLayer(FFFI)V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    new-instance v0, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarReactionsOverlay;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->hideCounterRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/StarReactionsOverlay;Lorg/telegram/ui/ChatActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->longPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stars/StarReactionsOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focus:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stars/StarReactionsOverlay;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focusAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private checkBalance()V
    .locals 13

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stars/StarsController;->getPendingPaidReactions(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v8

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance(Z)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-gez v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->undoPaidReaction()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    new-instance v12, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda1;

    move-object v1, v12

    move-object v2, p0

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarReactionsOverlay;Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;J)V

    const/4 v1, 0x5

    move-object v5, v0

    move-object v6, v7

    move-object v7, v10

    move v10, v1

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    :cond_2
    return-void
.end method

.method private getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$checkBalance$2(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/MessageObject;J)V
    .locals 8

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Stars/StarsController;->sendPaidReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JZZLjava/lang/Long;)Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    return-void
.end method

.method private synthetic lambda$focusTo$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focus:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$hide$4()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->setMessageCell(Lorg/telegram/ui/Cells/BaseCell;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->clearEffects()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counterShown:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->checkBalance()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->hide()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ChatActivity;)V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    instance-of v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v11, v3

    goto :goto_3

    :cond_3
    instance-of v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v2, :cond_7

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v2, :cond_2

    :goto_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->top_reactors:Ljava/util/ArrayList;

    goto :goto_1

    :goto_3
    iget v2, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->commitPaidReaction()V

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v6

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v7

    if-eqz v2, :cond_6

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v1, 0x1

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    move-object v4, v3

    move-object v9, p1

    move-object v10, v0

    invoke-direct/range {v4 .. v13}, Lorg/telegram/ui/Stars/StarsReactionsSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v3, p1, v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->setMessageCell(Lorg/telegram/ui/ChatActivity;ILandroid/view/View;)V

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :cond_7
    return-void
.end method


# virtual methods
.method public clearEffects()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatActionCell;->isCellAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget v4, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->messageId:I

    const/4 v5, 0x0

    if-eq v2, v4, :cond_3

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->setMessageCell(Lorg/telegram/ui/Cells/BaseCell;)V

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->getReactionsLayoutInBubble()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->setMessageCell(Lorg/telegram/ui/Cells/BaseCell;)V

    return-void

    :cond_4
    iget v4, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focus:F

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3fe66666    # 1.8f

    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->getClipTop()F

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getClipBottom()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v10, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focus:F

    sub-float v10, v6, v10

    mul-float v8, v8, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focus:F

    sub-float v12, v6, v12

    mul-float v9, v9, v12

    sub-float/2addr v11, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8, v10, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos2:[I

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos:[I

    invoke-virtual {v8, v10}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos:[I

    const/4 v10, 0x1

    aget v11, v8, v10

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget v12, v12, Lorg/telegram/ui/ChatActivity;->drawingChatListViewYoffset:F

    float-to-int v12, v12

    add-int/2addr v11, v12

    aput v11, v8, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const-string v8, "stars"

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v8

    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz v8, :cond_5

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos:[I

    aget v14, v13, v3

    iget-object v15, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos2:[I

    aget v16, v15, v3

    sub-int v14, v14, v16

    iget v7, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    add-int/2addr v14, v7

    iget v7, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v14, v7

    aget v7, v13, v10

    aget v13, v15, v10

    sub-int/2addr v7, v13

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    add-int/2addr v7, v2

    iget v2, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    add-int/2addr v7, v2

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    int-to-float v13, v14

    int-to-float v15, v7

    iget v6, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    add-int/2addr v14, v6

    int-to-float v6, v14

    iget v14, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    add-int/2addr v7, v14

    int-to-float v7, v7

    invoke-virtual {v2, v13, v15, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    iget v6, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v6, v6

    const v7, 0x3dcccccd    # 0.1f

    mul-float v6, v6, v7

    add-float/2addr v6, v13

    iget v14, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v14, v14

    div-float/2addr v14, v12

    add-float/2addr v14, v15

    invoke-static {v2, v4, v6, v14}, Lorg/telegram/messenger/AndroidUtilities;->scaleRect(Landroid/graphics/RectF;FFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->shadowPaint:Landroid/graphics/Paint;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v14, 0x40400000    # 3.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    iget v11, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focus:F

    const/high16 v5, 0x55000000

    invoke-static {v5, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v2, v6, v9, v14, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v12

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v12

    iget-object v11, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v2, v2

    mul-float v2, v2, v7

    add-float/2addr v13, v2

    iget v2, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    add-float/2addr v15, v2

    invoke-virtual {v1, v4, v4, v13, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos:[I

    aget v6, v5, v3

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos2:[I

    aget v11, v7, v3

    sub-int/2addr v6, v11

    int-to-float v6, v6

    aget v5, v5, v10

    aget v7, v7, v10

    sub-int/2addr v5, v7

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_6

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setScrimReaction(Ljava/lang/Integer;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v6, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawReactionsLayout(Landroid/graphics/Canvas;FLjava/lang/Integer;)V

    invoke-virtual {v5, v1, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawReactionsLayoutOverlay(Landroid/graphics/Canvas;F)V

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setScrimReaction(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    instance-of v7, v5, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v7, :cond_7

    check-cast v5, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/ChatActionCell;->setScrimReaction(Ljava/lang/Integer;)V

    invoke-virtual {v5, v1, v10, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->drawReactionsLayout(Landroid/graphics/Canvas;ZLjava/lang/Integer;)V

    invoke-virtual {v5, v1, v10}, Lorg/telegram/ui/Cells/ChatActionCell;->drawReactionsLayoutOverlay(Landroid/graphics/Canvas;Z)V

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setScrimReaction(Ljava/lang/Integer;)V

    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v8, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->clickBounds:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->clickBounds:Landroid/graphics/RectF;

    const/high16 v5, 0x42280000    # 42.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v6, v5}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/high16 v6, 0x437f0000    # 255.0f

    if-ge v3, v5, :cond_9

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effects:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v7

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v8

    if-lt v7, v8, :cond_8

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effects:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_8
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v4

    add-float/2addr v7, v11

    int-to-float v11, v2

    div-float/2addr v11, v12

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    sub-float/2addr v13, v11

    float-to-int v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v4

    add-float/2addr v14, v8

    add-float/2addr v14, v11

    float-to-int v8, v14

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    add-float/2addr v14, v11

    float-to-int v11, v14

    invoke-virtual {v5, v7, v13, v8, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v7, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focus:F

    mul-float v7, v7, v6

    float-to-int v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_4
    add-int/2addr v3, v10

    goto :goto_3

    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counterAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counterShown:Z

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v4

    iget-boolean v5, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counterShown:Z

    if-eqz v5, :cond_a

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_5
    sub-float v8, v7, v4

    mul-float v5, v5, v8

    goto :goto_6

    :cond_a
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    goto :goto_5

    :goto_6
    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v5, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counterShown:Z

    if-eqz v5, :cond_b

    const v5, 0x3fe66666    # 1.8f

    goto :goto_7

    :cond_b
    const v5, 0x3fa66666    # 1.3f

    :goto_7
    invoke-static {v5, v7, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float v6, v6, v4

    float-to-int v5, v6

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40600000    # 3.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, -0x56000000

    invoke-static {v7, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v3, v5, v9, v6, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setShadowLayer(FFFI)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->reactionBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    invoke-virtual {v3, v5, v6, v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counterShown:Z

    if-nez v1, :cond_d

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->checkBalance()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public focusTo(FLjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focusAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focus:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focusAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarReactionsOverlay;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focusAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stars/StarReactionsOverlay$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stars/StarReactionsOverlay$1;-><init>(Lorg/telegram/ui/Stars/StarReactionsOverlay;FLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focusAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focusAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getReactionsLayoutInBubble()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->hidden:Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->hideCounterRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counterShown:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    new-instance v0, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stars/StarReactionsOverlay;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focusTo(FLjava/lang/Runnable;)V

    return-void
.end method

.method public isShowing(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->messageId:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->hidden:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->getReactionsLayoutInBubble()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-string v3, "stars"

    const/4 v4, 0x1

    if-nez v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v4, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pressed:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_7

    :cond_4
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v2, p1, v4, v4}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->tap(FFZZ)V

    :cond_5
    if-eqz v0, :cond_6

    iget-object p1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pressed:Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pressed:Z

    return p1

    :cond_8
    :goto_1
    return v1
.end method

.method public playEffect()V
    .locals 7

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effectAssets:[I

    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-direct {v1, v0, v4, v6, v5}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMessageCell(Lorg/telegram/ui/Cells/BaseCell;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setScrimReaction(Ljava/lang/Integer;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidateListener(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setScrimReaction(Ljava/lang/Integer;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setInvalidateListener(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->messageId:I

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v0, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarReactionsOverlay;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidateListener(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    check-cast p1, Lorg/telegram/ui/Cells/ChatActionCell;

    new-instance v0, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarReactionsOverlay;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setInvalidateListener(Ljava/lang/Runnable;)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->hidden:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->focusTo(FLjava/lang/Runnable;)V

    return-void
.end method

.method public tap(FFZZ)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->cell:Lorg/telegram/ui/Cells/BaseCell;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->hidden:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->getReactionsLayoutInBubble()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    move-result-object v1

    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v9

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarReactionsOverlay;->playEffect()V

    const-string v2, "stars"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->startAnimation()V

    :cond_2
    const/4 v10, 0x1

    if-eqz p3, :cond_3

    const/4 p3, 0x3

    :try_start_0
    invoke-virtual {p0, p3, v10}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p3

    invoke-static {p3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Stars/StarsController;->sendPaidReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JZZLjava/lang/Long;)Lorg/telegram/ui/Stars/StarsController$PendingPaidReactions;

    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Stars/StarsController;->getPendingPaidReactions(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v10, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->counterShown:Z

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->hideCounterRunnable:Ljava/lang/Runnable;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->hideCounterRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5dc

    invoke-static {p3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    if-eqz p4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->lastRippleTime:J

    sub-long v0, p3, v0

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    iget p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->accumulatedRippleIntensity:F

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->accumulatedRippleIntensity:F

    goto :goto_1

    :cond_4
    iget v4, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->accumulatedRippleIntensity:F

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    mul-float v4, v4, v0

    iput v4, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->accumulatedRippleIntensity:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos2:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->pos2:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    aget p1, v0, v10

    int-to-float p1, p1

    add-float/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->accumulatedRippleIntensity:F

    const v0, 0x3f666666    # 0.9f

    const v3, 0x3e99999a    # 0.3f

    invoke-static {p2, v0, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p2

    invoke-static {v1, p1, p2}, Lorg/telegram/ui/LaunchActivity;->makeRipple(FFF)V

    iput v2, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->accumulatedRippleIntensity:F

    iput-wide p3, p0, Lorg/telegram/ui/Stars/StarReactionsOverlay;->lastRippleTime:J

    :cond_6
    :goto_1
    return-void
.end method

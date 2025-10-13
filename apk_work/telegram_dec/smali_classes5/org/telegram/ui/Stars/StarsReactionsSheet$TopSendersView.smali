.class public Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsReactionsSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopSendersView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;
    }
.end annotation


# instance fields
.field public final animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final backgroundPaint:Landroid/graphics/Paint;

.field private clickListener:Lorg/telegram/messenger/Utilities$Callback;

.field public count:F

.field public final oldSenders:Ljava/util/ArrayList;

.field private pressedSender:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

.field public final senders:Ljava/util/ArrayList;

.field public final starsBackgroundPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stars/StarsReactionsSheet;Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->oldSenders:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->starsBackgroundPaint:Landroid/graphics/Paint;

    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x140

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const p1, -0xf4cfe

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->count:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->oldSenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->oldSenders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    iget-object v1, v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    iget-object v1, v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->pressedSender:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->pressedSender:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    iget-object v1, v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->pressedSender:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->pressedSender:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->pressedSender:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    if-eqz v0, :cond_5

    iget-boolean v4, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymous:Z

    if-nez v4, :cond_5

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v4, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->clickListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->pressedSender:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    iget-wide v4, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->pressedSender:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_6
    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->pressedSender:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->pressedSender:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    if-eqz p1, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2
.end method

.method public setMyPrivacy(J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    iget-boolean v2, v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->my:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->setPrivacy(J)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnSenderClickListener(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->clickListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setSenders(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;

    iget-boolean v7, v6, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->my:Z

    if-eqz v7, :cond_0

    iget-boolean v8, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->my:Z

    if-nez v8, :cond_1

    :cond_0
    iget-boolean v8, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->my:Z

    if-nez v8, :cond_2

    if-nez v7, :cond_2

    iget-wide v6, v6, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->did:J

    iget-wide v8, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    iget-object v3, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    iput v3, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->index:I

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->oldSenders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/2addr v1, v4

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;

    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    iget-boolean v7, v6, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->my:Z

    if-eqz v7, :cond_6

    iget-boolean v8, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->my:Z

    if-nez v8, :cond_7

    :cond_6
    if-nez v7, :cond_8

    iget-boolean v7, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->my:Z

    if-nez v7, :cond_8

    iget-wide v6, v6, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    iget-wide v8, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->did:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_8

    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    move-object v5, v3

    :goto_5
    if-nez v5, :cond_e

    const/4 v6, 0x0

    :goto_6
    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->oldSenders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->oldSenders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    iget-boolean v8, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->my:Z

    if-eqz v8, :cond_a

    iget-boolean v9, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->my:Z

    if-nez v9, :cond_b

    :cond_a
    if-nez v8, :cond_c

    iget-boolean v8, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->my:Z

    if-nez v8, :cond_c

    iget-wide v7, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    iget-wide v9, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->did:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_c

    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->oldSenders:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    goto :goto_7

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    if-eqz v5, :cond_e

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->oldSenders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, v5, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-nez v5, :cond_f

    new-instance v5, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;

    iget-boolean v6, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->my:Z

    iget-wide v7, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->did:J

    invoke-direct {v5, p0, v6, v7, v8}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;ZJ)V

    iget-object v6, v5, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->animatedScale:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->animatedPosition:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    sub-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual {v6, v7, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_f
    iget-wide v6, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->stars:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->setStars(J)V

    iget-boolean v6, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->my:Z

    if-eqz v6, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    iget-wide v6, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet;->peer:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->setPrivacy(J)V

    goto :goto_8

    :cond_10
    iget-boolean v2, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$SenderData;->anonymous:Z

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->setAnonymous(Z)V

    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    iput v2, v5, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->index:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

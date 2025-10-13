.class Lorg/telegram/ui/Components/FragmentContextView$3;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final notifyButtonRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentContextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->notifyButtonRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1200(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$400(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$600(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->access$1300(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    new-instance v13, Landroid/graphics/LinearGradient;

    int-to-float v5, v0

    const v6, 0x3fd9999a    # 1.7f

    mul-float v8, v5, v6

    const v5, -0x9b730c

    const v6, -0x739631

    const v7, -0x2ba687

    filled-new-array {v5, v6, v7, v7}, [I

    move-result-object v10

    new-array v11, v1, [F

    fill-array-data v11, :array_0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v2, v13}, Lorg/telegram/ui/Components/FragmentContextView;->access$1402(Lorg/telegram/ui/Components/FragmentContextView;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$1500(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->access$1400(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/LinearGradient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1302(Lorg/telegram/ui/Components/FragmentContextView;I)I

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$300(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ChatActivityInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->access$100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    int-to-long v1, v1

    const-wide/16 v5, 0x3e8

    mul-long v1, v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v5}, Lorg/telegram/ui/Components/FragmentContextView;->access$100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-gez v7, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x1388

    cmp-long v7, v1, v5

    if-gez v7, :cond_2

    long-to-float v5, v1

    const v6, 0x459c4000    # 5000.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v5, 0x1770

    cmp-long v7, v1, v5

    if-gez v7, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView$3;->invalidate()V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$1600(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$1600(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->access$1300(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const v5, 0x3f333333    # 0.7f

    mul-float v2, v2, v5

    mul-float v2, v2, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$1400(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/LinearGradient;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->access$1600(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->notifyButtonRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    add-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v3, v5, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->notifyButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->notifyButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v0, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextView;->access$1500(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$600(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$600(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e96872b    # 0.294f
        0x3f16872b    # 0.588f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1200(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$400(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->notifyButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    if-nez v0, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->toggleScheduledNotify()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    return v2
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$1100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$600(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

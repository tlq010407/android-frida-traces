.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IZIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastSize:I

.field path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

.field final synthetic val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;Landroid/widget/ScrollView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$scrollView:Landroid/widget/ScrollView;

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v1

    add-int/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$800(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v1

    sub-int/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->dismiss()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$scrollView:Landroid/widget/ScrollView;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    add-int v0, p1, p2

    shl-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->lastSize:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$scrollView:Landroid/widget/ScrollView;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->checkTopOffset()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;F)V

    return-void
.end method

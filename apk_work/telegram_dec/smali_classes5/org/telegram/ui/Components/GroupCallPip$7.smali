.class Lorg/telegram/ui/Components/GroupCallPip$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/GroupCallPip;->showAlert(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/GroupCallPip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/GroupCallPip;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->alertContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCallPip;->alertContainer:Landroid/widget/FrameLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->location:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCallPip;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPip;->windowOffsetLeft:F

    add-float/2addr v1, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallPip;->access$600(Lorg/telegram/ui/Components/GroupCallPip;)Lorg/telegram/ui/Components/GroupCallPipButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallPip;->location:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallPip;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Components/GroupCallPip;->windowOffsetTop:F

    add-float/2addr v3, v5

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallPip;->access$600(Lorg/telegram/ui/Components/GroupCallPip;)Lorg/telegram/ui/Components/GroupCallPipButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->location:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    const/high16 v0, 0x42740000    # 61.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v6, v6, Lorg/telegram/ui/Components/GroupCallPip;->alertContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v7, v7, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v7, v7, Lorg/telegram/ui/Components/GroupCallPip;->alertContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x42200000    # 40.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    if-eqz v5, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v2, v2, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->alertContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v5, v5, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    sub-float/2addr v9, v2

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v2, v2, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    sub-float v0, v3, v5

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v0, v4, v1, v3}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->setPosition(IFF)V

    goto/16 :goto_2

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v7, v7, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v5, v5, Lorg/telegram/ui/Components/GroupCallPip;->alertContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v7, v7, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v9, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v6, v6, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v1, v0

    iget-object v7, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v7, v7, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v0, v7

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    sub-float v5, v3, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    :goto_1
    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->setPosition(IFF)V

    goto/16 :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v2, v2, Lorg/telegram/ui/Components/GroupCallPip;->alertContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3e99999a    # 0.3f

    mul-float v2, v2, v5

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v2, v2, Lorg/telegram/ui/Components/GroupCallPip;->alertContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v6, v6, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v9, v5

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v5, v5, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    sub-float v2, v1, v6

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v2, v2, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v5, v0

    float-to-int v0, v5

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v2, v2, Lorg/telegram/ui/Components/GroupCallPip;->alertContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v6, v6, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v9, v5

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v5, v5, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    sub-float v2, v1, v6

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v2, v2, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$7;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->pipAlertView:Lorg/telegram/ui/Components/GroupCallPipAlertView;

    const/4 v2, 0x2

    goto/16 :goto_1

    :goto_2
    return v4
.end method

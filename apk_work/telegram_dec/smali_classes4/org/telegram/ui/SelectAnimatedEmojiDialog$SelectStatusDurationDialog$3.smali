.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->animateMenuShow(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

.field final synthetic val$onDone:Ljava/lang/Runnable;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iput-boolean p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->val$show:Z

    iput-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->val$show:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$12202(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;F)F

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$12000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$12200(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$12000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$12200(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$12000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$12200(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v2

    int-to-float v3, v0

    int-to-float v4, p1

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$12000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v3

    sub-float v4, v1, v2

    const/high16 v5, -0x3ec00000    # -12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$12000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$12302(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$3;->val$onDone:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

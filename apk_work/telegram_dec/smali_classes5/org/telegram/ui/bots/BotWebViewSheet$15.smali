.class Lorg/telegram/ui/bots/BotWebViewSheet$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotWebViewSheet;->setFullscreen(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

.field final synthetic val$fromTranslationX:F

.field final synthetic val$fullscreen:Z

.field final synthetic val$topoffset:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;ZFF)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iput-boolean p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fullscreen:Z

    iput p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$topoffset:F

    iput p4, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fromTranslationX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$4002(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fullscreen:Z

    const/high16 v1, 0x41c00000    # 24.0f

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWindowFlags()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$topoffset:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setForceOffsetY(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$topoffset:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetY(F)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setForceOffsetY(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fullscreen:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3800(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3800(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    sub-float v1, v3, v1

    :goto_2
    invoke-static {p1, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$802(Lorg/telegram/ui/bots/BotWebViewSheet;F)F

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$800(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    sub-float/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$800(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v3

    mul-float v1, v1, v3

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$500(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/messenger/BotFullscreenButtons;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$800(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fullscreen:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->val$fromTranslationX:F

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3800(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v1

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$2800(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->setViewPortHeightOffset(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$15;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->access$3900(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    return-void
.end method

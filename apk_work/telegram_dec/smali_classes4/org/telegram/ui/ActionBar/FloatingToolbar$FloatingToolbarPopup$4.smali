.class Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;


# direct methods
.method public static synthetic $r8$lambda$cco5EnXFNcOVHG9m7zX5jqw3AJ8(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;->val$this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$1300(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->access$400(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

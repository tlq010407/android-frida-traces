.class Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;ZLorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field final synthetic val$getRootView:Z

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->this$0:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->val$getRootView:Z

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->val$getRootView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->this$0:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->access$002(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->val$rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->this$0:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->access$100(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->val$rootView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->this$0:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->access$200(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->val$rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->this$0:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->access$100(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->val$rootView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier$1;->this$0:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->access$200(Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.class Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->close(Lorg/telegram/ui/Components/Bulletin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$1;->this$0:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    iput-object p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$1;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$1;->this$0:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->access$000(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$1;->this$0:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->access$100(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)V

    const/4 v0, 0x1

    return v0
.end method

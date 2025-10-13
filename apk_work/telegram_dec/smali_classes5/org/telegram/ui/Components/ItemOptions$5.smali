.class Lorg/telegram/ui/Components/ItemOptions$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ItemOptions;

.field final synthetic val$container:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions$5;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions$5;->val$container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$5;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions$5;->val$container:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->access$500(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$5;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$600(Lorg/telegram/ui/Components/ItemOptions;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$5;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions;->access$600(Lorg/telegram/ui/Components/ItemOptions;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions$5;->this$0:Lorg/telegram/ui/Components/ItemOptions;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->access$602(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

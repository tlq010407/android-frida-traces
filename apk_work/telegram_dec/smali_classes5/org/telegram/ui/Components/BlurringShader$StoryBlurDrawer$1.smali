.class Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field final synthetic val$manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$1;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iput-object p2, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$1;->val$manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$1;->val$manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$1;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->attach(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$1;->val$manager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$1;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->detach(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer$1;->this$0:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-static {p1}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->access$400(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;)V

    return-void
.end method

.class Lorg/telegram/ui/Cells/AboutLinkCell$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/AboutLinkCell;->updateCollapse(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/AboutLinkCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/AboutLinkCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$4;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$4;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->didResizeEnd()V

    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$4;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$900(Lorg/telegram/ui/Cells/AboutLinkCell;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$4;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$900(Lorg/telegram/ui/Cells/AboutLinkCell;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$4;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$1000(Lorg/telegram/ui/Cells/AboutLinkCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$4;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->access$1102(Lorg/telegram/ui/Cells/AboutLinkCell;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$4;->this$0:Lorg/telegram/ui/Cells/AboutLinkCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->didResizeStart()V

    return-void
.end method

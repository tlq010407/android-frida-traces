.class Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->dismiss(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$10;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$10;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$10;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$10;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

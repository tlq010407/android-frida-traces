.class Lorg/telegram/ui/Components/InstantCameraView$2;
.super Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRotationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$2;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.class Lorg/telegram/ui/ContentPreviewViewer$4;
.super Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContentPreviewViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContentPreviewViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$4;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/ContentPreviewViewer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$4;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$4;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$4;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$4;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

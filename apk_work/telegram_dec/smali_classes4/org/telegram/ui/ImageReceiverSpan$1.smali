.class Lorg/telegram/ui/ImageReceiverSpan$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ImageReceiverSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ImageReceiverSpan;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ImageReceiverSpan;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ImageReceiverSpan$1;->this$0:Lorg/telegram/ui/ImageReceiverSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/ImageReceiverSpan$1;->this$0:Lorg/telegram/ui/ImageReceiverSpan;

    iget-object p1, p1, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/ImageReceiverSpan$1;->this$0:Lorg/telegram/ui/ImageReceiverSpan;

    iget-object p1, p1, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

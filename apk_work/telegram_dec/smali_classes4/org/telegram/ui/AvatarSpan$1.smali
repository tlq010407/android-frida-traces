.class Lorg/telegram/ui/AvatarSpan$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/AvatarSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AvatarSpan;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AvatarSpan;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AvatarSpan$1;->this$0:Lorg/telegram/ui/AvatarSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/AvatarSpan$1;->this$0:Lorg/telegram/ui/AvatarSpan;

    invoke-static {p1}, Lorg/telegram/ui/AvatarSpan;->access$000(Lorg/telegram/ui/AvatarSpan;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/AvatarSpan$1;->this$0:Lorg/telegram/ui/AvatarSpan;

    invoke-static {p1}, Lorg/telegram/ui/AvatarSpan;->access$000(Lorg/telegram/ui/AvatarSpan;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

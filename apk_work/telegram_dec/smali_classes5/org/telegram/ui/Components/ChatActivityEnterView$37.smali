.class Lorg/telegram/ui/Components/ChatActivityEnterView$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->onSendLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$37;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDate(ZI)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$37;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessageInternal(ZIJZ)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$37;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/MessageSendPreview;->dismiss(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$37;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageSendPreview:Lorg/telegram/ui/MessageSendPreview;

    :cond_0
    return-void
.end method

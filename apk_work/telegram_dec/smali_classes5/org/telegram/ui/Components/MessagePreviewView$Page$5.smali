.class Lorg/telegram/ui/Components/MessagePreviewView$Page$5;
.super Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->isForegroundOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground(Z)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v1, v0

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    if-le v1, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$600(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    return-void

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-nez v2, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v2, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v0, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {p1, v2, v0}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menuBack:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_4
    :goto_1
    return-void
.end method

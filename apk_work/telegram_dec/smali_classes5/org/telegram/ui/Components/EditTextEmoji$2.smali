.class Lorg/telegram/ui/Components/EditTextEmoji$2;
.super Lorg/telegram/ui/Components/EditTextCaption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextEmoji;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    iput p4, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->val$style:I

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->lastIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected emojiCacheType()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->emojiCacheType()I

    move-result v0

    return v0
.end method

.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->allowEntities()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->access$600(Lorg/telegram/ui/Components/EditTextEmoji;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lorg/telegram/ui/ChatActivity;->fillActionModeMenu(Landroid/view/Menu;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    :goto_1
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    return-void
.end method

.method protected getActionModeStyle()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->val$style:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getActionModeStyle()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onLineCountChanged(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->onLineCountChanged(II)V

    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->onSelectionChanged(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->access$700(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->allowEntities()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    const/4 v0, 0x1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->access$800(Lorg/telegram/ui/Components/EditTextEmoji;)Z

    move-result p1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->access$802(Lorg/telegram/ui/Components/EditTextEmoji;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->access$700(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->lastIcon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->access$700(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->lastIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->lastIcon:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWaitingForKeyboard()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->access$500(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->access$500(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    iput-boolean v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardInternal()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_4
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1
.end method

.method public scrollTo(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$2;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->onScrollYChange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->scrollTo(II)V

    :cond_0
    return-void
.end method

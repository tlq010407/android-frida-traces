.class Lorg/telegram/ui/ChatActivity$147;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;ZZFFZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$finalReactionsLayout1:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/view/View;IILorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$147;->val$finalReactionsLayout1:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messageSeenPrivacyBulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity;->messageSeenPrivacyBulletin:Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$102(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$13002(Lorg/telegram/ui/ChatActivity;[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12600(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->dimBehindView(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$13102(Lorg/telegram/ui/ChatActivity;Z)Z

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    :cond_3
    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$147;->val$finalReactionsLayout1:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->dismissParent(Z)V

    :cond_0
    return-void
.end method

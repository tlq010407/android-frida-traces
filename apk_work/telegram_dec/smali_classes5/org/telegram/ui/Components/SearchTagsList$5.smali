.class Lorg/telegram/ui/Components/SearchTagsList$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchTagsList;->openRenameTagAlert(Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentAccount:I

.field final synthetic val$currentFocus:Landroid/view/View;

.field final synthetic val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field final synthetic val$reaction:Lorg/telegram/tgnet/TLRPC$Reaction;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextBoldCursor;ILorg/telegram/tgnet/TLRPC$Reaction;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput p2, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$currentAccount:I

    iput-object p3, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iput-object p4, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p5, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$currentFocus:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-le p2, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return v1

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MessagesController;->renameSavedReactionTag(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object p1, p1, p3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object p1, p1, p3

    invoke-static {}, Lorg/telegram/ui/Components/SearchTagsList;->access$200()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchTagsList;->access$202(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$5;->val$currentFocus:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    return v1

    :cond_4
    return p3
.end method

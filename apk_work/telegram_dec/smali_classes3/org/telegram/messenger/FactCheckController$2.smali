.class Lorg/telegram/messenger/FactCheckController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FactCheckController;->openFactCheckEditor(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessageObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FactCheckController;

.field final synthetic val$MAX_LENGTH:I

.field final synthetic val$creating:Z

.field final synthetic val$currentFocus:Landroid/view/View;

.field final synthetic val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$editText:Lorg/telegram/ui/Components/EditTextCaption;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FactCheckController;Lorg/telegram/ui/Components/EditTextCaption;ILorg/telegram/messenger/MessageObject;Z[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/FactCheckController$2;->this$0:Lorg/telegram/messenger/FactCheckController;

    iput-object p2, p0, Lorg/telegram/messenger/FactCheckController$2;->val$editText:Lorg/telegram/ui/Components/EditTextCaption;

    iput p3, p0, Lorg/telegram/messenger/FactCheckController$2;->val$MAX_LENGTH:I

    iput-object p4, p0, Lorg/telegram/messenger/FactCheckController$2;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iput-boolean p5, p0, Lorg/telegram/messenger/FactCheckController$2;->val$creating:Z

    iput-object p6, p0, Lorg/telegram/messenger/FactCheckController$2;->val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p7, p0, Lorg/telegram/messenger/FactCheckController$2;->val$currentFocus:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p1, 0x1

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-ne p2, p3, :cond_5

    iget-object p2, p0, Lorg/telegram/messenger/FactCheckController$2;->val$editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget p3, p0, Lorg/telegram/messenger/FactCheckController$2;->val$MAX_LENGTH:I

    if-le p2, p3, :cond_0

    iget-object p2, p0, Lorg/telegram/messenger/FactCheckController$2;->val$editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return p1

    :cond_0
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iget-object p3, p0, Lorg/telegram/messenger/FactCheckController$2;->val$editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    new-array v1, p1, [Ljava/lang/CharSequence;

    aput-object p3, v1, v0

    iget-object p3, p0, Lorg/telegram/messenger/FactCheckController$2;->this$0:Lorg/telegram/messenger/FactCheckController;

    iget p3, p3, Lorg/telegram/messenger/FactCheckController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    invoke-virtual {p3, v1, p1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    aget-object p3, v1, v0

    if-nez p3, :cond_1

    const-string p3, ""

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iget-object p3, p0, Lorg/telegram/messenger/FactCheckController$2;->this$0:Lorg/telegram/messenger/FactCheckController;

    iget-object v1, p0, Lorg/telegram/messenger/FactCheckController$2;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v2, p0, Lorg/telegram/messenger/FactCheckController$2;->val$creating:Z

    invoke-virtual {p3, v1, p2, v2}, Lorg/telegram/messenger/FactCheckController;->applyFactCheck(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Z)V

    iget-object p2, p0, Lorg/telegram/messenger/FactCheckController$2;->val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object p2, p2, v0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/FactCheckController$2;->val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object p2, p2, v0

    invoke-static {}, Lorg/telegram/messenger/FactCheckController;->access$000()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p3

    if-ne p2, p3, :cond_3

    const/4 p2, 0x0

    invoke-static {p2}, Lorg/telegram/messenger/FactCheckController;->access$002(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/FactCheckController$2;->val$currentFocus:Landroid/view/View;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_4
    return p1

    :cond_5
    return v0
.end method

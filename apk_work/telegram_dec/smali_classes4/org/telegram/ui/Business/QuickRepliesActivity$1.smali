.class Lorg/telegram/ui/Business/QuickRepliesActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Business/QuickRepliesActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;


# direct methods
.method public static synthetic $r8$lambda$ThS6Ap9puawPzRQdMw83QR0E82I(Lorg/telegram/ui/Business/QuickRepliesActivity$1;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->lambda$onItemClick$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n3S-ewBrXU1N7eqWWi1x8Sl-u0U(Lorg/telegram/ui/Business/QuickRepliesActivity$1;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->lambda$onItemClick$0(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Business/QuickRepliesActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesActivity;->access$000(Lorg/telegram/ui/Business/QuickRepliesActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesActivity;->access$500(Lorg/telegram/ui/Business/QuickRepliesActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->renameReply(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-static {p1}, Lorg/telegram/ui/Business/QuickRepliesActivity;->access$400(Lorg/telegram/ui/Business/QuickRepliesActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/Business/QuickRepliesController;->getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    iget-object p2, p2, Lorg/telegram/ui/Business/QuickRepliesActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteReplies(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-static {p1}, Lorg/telegram/ui/Business/QuickRepliesActivity;->access$000(Lorg/telegram/ui/Business/QuickRepliesActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    iget-object p1, p1, Lorg/telegram/ui/Business/QuickRepliesActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-static {p1}, Lorg/telegram/ui/Business/QuickRepliesActivity;->access$000(Lorg/telegram/ui/Business/QuickRepliesActivity;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    iget-object p1, p1, Lorg/telegram/ui/Business/QuickRepliesActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    iget-object p1, p1, Lorg/telegram/ui/Business/QuickRepliesActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesActivity;->access$100(Lorg/telegram/ui/Business/QuickRepliesActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesActivity;->access$200(Lorg/telegram/ui/Business/QuickRepliesActivity;)I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesActivity;->access$300(Lorg/telegram/ui/Business/QuickRepliesActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    new-instance v9, Lorg/telegram/ui/Business/QuickRepliesActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesActivity$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/QuickRepliesActivity$1;I)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Business/QuickRepliesActivity;->openRenameReplyAlert(Landroid/content/Context;ILjava/lang/String;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    iget-object v2, v2, Lorg/telegram/ui/Business/QuickRepliesActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "BusinessRepliesDeleteTitle"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$1;->this$0:Lorg/telegram/ui/Business/QuickRepliesActivity;

    iget-object v2, v2, Lorg/telegram/ui/Business/QuickRepliesActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "BusinessRepliesDeleteMessage"

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Remove:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/QuickRepliesActivity$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/QuickRepliesActivity$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_5
    :goto_0
    return-void
.end method

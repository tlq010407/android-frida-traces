.class Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;


# direct methods
.method public static synthetic $r8$lambda$tsiaTV81Ru23o9R9AwvA07hbbPQ(Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;->lambda$onLinkPress$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;->this$1:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLinkPress$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;->this$1:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    iget-object p2, p2, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {p2, p1}, Lorg/telegram/ui/FilteredSearchView;->access$1500(Lorg/telegram/ui/FilteredSearchView;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_3

    const-string p2, "mailto:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x7

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p2, "tel:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;->this$1:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0}, Lorg/telegram/ui/FilteredSearchView;->access$500(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$UiCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public needOpenWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;->this$1:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/FilteredSearchView;->access$1400(Lorg/telegram/ui/FilteredSearchView;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public onLinkPress(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p2, :cond_0

    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;->this$1:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->parentActivity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-instance v0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;Ljava/lang/String;)V

    invoke-virtual {p2, v2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;->this$1:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    iget-object p1, p1, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object p1, p1, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;->this$1:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    iget-object p2, p2, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {p2, p1}, Lorg/telegram/ui/FilteredSearchView;->access$1500(Lorg/telegram/ui/FilteredSearchView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

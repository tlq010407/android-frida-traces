.class Lorg/telegram/ui/PhotoPickerActivity$4;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;

.field updateSearch:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$1GcPhNINPI86tuTInu8VZAdEPMo(Lorg/telegram/ui/PhotoPickerActivity$4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity$4;->lambda$$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    new-instance p1, Lorg/telegram/ui/PhotoPickerActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PhotoPickerActivity$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoPickerActivity$4;)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->updateSearch:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$2500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2400(Lorg/telegram/ui/PhotoPickerActivity;Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public canCollapseSearch()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    const/4 v0, 0x0

    return v0
.end method

.method public onSearchExpand()V
    .locals 0

    return-void
.end method

.method public onSearchPressed(Landroid/widget/EditText;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2400(Lorg/telegram/ui/PhotoPickerActivity;Landroid/widget/EditText;)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$300(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1600(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1702(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1802(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1902(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2000(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2100(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$2000(Lorg/telegram/ui/PhotoPickerActivity;)I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2002(Lorg/telegram/ui/PhotoPickerActivity;I)I

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoRecentSearches:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/PhotoPickerActivity;->access$2300(Lorg/telegram/ui/PhotoPickerActivity;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->updateSearch:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->updateSearch:Ljava/lang/Runnable;

    const-wide/16 v0, 0x4b0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

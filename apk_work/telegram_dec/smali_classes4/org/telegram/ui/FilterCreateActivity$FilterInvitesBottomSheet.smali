.class public Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilterCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterInvitesBottomSheet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$HeaderView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field private button:Landroid/widget/TextView;

.field private filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field private invites:Ljava/util/ArrayList;

.field private final items:Ljava/util/ArrayList;

.field private final oldItems:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$JFfdGijJqddktJIr7cn30PC0FJo(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->lambda$createLink$3(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PtxB57vVtG7SpSeyo74XZjhcgzQ(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->lambda$show$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$qibdMyixSzPXKQpttOGr0vIyAn0(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->lambda$onViewCreated$5(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rLHgTCGBiPalglNCGvgDUqZ7yH8(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wEeoSNIv-KUkuBK4nOPhPGICbJE(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->lambda$createLink$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xTpNyZuWJQLrAhKG15CixJcejUg(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/lang/Runnable;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->lambda$show$1(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/lang/Runnable;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->invites:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->oldItems:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->invites:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->updateRows(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->button:Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->button:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->button:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->button:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array p3, v0, [F

    const/high16 v0, 0x41000000    # 8.0f

    aput v0, p3, v1

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->button:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->FolderLinkShareButton:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->button:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->button:Landroid/widget/TextView;

    new-instance p2, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v0, -0x1

    const/high16 v1, 0x42400000    # 48.0f

    const/16 v2, 0x57

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object p3, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->button:Landroid/widget/TextView;

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v6, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    const/16 v2, 0x50

    const/high16 v3, 0x40c00000    # 6.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->updateCreateInviteButton()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)Lorg/telegram/messenger/MessagesController$DialogFilter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->invites:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->updateCreateInviteButton()V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method private createLink()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/FilterCreateActivity;->canAddToFolder(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/FilterChatlistActivity;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/FilterChatlistActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportChatlistInvite;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportChatlistInvite;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportChatlistInvite;->chatlist:Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    iget-object v3, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput v3, v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;->filter_id:I

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportChatlistInvite;->peers:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportChatlistInvite;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_1
    return-void
.end method

.method private synthetic lambda$createLink$3(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/FilterCreateActivity;->processErrors(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/BulletinFactory;)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportedChatlistInvite;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->hideNew(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->loadRemoteFilters(Z)V

    check-cast p2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportedChatlistInvite;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/FilterChatlistActivity;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportedChatlistInvite;->invite:Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/FilterChatlistActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$createLink$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->createLink()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/view/View;I)V
    .locals 2

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    iget p2, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/FilterChatlistActivity;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->access$3000(Lorg/telegram/ui/FilterCreateActivity$ItemInner;)Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/FilterChatlistActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    if-ne p2, p1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->createLink()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$show$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;J)V
    .locals 2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportedInvites;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportedInvites;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportedInvites;->chats:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportedInvites;->users:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    new-instance p3, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_exportedInvites;->invites:Ljava/util/ArrayList;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FILTER_ID_INVALID"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    if-eqz p4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, p5

    const-wide/16 p2, 0xc8

    sub-long/2addr p2, p0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p4, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$show$1(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/lang/Runnable;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p6

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;J)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/lang/Runnable;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_getExportedInvites;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_getExportedInvites;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_getExportedInvites;->chatlist:Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    iget v1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;->filter_id:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/lang/Runnable;J)V

    invoke-virtual {v7, v6, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private updateCreateInviteButton()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->button:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->invites:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, 0x42880000    # 68.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->invites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asCreateLink()Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;

    invoke-static {v2}, Lorg/telegram/ui/FilterCreateActivity$ItemInner;->asLink(Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;)Lorg/telegram/ui/FilterCreateActivity$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 0

    new-instance p1, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$1;-><init>(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)V

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->adapter:Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;

    return-object p1
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->getTitle(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 3

    .line 0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    sget v1, Lorg/telegram/messenger/R$string;->FolderLinkShareTitle2:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

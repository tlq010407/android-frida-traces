.class public Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TopCell;,
        Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final hasFewPeers:Z

.field private final joinCallDelegate:Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;

.field private rtmpKey:Ljava/lang/String;

.field private rtmpUrl:Ljava/lang/String;

.field private selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public static synthetic $r8$lambda$RozSDslEnwehIe1uHAB3CLdcALU(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->lambda$new$1(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XOF_gPCleXFYb92OF3UAApQKSy0(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ahrpdnzjq-SamvWbU4ZN-6B_y_g(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Lorg/telegram/tgnet/TLRPC$Peer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$Peer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z9QTEPV2GDDEH4slacR1bsUdM0c(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->lambda$new$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Peer;JZLorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    const p1, 0x3e851eb8    # 0.26f

    iput p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    iput-object p6, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->joinCallDelegate:Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;

    iput-boolean p5, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->hasFewPeers:Z

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p5, Landroid/widget/TextView;

    invoke-direct {p5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setGravity(I)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 p6, 0x41600000    # 14.0f

    invoke-virtual {p5, p1, p6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p1, Lorg/telegram/messenger/R$string;->VoipChannelStartStreaming:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget p6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {p6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p6

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-static {p1, p6, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v1, -0x1

    const/high16 v2, 0x42400000    # 48.0f

    const/16 v3, 0x50

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p6

    invoke-virtual {p1, p5, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Lorg/telegram/tgnet/TLRPC$Peer;)V

    invoke-virtual {p5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 p5, 0x42900000    # 72.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-virtual {p1, p2, v0, p2, p5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;-><init>()V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamRtmpUrl;->revoke:Z

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 2

    new-instance p2, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TopCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TopCell;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->VoipChatStreamSettings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->rtmpUrl:Ljava/lang/String;

    sget v0, Lorg/telegram/messenger/R$string;->VoipChatStreamServerUrl:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;->of(Ljava/lang/String;Ljava/lang/String;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->rtmpKey:Ljava/lang/String;

    sget v0, Lorg/telegram/messenger/R$string;->VoipChatStreamKey:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$TextDetailCellFactory;->of(Ljava/lang/String;Ljava/lang/String;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->VoipChatStreamWithAnotherAppDescription:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$Peer;Landroid/view/View;)V
    .locals 2

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamRtmpUrl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamRtmpUrl;

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamRtmpUrl;->url:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->rtmpUrl:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamRtmpUrl;->key:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->rtmpKey:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static show(Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/ui/ActionBar/BaseFragment;JZLorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Peer;JZLorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 9

    new-instance v8, Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v8
.end method

.method public dismissInternal()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->selectAfterDismiss:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->joinCallDelegate:Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/CreateRtmpStreamBottomSheet;->hasFewPeers:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;->didSelectChat(Lorg/telegram/tgnet/TLRPC$InputPeer;ZZZ)V

    :cond_0
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->Streaming:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

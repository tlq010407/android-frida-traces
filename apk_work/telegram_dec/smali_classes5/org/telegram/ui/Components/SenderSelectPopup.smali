.class public abstract Lorg/telegram/ui/Components/SenderSelectPopup;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SenderSelectPopup$BackButtonFrameLayout;,
        Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;,
        Lorg/telegram/ui/Components/SenderSelectPopup$SenderView;
    }
.end annotation


# instance fields
.field private bulletinContainer:Landroid/widget/FrameLayout;

.field private bulletinHideCallback:Ljava/lang/Runnable;

.field private bulletins:Ljava/util/List;

.field private chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private clicked:Z

.field private final currentAccount:I

.field public dimView:Landroid/view/View;

.field private dismissed:Z

.field private headerShadow:Landroid/view/View;

.field public headerText:Landroid/widget/TextView;

.field private isDismissingByBulletin:Z

.field private isHeaderShadowVisible:Ljava/lang/Boolean;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private popupX:I

.field private popupY:I

.field public recyclerContainer:Landroid/widget/LinearLayout;

.field private recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field protected runningCustomSprings:Z

.field private scrimPopupContainerLayout:Landroid/widget/FrameLayout;

.field private sendAsPeers:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

.field protected springAnimations:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$0CMYRGJDKKJJNmXV0oDI7fwmakE(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$startDismissAnimation$10(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$12RuR0S_t3Co-CN6YxVemq3d26U(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$startDismissAnimation$7(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$CE6xd8QnVEBztJRLVUEDJoSyH9k(Lorg/telegram/ui/Components/SenderSelectPopup;Landroid/view/WindowManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$new$1(Landroid/view/WindowManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F4BKsXzr1arFcpQgJdCH56w-4PA(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$startDismissAnimation$9(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hy_9yuFLkedhOAg3fzRx-1qZ54M(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$startShowAnimation$4(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vz4cyKAjVY8pEOm3wZ17XdpvzJY(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$startShowAnimation$3(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$_6-W3DMOCSH53PGUEyiY3VBiV4A(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$startShowAnimation$5(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$cUC7Ctfggusas-tdaceE74OOxYM(Lorg/telegram/ui/Components/SenderSelectPopup;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$new$0(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fId-2WKbEvPvtzW4JjUCiAj3-8k(Lorg/telegram/ui/Components/SenderSelectPopup;Ljava/util/List;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$new$2(Ljava/util/List;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gdKHUM-FEkH1Jar1Sp5ix4t0F9E(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$startDismissAnimation$8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$iI39PfwTKCEspDN-qB9xkWty7HE(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SenderSelectPopup;->lambda$startDismissAnimation$6(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v6, p2

    move-object/from16 v0, p5

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletins:Ljava/util/List;

    move-object/from16 v9, p4

    iput-object v9, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->sendAsPeers:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    if-nez v6, :cond_0

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    :goto_0
    iput v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->currentAccount:I

    new-instance v1, Lorg/telegram/ui/Components/SenderSelectPopup$BackButtonFrameLayout;

    invoke-direct {v1, p0, v8}, Lorg/telegram/ui/Components/SenderSelectPopup$BackButtonFrameLayout;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    const/high16 v10, -0x40000000    # -2.0f

    invoke-static {v2, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-static {v8, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->dimView:Landroid/view/View;

    const/high16 v2, 0x33000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v1, 0x43e10000    # 450.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v6, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    float-to-int v4, v2

    new-instance v2, Lorg/telegram/ui/Components/SenderSelectPopup$1;

    invoke-direct {v2, p0, v8, v4, v1}, Lorg/telegram/ui/Components/SenderSelectPopup$1;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Landroid/content/Context;II)V

    iput-object v2, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->headerText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->headerText:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->headerText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->SendMessageAsTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->headerText:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->headerText:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v1, v5, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->headerText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;->peers:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v13, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/SenderSelectPopup$2;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SenderSelectPopup$2;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Ljava/util/List;Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SenderSelectPopup$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SenderSelectPopup$3;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v13, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Ljava/util/List;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->headerShadow:Landroid/view/View;

    sget v0, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {v8, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->headerShadow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->headerShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->headerShadow:Landroid/view/View;

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    invoke-static {v2, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SenderSelectPopup;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SenderSelectPopup;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->isHeaderShadowVisible:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/SenderSelectPopup;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->isHeaderShadowVisible:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SenderSelectPopup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->headerShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SenderSelectPopup;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SenderSelectPopup;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinHideCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/SenderSelectPopup;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->popupX:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/SenderSelectPopup;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->popupY:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/SenderSelectPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->dismissed:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/SenderSelectPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->isDismissingByBulletin:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/SenderSelectPopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->isDismissingByBulletin:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/SenderSelectPopup;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletins:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/ChatActivity;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "select_sender"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SenderSelectPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/WindowManager;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/util/List;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;Landroid/view/View;I)V
    .locals 2

    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_sendAsPeer;

    iget-boolean p7, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->clicked:Z

    if-eqz p7, :cond_0

    return-void

    :cond_0
    iget-boolean p7, p1, Lorg/telegram/tgnet/TLRPC$TL_sendAsPeer;->premium_required:Z

    const/4 v0, 0x1

    if-eqz p7, :cond_7

    sget p7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p7

    invoke-virtual {p7}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p7

    if-nez p7, :cond_7

    const/4 p1, 0x3

    const/4 p5, 0x2

    :try_start_0
    invoke-virtual {p6, p1, p5}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p5, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    if-nez p5, :cond_1

    new-instance p5, Lorg/telegram/ui/Components/SenderSelectPopup$4;

    invoke-direct {p5, p0, p2}, Lorg/telegram/ui/Components/SenderSelectPopup$4;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinHideCallback:Ljava/lang/Runnable;

    if-eqz p5, :cond_2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p5, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p5

    if-nez p5, :cond_5

    new-instance p5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 p6, -0x1

    iput p6, p5, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p6, p5, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p6, -0x3

    iput p6, p5, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p6, 0x63

    iput p6, p5, Landroid/view/WindowManager$LayoutParams;->type:I

    sget p6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p7, 0x15

    if-lt p6, p7, :cond_3

    iget p7, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    or-int/2addr p7, v1

    iput p7, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_3
    const/16 p7, 0x1c

    if-lt p6, p7, :cond_4

    invoke-static {p5, v0}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_4
    iget-object p6, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p6, p5}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object p6, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    invoke-interface {p1, p6, p5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    if-nez p3, :cond_6

    const/4 p3, 0x0

    goto :goto_1

    :cond_6
    iget p5, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget-wide p6, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p3

    iget-object p5, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    new-instance p6, Lorg/telegram/ui/Components/SelectSendAsPremiumHintBulletinLayout;

    iget-object p7, p4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    new-instance v0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p4}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Lorg/telegram/ui/ChatActivity;)V

    invoke-direct {p6, p2, p7, p3, v0}, Lorg/telegram/ui/Components/SelectSendAsPremiumHintBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/Runnable;)V

    const/16 p2, 0x5dc

    invoke-static {p5, p6, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/Components/SenderSelectPopup$5;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/Components/SenderSelectPopup$5;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Lorg/telegram/ui/Components/Bulletin;)V

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/Bulletin$Layout;->addCallback(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    new-instance p2, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Landroid/view/WindowManager;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinHideCallback:Ljava/lang/Runnable;

    const-wide/16 p3, 0x9c4

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_7
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->clicked:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    check-cast p6, Lorg/telegram/ui/Components/SenderSelectPopup$SenderView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_sendAsPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-interface {p5, p2, p6, p1}, Lorg/telegram/ui/Components/SenderSelectPopup$OnSelectCallback;->onPeerSelected(Landroidx/recyclerview/widget/RecyclerView;Lorg/telegram/ui/Components/SenderSelectPopup$SenderView;Lorg/telegram/tgnet/TLRPC$Peer;)V

    return-void
.end method

.method private synthetic lambda$startDismissAnimation$10(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startDismissAnimation$6(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    const/high16 p3, 0x3f800000    # 1.0f

    div-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method private synthetic lambda$startDismissAnimation$7(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    const/high16 p3, 0x3f800000    # 1.0f

    div-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startDismissAnimation$8(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->dimView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->dimView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->dimView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SenderSelectPopup;->dismiss()V

    return-void
.end method

.method private synthetic lambda$startDismissAnimation$9(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->runningCustomSprings:Z

    return-void
.end method

.method private synthetic lambda$startShowAnimation$3(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    const/high16 p3, 0x3f800000    # 1.0f

    div-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method private synthetic lambda$startShowAnimation$4(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    const/high16 p3, 0x3f800000    # 1.0f

    div-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startShowAnimation$5(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->bulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SenderSelectPopup$6;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/SenderSelectPopup$6;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Landroid/view/WindowManager;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->dismissed:Z

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    iput p3, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->popupX:I

    iput p4, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->popupY:I

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public varargs startDismissAnimation([Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->dimView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v6, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v5, v6, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v6, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-direct {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v8, 0x443b8000    # 750.0f

    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;)V

    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v5

    check-cast v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v9, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v6, v9, v10}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v9, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v9, v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v9, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    new-instance v9, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;)V

    invoke-virtual {v6, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v6

    check-cast v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v9, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v10, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    sget-object v11, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v9, v10, v11}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v10, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v10, v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v10, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v9

    new-instance v10, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v12, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    invoke-direct {v10, v12, v11}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v12, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v12, v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v12, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v7

    new-instance v10, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v12, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->dimView:Landroid/view/View;

    invoke-direct {v10, v12, v11}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v11, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v11, v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v11, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;)V

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v4, 0x5

    new-array v4, v4, [Landroidx/dynamicanimation/animation/SpringAnimation;

    aput-object v5, v4, v1

    aput-object v6, v4, v0

    const/4 v5, 0x2

    aput-object v9, v4, v5

    const/4 v5, 0x3

    aput-object v7, v4, v5

    const/4 v5, 0x4

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    array-length p1, p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->runningCustomSprings:Z

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public startShowAnimation()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v3, 0x1

    iget-object v4, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setPivotX(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->sendAsPeers:Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;->peers:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_7

    const/high16 v8, 0x42580000    # 54.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    mul-int v9, v9, v8

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_7

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_sendAsPeer;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_sendAsPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_2

    iget-wide v1, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v17, v12, v1

    if-eqz v17, :cond_4

    :cond_2
    iget-wide v1, v11, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v12, v1, v14

    if-eqz v12, :cond_3

    iget-wide v12, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v17, v1, v12

    if-eqz v17, :cond_4

    :cond_3
    iget-wide v1, v11, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v11, v1, v14

    if-eqz v11, :cond_6

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v13, v1, v11

    if-nez v13, :cond_6

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-eq v10, v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v1, v9, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    rem-int/2addr v1, v8

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v1, v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    sub-int/2addr v4, v6

    mul-int v4, v4, v8

    sub-int/2addr v9, v4

    add-int/2addr v1, v9

    invoke-virtual {v2, v10, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->headerShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->headerShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v8, 0x96

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_6
    add-int/2addr v10, v3

    goto/16 :goto_2

    :cond_7
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->dimView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v1, v2, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v4, 0x443b8000    # 750.0f

    invoke-virtual {v2, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, v5, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v5, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v5, v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v5, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;)V

    invoke-virtual {v2, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v6, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->scrimPopupContainerLayout:Landroid/widget/FrameLayout;

    sget-object v8, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v5, v6, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v6, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v9, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->recyclerContainer:Landroid/widget/LinearLayout;

    invoke-direct {v6, v9, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v9, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v9, v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v9, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v6

    new-instance v9, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v10, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->dimView:Landroid/view/View;

    invoke-direct {v9, v10, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v8, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v8, v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {v8, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    const/4 v7, 0x5

    new-array v7, v7, [Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    aput-object v2, v7, v3

    const/4 v1, 0x2

    aput-object v5, v7, v1

    const/4 v1, 0x3

    aput-object v6, v7, v1

    const/4 v1, 0x4

    aput-object v4, v7, v1

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, v0, Lorg/telegram/ui/Components/SenderSelectPopup;->springAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/Components/SenderSelectPopup$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/SenderSelectPopup;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_5

    :cond_8
    return-void
.end method

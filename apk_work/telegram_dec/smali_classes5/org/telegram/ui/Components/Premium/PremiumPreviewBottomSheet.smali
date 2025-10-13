.class public Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;
    }
.end annotation


# instance fields
.field public accentColor:Ljava/lang/Integer;

.field protected additionEndRow:I

.field protected additionStartRow:I

.field animateConfetti:Z

.field animateConfettiWithStars:Z

.field bulletinContainer:Landroid/widget/FrameLayout;

.field buttonContainer:Landroid/widget/FrameLayout;

.field protected buttonRow:I

.field coords:[I

.field currentAccount:I

.field dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

.field public emojiStatusCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

.field enterAnimator:Landroid/animation/ValueAnimator;

.field enterTransitionInProgress:Z

.field enterTransitionProgress:F

.field protected featuresEndRow:I

.field protected featuresStartRow:I

.field fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field protected giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

.field gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field protected helpUsRow:I

.field iconContainer:Landroid/view/ViewGroup;

.field iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

.field public isEmojiStatus:Z

.field isOutboundGift:Z

.field public overrideTitleIcon:Landroid/view/View;

.field protected paddingRow:I

.field protected premiumFeatures:Ljava/util/ArrayList;

.field protected rowCount:I

.field protected sectionRow:I

.field starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

.field public startEnterFromScale:F

.field public startEnterFromView:Landroid/view/View;

.field public startEnterFromX:F

.field public startEnterFromX1:F

.field public startEnterFromY:F

.field public startEnterFromY1:F

.field public statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field protected subtitleView:Landroid/widget/TextView;

.field protected termsRow:I

.field protected titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private titleViewContainer:Landroid/widget/FrameLayout;

.field totalGradientHeight:I

.field protected user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public static synthetic $r8$lambda$0DE3yEARM_1zImm3IFUBKQDolzs(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2hyFlf_SbdGeOGC6pY1a--VlXWY(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$new$0(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GJc30UTgCS8etWJVm4HJZdwfiIc(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$show$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$PD15-vNY1KZBy-XZP_9WAnFb4UE(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$setTitle$6(Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W83aggFVntPS675Gedw-laG86vo(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$setTitle$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$cSxiTvev87yAauUlFOXw_u4a674(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$showDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$efeINknD9atXZhoV1b0mcFcZenQ(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$titleLoaded$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$mWstZlK-46PmiR1u7bv64EK1kVQ(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$titleLoaded$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yR7iNcJz-5laaLLhRw2mPiKsxu8(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$onCustomOpenAnimation$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    const/4 p5, 0x2

    new-array p5, p5, [I

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->coords:[I

    const/4 p5, 0x0

    iput p5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const v0, 0x3e851eb8    # 0.26f

    iput v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iput p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    new-instance p3, Lorg/telegram/ui/PremiumFeatureCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/telegram/ui/PremiumFeatureCell;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    const/4 p4, 0x0

    invoke-static {p3, p2, p4}, Lorg/telegram/ui/PremiumPreviewFragment;->fillPremiumFeaturesList(Ljava/util/ArrayList;IZ)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-nez p3, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient3:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient4:I

    invoke-direct {p3, v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIII)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/4 v0, 0x1

    iput-boolean v0, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->exactly:Z

    iput p5, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    iput p5, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    iput p5, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    iput p5, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cx:F

    iput p5, p3, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cy:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->updateRows()V

    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 p5, 0x40c00000    # 6.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-virtual {p3, v0, p4, p5, p4}, Landroid/view/View;->setPadding(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p2, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;ILorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->preloadPremiumPreviewStickers()V

    const-string p1, "profile"

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->sentShowScreenStat(Ljava/lang/String;)V

    new-instance p1, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/high16 p3, -0x40800000    # -1.0f

    const/4 p4, -0x1

    invoke-static {p4, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 p3, 0x8c

    const/16 p5, 0x57

    invoke-static {p4, p3, p5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleViewContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;I)V
    .locals 1

    instance-of p4, p3, Lorg/telegram/ui/PremiumFeatureCell;

    if-eqz p4, :cond_0

    move-object p4, p3

    check-cast p4, Lorg/telegram/ui/PremiumFeatureCell;

    iget-object v0, p4, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v0, v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {p1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->sentShowFeaturePreview(II)V

    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p4, p4, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p4, p4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/4 v0, 0x0

    invoke-direct {p1, p2, p4, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->showDialog(Landroid/app/Dialog;)Z

    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->onAdditionItemClicked(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCustomOpenAnimation$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/PremiumPreviewFragment;->sentPremiumButtonClick()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const-string v0, "profile"

    invoke-static {p1, v0}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setTitle$5()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/nft/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->emojiStatusCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->slug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setTitle$6(Landroid/text/style/ClickableSpan;)V
    .locals 6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$3;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->show()V

    return-void
.end method

.method private synthetic lambda$show$7()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->animateConfettiWithStars:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    return-void
.end method

.method private synthetic lambda$titleLoaded$3()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$titleLoaded$4(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private measureGradient(II)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/PremiumFeatureCell;->setData(Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iput v2, v3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->yOffset:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dummyCell:Lorg/telegram/ui/PremiumFeatureCell;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->totalGradientHeight:I

    return-void
.end method

.method private titleLoaded(Ljava/lang/CharSequence;Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected afterCellCreated(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected attachIconContainer(Landroid/widget/LinearLayout;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    const/16 v7, 0xa

    const/16 v8, 0xa

    const/16 v1, 0x8c

    const/16 v2, 0x8c

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x11

    const/16 v5, 0xa

    const/16 v6, 0xa

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 1

    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$1;)V

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p1, :cond_0

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    const/4 v0, 0x0

    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setTitle(Z)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FireworksOverlay;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected getAdditionItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isAdditionViewClickable(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected mainContainerDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-boolean v6, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionInProgress:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->mainContainerDispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Landroid/view/View;

    if-eqz v4, :cond_a

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionInProgress:Z

    if-eqz v4, :cond_a

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    if-nez v4, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    goto :goto_1

    :cond_2
    move-object v6, v4

    :goto_1
    if-ne v6, v4, :cond_3

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromX:F

    iget v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromY:F

    new-array v8, v3, [F

    aput v4, v8, v5

    aput v7, v8, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Landroid/view/View;

    instance-of v7, v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v7, :cond_4

    check-cast v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_4
    instance-of v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_5

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->currentNameStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->coords:[I

    aget v9, v7, v5

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromX1:F

    add-float/2addr v9, v10

    aget v10, v8, v5

    add-float/2addr v9, v10

    aget v7, v7, v2

    neg-int v7, v7

    int-to-float v7, v7

    iget v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromY1:F

    add-float/2addr v7, v10

    aget v2, v8, v2

    add-float/2addr v7, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    add-float/2addr v9, v8

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    add-float/2addr v7, v8

    :cond_7
    iget v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromScale:F

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v2, v2, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const v10, 0x3f4ccccd    # 0.8f

    mul-float v8, v8, v10

    div-float v10, v8, v2

    div-float/2addr v2, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    move-object v12, v6

    :goto_3
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eq v12, v13, :cond_9

    if-nez v12, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v13

    add-float/2addr v8, v13

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    goto :goto_3

    :cond_9
    :goto_4
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v12

    const/4 v13, 0x0

    add-float/2addr v12, v13

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v14

    add-float/2addr v12, v14

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v14

    add-float/2addr v12, v14

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v11

    add-float/2addr v12, v14

    sget-object v14, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v15, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v14

    invoke-static {v9, v8, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    invoke-static {v7, v12, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    iget v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromScale:F

    iget v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v12

    mul-float v9, v9, v15

    mul-float v10, v10, v12

    add-float/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v9, v9, v8, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    float-to-int v9, v8

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/2addr v10, v3

    sub-int v10, v9, v10

    float-to-int v12, v7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    div-int/2addr v15, v3

    sub-int v15, v12, v15

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v9, v9, v16

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v12, v12, v16

    invoke-virtual {v4, v10, v15, v9, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    invoke-static {v3, v14, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    sub-float v3, v14, v3

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v3, v3, v9

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    invoke-static {v2, v14, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2, v2, v8, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float/2addr v8, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float/2addr v7, v2

    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return-void
.end method

.method protected needDefaultPremiumBtn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAdditionItemClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onBindAdditionCell(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onCreateAdditionCell(ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCustomOpenAnimation()Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionProgress:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterTransitionInProgress:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Landroid/view/View;

    instance-of v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->currentNameStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidateOutbounds()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v1, :cond_5

    const/16 v2, -0x168

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startEnterAnimation(IJ)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$4;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->enterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomOpenAnimation()Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onPreMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onPreMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->measureGradient(II)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->coords:[I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    return-void
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 12

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;->getPremiumButtonText(ILorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v6, 0x1

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v6, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->needDefaultPremiumBtn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x42400000    # 48.0f

    const/16 v7, 0x10

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x44

    const/16 v2, 0x50

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setAnimateConfetti(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->animateConfetti:Z

    return-object p0
.end method

.method public setAnimateConfettiWithStars(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->animateConfettiWithStars:Z

    return-object p0
.end method

.method public setOutboundGift(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->isOutboundGift:Z

    return-object p0
.end method

.method public setTitle(Z)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v3, :cond_1a

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    goto/16 :goto_13

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->emojiStatusCollectible:Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v4, :cond_3

    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->title:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v3, v3, v1

    sget v4, Lorg/telegram/messenger/R$string;->TelegramPremiumUserStatusCollectibleDialogTitle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getShortName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserStatusDialogSubtitle:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v4, :cond_c

    sget v3, Lorg/telegram/messenger/R$string;->TelegramPremiumUserStatusDialogTitle:I

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<STICKERSET>"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    aput-object v5, v0, v2

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->accentColor:Ljava/lang/Integer;

    if-nez v3, :cond_4

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_4
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    :goto_5
    instance-of v3, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Landroid/text/SpannableStringBuilder;

    goto :goto_6

    :cond_5
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-virtual {v4, v5, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    :goto_7
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v12, v8, v10

    if-nez v12, :cond_6

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_8

    :cond_6
    add-int/2addr v7, v2

    goto :goto_7

    :cond_7
    move-object v6, v5

    :cond_8
    :goto_8
    const/16 v7, 0x21

    new-instance v8, Landroid/text/SpannableStringBuilder;

    if-eqz v6, :cond_9

    const-string v9, "x"

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v10, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-direct {v9, v6, v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v8, v9, v1, v10, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz v4, :cond_a

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v9, :cond_a

    const-string v9, "\u00a0"

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v9, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_9
    const-string v4, "xxxxxx"

    invoke-direct {v8, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v9, v9, v1

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-direct {v4, v9, v10}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v4, v1, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    :goto_9
    add-int/lit8 v4, v0, 0xc

    invoke-virtual {v3, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v3, v4, v0, v8, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v0, v0, v2

    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setOnLinkPressListener(Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;)V

    if-eqz v6, :cond_b

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleLoaded(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v3, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    :cond_c
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->isEmojiStatus:Z

    if-eqz p1, :cond_d

    aget-object p1, v3, v1

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserStatusDefaultDialogTitle:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserStatusDialogSubtitle:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz p1, :cond_17

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->isOutboundGift:Z

    const-string v5, "GiftMonths"

    if-eqz v4, :cond_12

    aget-object v3, v3, v1

    sget v4, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumOutboundDialogTitleWithPlural:I

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    const-string v7, ""

    if-eqz v6, :cond_e

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    goto :goto_a

    :cond_e
    move-object v6, v7

    :goto_a
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getMonths()I

    move-result p1

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v5, p1, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v1

    aput-object p1, v0, v2

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->accentColor:Ljava/lang/Integer;

    if-nez v0, :cond_f

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    goto :goto_b

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_b
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumOutboundDialogSubtitle:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_10

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :cond_10
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v1

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->accentColor:Ljava/lang/Integer;

    if-nez v2, :cond_11

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_c

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_c
    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto/16 :goto_3

    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v6, 0xbdb28

    cmp-long v8, v3, v6

    if-nez v8, :cond_13

    goto :goto_f

    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v3, v3, v1

    sget v4, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumDialogTitleWithPlural:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getMonths()I

    move-result v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object v5, v0, v2

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->accentColor:Ljava/lang/Integer;

    if-nez v0, :cond_14

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    goto :goto_d

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_d
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumDialogSubtitle:I

    goto/16 :goto_1

    :cond_15
    :goto_f
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v1

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserGiftedPremiumDialogTitleWithPluralSomeone:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getMonths()I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->accentColor:Ljava/lang/Integer;

    if-nez v2, :cond_16

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_10

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_10
    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_18

    aget-object p1, v3, v1

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumSubscribedSubtitle:I

    goto/16 :goto_1

    :cond_18
    aget-object v0, v3, v1

    sget v3, Lorg/telegram/messenger/R$string;->TelegramPremiumUserDialogTitle:I

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->accentColor:Ljava/lang/Integer;

    if-nez v2, :cond_19

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_11

    :cond_19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_11
    invoke-static {p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramPremiumUserDialogSubtitle:I

    goto/16 :goto_1

    :goto_12
    :try_start_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1a
    :goto_13
    return-void
.end method

.method public show()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->animateConfetti:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setDialogVisible(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method protected updateRows()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->paddingRow:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresStartRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresEndRow:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->sectionRow:I

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->giftTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonRow:I

    :cond_0
    return-void
.end method

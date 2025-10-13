.class public Lorg/telegram/ui/Stars/StarGiftSheet$TopView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;
    }
.end annotation


# instance fields
.field private attached:Z

.field private avatarView:Lorg/telegram/ui/Components/BackupImageView;

.field private final backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

.field private backdrops:Lorg/telegram/ui/Stars/BagRandomizer;

.field private final backgroundGradient:[Landroid/graphics/RadialGradient;

.field private final backgroundMatrix:[Landroid/graphics/Matrix;

.field private final backgroundPaint:[Landroid/graphics/Paint;

.field public final buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

.field private buttonsBackgroundColor:I

.field private final buttonsLayout:Landroid/widget/LinearLayout;

.field private final checkToRotateRunnable:Ljava/lang/Runnable;

.field private final closeView:Landroid/widget/ImageView;

.field private final collectionReleasedView:Landroid/widget/TextView;

.field private currentImageIndex:I

.field private currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

.field private hasLink:Z

.field private hasResellPrice:Z

.field private final imageLayout:Landroid/widget/FrameLayout;

.field private final imageView:[Lorg/telegram/ui/Components/BackupImageView;

.field private final layout:[Landroid/widget/LinearLayout;

.field private final layoutLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

.field private models:Lorg/telegram/ui/Stars/BagRandomizer;

.field private onResellClick:Landroid/view/View$OnClickListener;

.field private onShareClick:Landroid/view/View$OnClickListener;

.field private onUpdatePriceClick:Landroid/view/View$OnClickListener;

.field private final optionsView:Landroid/widget/ImageView;

.field private particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field private final particlesBounds:Landroid/graphics/RectF;

.field private final pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private patterns:Lorg/telegram/ui/Stars/BagRandomizer;

.field private profileBackgroundGradient:Landroid/graphics/LinearGradient;

.field private final profileBackgroundMatrix:Landroid/graphics/Matrix;

.field private profileBackgroundPaint:Landroid/graphics/Paint;

.field private final releasedView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final resellPriceView:Landroid/widget/TextView;

.field private resellPriceViewInProgress:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rotationAnimator:Landroid/animation/ValueAnimator;

.field private sampleAttributes:Ljava/util/ArrayList;

.field private final subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private final subtitleViewLayoutParams:[Landroid/widget/LinearLayout$LayoutParams;

.field private switchAnimator:Landroid/animation/ValueAnimator;

.field private switchScale:F

.field private final titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private toggleBackdrop:F

.field private toggled:I

.field private userLayout:Landroid/widget/FrameLayout;

.field private wearImageScale:F

.field private wearImageTx:F

.field private wearImageTy:F

.field private wearPreviewObject:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public static synthetic $r8$lambda$4A5_wh4zjIKBKMw38E-HZTvdtCE(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bcrkdie-p5lvbgTmRPotrGpMnB4(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IalkOoY7ugPywuIqxFWO58ky6cM(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->lambda$rotateAttributes$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cTrNfSv2Wv0CxR3BJ5d76X_dpq8(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->lambda$new$1(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tTzJHRrLwPctSQrjUTaCvw86rYM(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->lambda$animateSwitch$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x3

    new-array v5, v4, [Lorg/telegram/ui/Components/BackupImageView;

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    const/4 v5, 0x0

    iput v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentImageIndex:I

    new-array v6, v4, [Landroid/widget/LinearLayout;

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    new-array v6, v4, [Landroid/widget/FrameLayout$LayoutParams;

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layoutLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    new-array v6, v4, [Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-array v6, v4, [Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-array v6, v4, [Landroid/widget/LinearLayout$LayoutParams;

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleViewLayoutParams:[Landroid/widget/LinearLayout$LayoutParams;

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v5, v5, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;-><init>(IIF)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    new-array v6, v4, [Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->checkToRotateRunnable:Ljava/lang/Runnable;

    new-array v6, v4, [Landroid/graphics/Paint;

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    new-array v6, v4, [Landroid/graphics/RadialGradient;

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundGradient:[Landroid/graphics/RadialGradient;

    new-array v6, v4, [Landroid/graphics/Matrix;

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundMatrix:Landroid/graphics/Matrix;

    new-instance v6, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundPaint:Landroid/graphics/Paint;

    const/4 v6, 0x2

    new-array v9, v6, [Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    array-length v11, v10

    if-ge v9, v11, :cond_0

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v8}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_1
    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    array-length v11, v10

    const/high16 v12, 0x41e00000    # 28.0f

    if-ge v9, v11, :cond_1

    new-instance v11, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-direct {v11, v0, v12}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    aput-object v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iput v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchScale:F

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->particlesBounds:Landroid/graphics/RectF;

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onShareClick:Landroid/view/View$OnClickListener;

    move-object/from16 v9, p8

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onResellClick:Landroid/view/View$OnClickListener;

    move-object/from16 v9, p9

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onUpdatePriceClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    :goto_2
    const/16 v11, 0x77

    const/4 v13, -0x1

    if-ge v9, v4, :cond_4

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    new-instance v15, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v15, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    aput-object v15, v14, v9

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v14, v14, v9

    const/16 v15, 0x1a04

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    if-lez v9, :cond_2

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v14, v14, v9

    invoke-virtual {v14}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v14

    invoke-virtual {v14, v8}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    :cond_2
    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    iget-object v15, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v15, v15, v9

    invoke-static {v13, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v14, v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v11, v11, v9

    iget v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentImageIndex:I

    if-ne v9, v13, :cond_3

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    new-instance v9, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->releasedView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v9, v8, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v14, 0x11

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextColor(I)V

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v15, 0x40800000    # 4.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v9, v10, v5, v15, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->collectionReleasedView:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x3d4ccccd    # 0.05f

    const/high16 v15, 0x3fa00000    # 1.25f

    invoke-static {v9, v10, v15}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v9, v8, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v9, v15, v5, v10, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-array v9, v4, [Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    const/4 v9, 0x0

    :goto_4
    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    array-length v15, v10

    if-ge v9, v15, :cond_9

    new-instance v15, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    invoke-direct {v15, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;-><init>(Landroid/content/Context;)V

    aput-object v15, v10, v9

    if-eqz v9, :cond_7

    if-eq v9, v8, :cond_6

    if-eq v9, v6, :cond_5

    :goto_5
    move-object/from16 v14, p5

    move-object/from16 v12, p6

    goto :goto_6

    :cond_5
    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object v10, v10, v9

    sget v15, Lorg/telegram/messenger/R$drawable;->filled_share:I

    sget v16, Lorg/telegram/messenger/R$string;->Gift2ActionShare:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v15, v12, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;->set(ILjava/lang/CharSequence;Z)V

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object v10, v10, v9

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_6
    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object v10, v10, v9

    sget v12, Lorg/telegram/messenger/R$drawable;->filled_crown_on:I

    sget v15, Lorg/telegram/messenger/R$string;->Gift2ActionWear:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v12, v15, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;->set(ILjava/lang/CharSequence;Z)V

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object v10, v10, v9

    move-object/from16 v12, p6

    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v14, p5

    goto :goto_6

    :cond_7
    move-object/from16 v12, p6

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object v10, v10, v9

    sget v15, Lorg/telegram/messenger/R$drawable;->filled_gift_transfer:I

    sget v16, Lorg/telegram/messenger/R$string;->Gift2ActionTransfer:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v15, v14, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;->set(ILjava/lang/CharSequence;Z)V

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object v10, v10, v9

    move-object/from16 v14, p5

    invoke-virtual {v10, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object v10, v10, v9

    const v15, 0x3d99999a    # 0.075f

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v10, v15, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttonsLayout:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object v15, v10, v9

    array-length v10, v10

    sub-int/2addr v10, v8

    if-eq v9, v10, :cond_8

    const/16 v10, 0xb

    const/16 v24, 0xb

    goto :goto_7

    :cond_8
    const/16 v24, 0x0

    :goto_7
    const/16 v25, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x38

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x77

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/high16 v12, 0x41e00000    # 28.0f

    const/16 v14, 0x11

    goto/16 :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_8
    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v9, 0x41600000    # 14.0f

    if-ge v3, v4, :cond_10

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v12, v10, v3

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v10, v10, v3

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v10, v10, v3

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layoutLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    if-ne v3, v6, :cond_a

    const/high16 v14, 0x42800000    # 64.0f

    const/high16 v22, 0x42800000    # 64.0f

    goto :goto_9

    :cond_a
    const/high16 v14, 0x432a0000    # 170.0f

    const/high16 v22, 0x432a0000    # 170.0f

    :goto_9
    const/high16 v23, 0x41800000    # 16.0f

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x77

    const/high16 v21, 0x41800000    # 16.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    aput-object v14, v12, v3

    invoke-virtual {v0, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v12, 0x41a00000    # 20.0f

    if-ne v3, v6, :cond_b

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->userLayout:Landroid/widget/FrameLayout;

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v14, v14, v3

    const/16 v15, 0x68

    invoke-static {v13, v15, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v14, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v14, 0x41f00000    # 30.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->userLayout:Landroid/widget/FrameLayout;

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x3c

    const/high16 v19, 0x42700000    # 60.0f

    const/16 v20, 0x13

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v14, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v14, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    aput-object v14, v5, v3

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->userLayout:Landroid/widget/FrameLayout;

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v14, v14, v3

    const/high16 v23, 0x42200000    # 40.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x37

    const/high16 v21, 0x42a20000    # 81.0f

    const v22, 0x41f2a3d7    # 30.33f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v14, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v14, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    aput-object v14, v5, v3

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v14, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v9, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->userLayout:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v9, v9, v3

    const/high16 v23, 0x40800000    # 4.0f

    const/high16 v22, 0x42640000    # 57.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    :cond_b
    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v15, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v15, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    aput-object v15, v14, v3

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v14, v14, v3

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v4, v4, v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v4, v4, v3

    const/16 v12, 0x11

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v12, v12, v3

    const/16 v24, 0x18

    const/16 v25, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x11

    const/16 v22, 0x18

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v3, :cond_c

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->releasedView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/16 v23, 0x4

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->collectionReleasedView:Landroid/widget/TextView;

    const/16 v25, 0x2

    const v20, 0x419aa3d7    # 19.33f

    const/16 v23, 0x6

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v12, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v12, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    aput-object v12, v4, v3

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v4, v4, v3

    invoke-static {v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v4, v4, v3

    const/16 v9, 0x11

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v4, v4, v3

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v4, v4, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v9, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v9, v9, v3

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleViewLayoutParams:[Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, 0x18

    const/16 v25, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x11

    const/16 v22, 0x18

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    aput-object v12, v10, v3

    invoke-virtual {v4, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleViewLayoutParams:[Landroid/widget/LinearLayout$LayoutParams;

    aget-object v4, v4, v3

    if-ne v3, v8, :cond_d

    const v5, 0x40ea8f5c    # 7.33f

    goto :goto_a

    :cond_d
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-nez v9, :cond_e

    goto :goto_a

    :cond_e
    const v5, 0x40b51eb8    # 5.66f

    :goto_a
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_b
    if-nez v3, :cond_f

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x7

    const/16 v22, 0x0

    const/16 v23, 0xf

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    goto/16 :goto_8

    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0xa0

    const/high16 v19, 0x43200000    # 160.0f

    const/16 v20, 0x31

    const/16 v21, 0x0

    const/high16 v22, 0x41000000    # 8.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->closeView:Landroid/widget/ImageView;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const v4, 0x24ffffff

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    const/high16 v22, 0x41400000    # 12.0f

    const/16 v17, 0x1c

    const/high16 v18, 0x41e00000    # 28.0f

    const/16 v19, 0x35

    const/16 v20, 0x0

    const/high16 v21, 0x41400000    # 12.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$$ExternalSyntheticLambda2;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x41c00000    # 24.0f

    const/16 v11, 0x33

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->optionsView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->media_more:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x20ffffff

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v10, 0x0

    const/16 v4, 0x2a

    const/high16 v5, 0x42280000    # 42.0f

    const/16 v6, 0x35

    const/4 v7, 0x0

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v1, p4

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceViewInProgress:Z

    return p1
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggled:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)[Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/BagRandomizer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->models:Lorg/telegram/ui/Stars/BagRandomizer;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/BagRandomizer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->patterns:Lorg/telegram/ui/Stars/BagRandomizer;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->preloadPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->checkToRotateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchScale:F

    return p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchScale:F

    return p1
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private animateSwitch()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$5;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$animateSwitch$4(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p1, v0

    sub-float/2addr v1, v0

    float-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3d99999a    # 0.075f

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchScale:F

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->collectionReleasedView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spanned;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    array-length v1, v0

    if-lez v1, :cond_1

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$new$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggled:I

    rsub-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->rotateAttributes()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->checkToRotateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->checkToRotateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$rotateAttributes$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V

    return-void
.end method

.method private preloadPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preload()V

    return-void
.end method

.method private rotateAttributes()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    if-eqz v3, :cond_3

    iget v3, v3, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    if-ne v3, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->checkToRotateRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->rotationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->rotationAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggled:I

    rsub-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggled:I

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    rsub-int/lit8 v3, v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    iget v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggled:I

    add-int/2addr v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getProgress()F

    move-result v3

    invoke-virtual {v4, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->models:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggled:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrops:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {v5}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aput-object v5, v4, v3

    invoke-direct {p0, v3, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setBackdropPaint(ILorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->patterns:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-direct {p0, v2, v3, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPattern(ILorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->animateSwitch()V

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggled:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    new-array v1, v1, [F

    aput v4, v1, v0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->rotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->rotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$4;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->rotationAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->rotationAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->rotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setBackdropPaint(ILorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundGradient:[Landroid/graphics/RadialGradient;

    new-instance v11, Landroid/graphics/RadialGradient;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v7, v4

    iget v4, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    const/high16 v12, -0x1000000

    or-int/2addr v4, v12

    iget v5, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int/2addr v5, v12

    filled-new-array {v4, v5}, [I

    move-result-object v8

    new-array v9, v2, [F

    fill-array-data v9, :array_0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v11

    move-object/from16 v10, v20

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    aput-object v11, v3, p1

    if-nez p1, :cond_1

    new-instance v3, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x43280000    # 168.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v5, v12

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int/2addr v1, v12

    filled-new-array {v5, v1}, [I

    move-result-object v18

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object v13, v3

    move/from16 v17, v4

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundGradient:Landroid/graphics/LinearGradient;

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v2, v1, p1

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundGradient:[Landroid/graphics/RadialGradient;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setPattern(ILorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Z)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    aget-object p1, v0, p1

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method private updateWearImageTranslation()V
    .locals 4

    const v0, 0x420551ec    # 33.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->wearImageScale:F

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    const/high16 v1, 0x42c20000    # 97.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v0, v1

    const v1, 0x42fd570a    # 126.67f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->wearImageTx:F

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    const v2, 0x42b151ec    # 88.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->wearImageTy:F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getRealHeight()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v9, v1, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v1, v10

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v13, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v1, v14, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(II)F

    move-result v1

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, -0x1000000

    const/high16 v18, 0x437f0000    # 255.0f

    cmpl-float v2, v1, v9

    if-lez v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v2, v2, v14

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundGradient:Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v2, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v2

    cmpg-float v2, v2, v16

    if-gez v2, :cond_1

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v2, v2, v14

    mul-float v1, v1, v18

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v14

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v14

    invoke-virtual {v1, v11, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundGradient:[Landroid/graphics/RadialGradient;

    aget-object v1, v1, v14

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v2, v2, v14

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v6, v1, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundGradient:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v2, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v2

    mul-float v2, v2, v18

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v9, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->profileBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v1, v1, v14

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int v6, v1, v17

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v11, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    aget-object v1, v1, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    aget-object v2, v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v5

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v4, v8

    move/from16 v20, v6

    move/from16 v6, v19

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPattern(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    move/from16 v20, v6

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    aget-object v1, v1, v14

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    aget-object v2, v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v4, v8

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawProfilePattern(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttonsBackgroundColor:I

    move/from16 v2, v20

    if-eq v2, v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v1, v1, v14

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int v1, v1, v17

    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttonsBackgroundColor:I

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    const v5, 0x10ffffff

    const/16 v6, 0xa

    if-ge v4, v3, :cond_5

    aget-object v10, v2, v4

    invoke-static {v1, v5, v6, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v4, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->collectionReleasedView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v3, v3, v14

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    or-int v3, v3, v17

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->collectionReleasedView:Landroid/widget/TextView;

    invoke-static {v1, v5, v6, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-nez v1, :cond_7

    new-instance v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/16 v2, 0xc

    invoke-direct {v1, v12, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float v2, v2, v4

    div-float/2addr v2, v3

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->particlesBounds:Landroid/graphics/RectF;

    sub-float v6, v1, v2

    sub-float v10, v4, v5

    add-float/2addr v1, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v6, v10, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->particlesBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v2, v15}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_f

    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggled:I

    if-nez v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v1, v1, v15

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v15

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v2

    mul-float v2, v2, v18

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v15

    invoke-virtual {v1, v11, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundGradient:[Landroid/graphics/RadialGradient;

    aget-object v1, v1, v15

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v2, v2, v15

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v6, v1, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    cmpg-float v1, v1, v16

    if-gez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v1, v1, v12

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v12

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v2

    mul-float v2, v2, v18

    iget v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    sub-float v16, v16, v3

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v12

    invoke-virtual {v1, v11, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundGradient:[Landroid/graphics/RadialGradient;

    aget-object v1, v1, v12

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v2, v2, v12

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v6, v1, v12

    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_a
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    cmpg-float v1, v1, v16

    if-gez v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v1, v1, v12

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v12

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v2

    mul-float v2, v2, v18

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v12

    invoke-virtual {v1, v11, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundGradient:[Landroid/graphics/RadialGradient;

    aget-object v1, v1, v12

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v2, v2, v12

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v6, v1, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_b
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v1, v1, v15

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v15

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v2

    mul-float v2, v2, v18

    iget v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v15

    invoke-virtual {v1, v11, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundGradient:[Landroid/graphics/RadialGradient;

    aget-object v1, v1, v15

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundMatrix:[Landroid/graphics/Matrix;

    aget-object v2, v2, v15

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v6, v1, v15

    goto/16 :goto_2

    :cond_c
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v11, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v2, v1, v12

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto :goto_4

    :cond_d
    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int v2, v2, v17

    :goto_4
    aget-object v1, v1, v15

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int v14, v1, v17

    :goto_5
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    invoke-static {v2, v14, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    aget-object v2, v2, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    aget-object v2, v1, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getRealHeight()F

    move-result v4

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->switchScale:F

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPattern(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getFinalHeight()I
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to(I)Z

    move-result v0

    const/high16 v2, 0x43200000    # 160.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41c00000    # 24.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/high16 v3, 0x41c00000    # 24.0f

    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v1, v2, v1

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v0, v0, v5

    if-eqz v0, :cond_2

    const/high16 v3, 0x41c00000    # 24.0f

    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v5

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v2

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getRealHeight()F
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x41c00000    # 24.0f

    if-eqz v0, :cond_0

    const/high16 v0, 0x41c00000    # 24.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v4, 0x43200000    # 160.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    mul-float v0, v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v5, 0x1

    aget-object v1, v1, v5

    if-eqz v1, :cond_1

    const/high16 v2, 0x41c00000    # 24.0f

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->attached:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->attached:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->pattern:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->checkToRotateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->updateWearImageTranslation()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V

    :cond_0
    return-void
.end method

.method public onSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V
    .locals 11

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->closeView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->closeView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v5, v2, v0

    const/16 v7, 0x8

    if-eqz v5, :cond_3

    iget v5, p1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    if-eq v5, v4, :cond_4

    :cond_3
    aget-object v2, v2, v6

    if-eqz v2, :cond_5

    iget v2, p1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    if-ne v2, v6, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->optionsView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v5

    invoke-static {v0, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(ZZF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->optionsView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    iget v2, p1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceViewInProgress:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    iget-boolean v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->hasResellPrice:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v8

    invoke-static {v0, v5, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(ZZF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    iget-boolean v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->hasResellPrice:Z

    const v8, 0x3ecccccd    # 0.4f

    if-eqz v5, :cond_8

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_8
    const v5, 0x3ecccccd    # 0.4f

    :goto_6
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v9

    invoke-static {v8, v5, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    iget-boolean v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->hasResellPrice:Z

    if-eqz v5, :cond_9

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_9
    const v5, 0x3ecccccd    # 0.4f

    :goto_7
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v9

    invoke-static {v8, v5, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    iget-boolean v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->hasResellPrice:Z

    if-eqz v5, :cond_a

    iget v5, p1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    if-nez v5, :cond_a

    const/4 v7, 0x0

    :cond_a
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/4 v5, 0x0

    :goto_8
    const/high16 v7, -0x1000000

    if-ge v5, v4, :cond_1b

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v8, v8, v5

    iget-object v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget-object v9, v9, v10

    if-nez v9, :cond_c

    move v9, v1

    goto :goto_9

    :cond_c
    const/4 v9, -0x1

    :goto_9
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v8, v8, v5

    if-eqz v5, :cond_10

    if-ne v5, v4, :cond_d

    goto :goto_c

    :cond_d
    iget-object v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v10, v9, v6

    if-nez v10, :cond_e

    move v10, v1

    goto :goto_a

    :cond_e
    iget v10, v10, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    or-int/2addr v10, v7

    :goto_a
    aget-object v9, v9, v4

    if-nez v9, :cond_f

    move v7, v1

    goto :goto_b

    :cond_f
    iget v9, v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    or-int/2addr v7, v9

    :goto_b
    iget v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    invoke-static {v10, v7, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    goto :goto_d

    :cond_10
    :goto_c
    iget-object v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v9, v9, v5

    if-nez v9, :cond_11

    move v7, v1

    goto :goto_d

    :cond_11
    iget v9, v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    or-int/2addr v7, v9

    :goto_d
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v7, v7, v5

    if-eqz v7, :cond_14

    const/high16 v7, 0x43380000    # 184.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layoutLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    aget-object v9, v9, v5

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v10, 0x41900000    # 18.0f

    if-ne v8, v9, :cond_13

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-eq v8, v9, :cond_12

    goto :goto_e

    :cond_12
    const/4 v8, 0x0

    goto :goto_f

    :cond_13
    :goto_e
    const/4 v8, 0x1

    :goto_f
    if-eqz v8, :cond_17

    iget-object v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v9, v9, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v9, v0, v0, v0, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layoutLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    aget-object v9, v9, v5

    :goto_10
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_13

    :cond_14
    const/high16 v7, 0x432a0000    # 170.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layoutLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    aget-object v9, v9, v5

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v10, 0x40400000    # 3.0f

    if-ne v8, v9, :cond_16

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-eq v8, v9, :cond_15

    goto :goto_11

    :cond_15
    const/4 v8, 0x0

    goto :goto_12

    :cond_16
    :goto_11
    const/4 v8, 0x1

    :goto_12
    if-eqz v8, :cond_17

    iget-object v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v9, v9, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v9, v0, v0, v0, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layoutLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    aget-object v9, v9, v5

    goto :goto_10

    :cond_17
    :goto_13
    iget-object v7, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleViewLayoutParams:[Landroid/widget/LinearLayout$LayoutParams;

    aget-object v7, v7, v5

    if-ne v5, v6, :cond_18

    const v9, 0x40ea8f5c    # 7.33f

    goto :goto_14

    :cond_18
    iget-object v9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v9, v9, v0

    if-nez v9, :cond_19

    const/high16 v9, 0x41100000    # 9.0f

    goto :goto_14

    :cond_19
    const v9, 0x40b51eb8    # 5.66f

    :goto_14
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v8, :cond_1a

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v5

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layoutLayoutParams:[Landroid/widget/FrameLayout$LayoutParams;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v7, v7, v5

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleViewLayoutParams:[Landroid/widget/LinearLayout$LayoutParams;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :cond_1b
    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v5, v5, v4

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object v8, v8, v0

    if-nez v8, :cond_1c

    goto :goto_15

    :cond_1c
    iget v1, v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    or-int/2addr v1, v7

    :goto_15
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v1, v1, v0

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {v5, v0, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(II)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v0, v0, v6

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    iget v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    sub-float v5, v2, v5

    mul-float v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v0, v0, v4

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    iget v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    mul-float v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->wearImageScale:F

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v5

    invoke-static {v2, v1, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->wearImageScale:F

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v5

    invoke-static {v2, v1, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->wearImageTx:F

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v5

    mul-float v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v5

    mul-float v1, v1, v5

    iget v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->wearImageTy:F

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v1, v0, v4

    iget v5, p1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->from:I

    if-ne v5, v4, :cond_1d

    iget v6, p1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    if-eq v6, v4, :cond_1f

    :cond_1d
    if-ne v5, v4, :cond_1e

    iget v5, p1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    :cond_1e
    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->layout:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result p1

    sub-float/2addr v2, p1

    mul-float v3, v0, v2

    :cond_1f
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public prepareSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V
    .locals 2

    iget v0, p1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->from:I

    iget v1, p1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    iget p1, p1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->to:I

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    :cond_0
    return-void
.end method

.method public setGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZ)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->hasResellPrice:Z

    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v5, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v5, v6}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aput-object v5, v1, v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v1, v5}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-direct {p0, v0, v1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPattern(ILorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v1, v1, v0

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttonsLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object v1, v1, v4

    if-eqz p3, :cond_1

    sget v2, Lorg/telegram/messenger/R$drawable;->filled_crown_off:I

    goto :goto_0

    :cond_1
    sget v2, Lorg/telegram/messenger/R$drawable;->filled_crown_on:I

    :goto_0
    if-eqz p3, :cond_2

    sget p3, Lorg/telegram/messenger/R$string;->Gift2ActionWearOff:I

    goto :goto_1

    :cond_2
    sget p3, Lorg/telegram/messenger/R$string;->Gift2ActionWear:I

    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v2, p3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;->set(ILjava/lang/CharSequence;Z)V

    :cond_3
    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    const-wide/16 v5, 0x0

    cmp-long p3, v1, v5

    if-lez p3, :cond_5

    iput-boolean v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->hasResellPrice:Z

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2b50\ufe0f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    const/16 v2, 0x2c

    invoke-static {v7, v8, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object p3, p3, v0

    iget v1, p3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int/2addr p3, v2

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v1, p3, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, p3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    invoke-static {p3, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMine(IJ)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onUpdatePriceClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->reset(Landroid/view/View;)V

    :cond_5
    :goto_2
    if-eqz p2, :cond_8

    iget-wide p2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    const/4 v1, 0x2

    cmp-long v2, p2, v5

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    if-lez v2, :cond_6

    aget-object p2, p2, v1

    sget p3, Lorg/telegram/messenger/R$drawable;->filled_gift_sell_off:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionUnlist:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;->set(ILjava/lang/CharSequence;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object p2, p2, v1

    :goto_3
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onResellClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_6
    aget-object p2, p2, v1

    sget p3, Lorg/telegram/messenger/R$drawable;->filled_gift_sell_on:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ActionResell:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;->set(ILjava/lang/CharSequence;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object p2, p2, v1

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aput-object v3, p2, v0

    invoke-direct {p0, v0, v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPattern(ILorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p2, p2, v0

    const/high16 p3, 0x41600000    # 14.0f

    invoke-virtual {p2, v4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_4
    iput-boolean p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->hasLink:Z

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object p2, p2, v0

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setBackdropPaint(ILorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    const/16 p3, 0xa0

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stars$StarGift;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V

    return-void
.end method

.method public setPreviewingAttributes(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->sampleAttributes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stars/BagRandomizer;

    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stars/StarsController;->findAttributes(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stars/BagRandomizer;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->models:Lorg/telegram/ui/Stars/BagRandomizer;

    new-instance v0, Lorg/telegram/ui/Stars/BagRandomizer;

    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stars/StarsController;->findAttributes(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stars/BagRandomizer;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->patterns:Lorg/telegram/ui/Stars/BagRandomizer;

    new-instance v0, Lorg/telegram/ui/Stars/BagRandomizer;

    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stars/StarsController;->findAttributes(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stars/BagRandomizer;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrops:Lorg/telegram/ui/Stars/BagRandomizer;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggleBackdrop:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->toggled:I

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->patterns:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-direct {p0, v0, p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPattern(ILorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->models:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v2, 0xa0

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrops:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/BagRandomizer;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aput-object v1, p1, v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setBackdropPaint(ILorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->imageView:[Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->models:Lorg/telegram/ui/Stars/BagRandomizer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/BagRandomizer;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1, v0, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->checkToRotateRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->checkToRotateRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x9c4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setResellPrice(J)V
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->hasResellPrice:Z

    const-wide/16 v4, 0x1a4

    const v1, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2b50\ufe0f "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-static {p1, p2, v7}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->backdrop:[Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    aget-object p1, p1, v2

    iget p2, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p2, p1, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    iput-boolean v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceViewInProgress:Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$1;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->resellPriceView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$3;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$2;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V

    goto :goto_1

    :goto_2
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->hasResellPrice:Z

    const/4 p2, 0x2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object p1, p1, p2

    sget v0, Lorg/telegram/messenger/R$drawable;->filled_gift_sell_off:I

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ActionUnlist:I

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;->set(ILjava/lang/CharSequence;Z)V

    goto :goto_4

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object p1, p1, p2

    sget v0, Lorg/telegram/messenger/R$drawable;->filled_gift_sell_on:I

    sget v1, Lorg/telegram/messenger/R$string;->Gift2ActionResell:I

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    aget-object p1, p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onResellClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-nez p1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->collectionReleasedView:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->collectionReleasedView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->releasedView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p2, p1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->releasedView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->releasedView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->collectionReleasedView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p2, p1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p4, p4, p1

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p4, p1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p2, 0x8

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->releasedView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->collectionReleasedView:Landroid/widget/TextView;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setTransferAvailable(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->buttons:[Lorg/telegram/ui/Stars/StarGiftSheet$TopView$Button;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setWearPreview(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->wearPreviewObject:Lorg/telegram/tgnet/TLObject;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Online:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    const/4 v3, 0x1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v2, :cond_3

    if-le v0, v3, :cond_2

    const-string v2, "Subscribers"

    :goto_1
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->DiscussChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-le v0, v3, :cond_4

    const-string v2, "Members"

    goto :goto_1

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->subtitleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->updateWearImageTranslation()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->currentPage:Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->onSwitchPage(Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;)V

    :cond_5
    return-void
.end method

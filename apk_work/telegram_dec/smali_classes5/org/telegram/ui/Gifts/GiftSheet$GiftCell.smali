.class public Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;
    }
.end annotation


# instance fields
.field public allowResaleInGifts:Z

.field private final animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private final avatarView:Lorg/telegram/ui/Components/BackupImageView;

.field private cancel:Ljava/lang/Runnable;

.field private final card:Landroid/widget/FrameLayout;

.field private final cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

.field private final cardBackgroundPadding:Landroid/graphics/Rect;

.field private final currentAccount:I

.field private gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field private giftMine:Z

.field public final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field public inResalePage:Z

.field private lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private lastDocumentId:J

.field private lastTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

.field private lastUserGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

.field private final lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field private final pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field private pinned:Z

.field private pinnedIcon:Z

.field private final pinnedImageView:Landroid/widget/ImageView;

.field private final pinnedView:Landroid/widget/FrameLayout;

.field private premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

.field private final priceView:Landroid/widget/TextView;

.field private reordering:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

.field private final shaker:Lorg/telegram/ui/Components/Shaker;

.field private final starsPriceView:Landroid/widget/TextView;

.field private subtitle:Lorg/telegram/ui/Components/Text;

.field private final subtitleView:Landroid/widget/TextView;

.field private title:Lorg/telegram/ui/Components/Text;

.field private final titleView:Landroid/widget/TextView;

.field private userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;


# direct methods
.method public static synthetic $r8$lambda$iU7tGMrtRn15Bx5pUwtofw-I7_g(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lambda$setShowPinIcon$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$icKdWPVMvfMD7cQIbcx27dNuf4o(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lambda$setPinned$0(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    new-instance v10, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v10, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    move/from16 v0, p2

    iput v0, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    iput-object v9, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v0, 0x3d23d70a    # 0.04f

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v7, v0, v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    new-instance v0, Lorg/telegram/ui/Components/Shaker;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/Shaker;-><init>(Landroid/view/View;)V

    iput-object v0, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->shaker:Lorg/telegram/ui/Components/Shaker;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->card:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v9, v2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v1, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x77

    const/4 v3, -0x1

    invoke-static {v3, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x35

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/4 v15, 0x0

    const/high16 v16, 0x41400000    # 12.0f

    const/16 v10, 0x50

    const/high16 v11, 0x42a00000    # 80.0f

    const/16 v12, 0x11

    const/high16 v14, 0x41400000    # 12.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iput-object v4, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    sget v6, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_GIFT_LOCK:I

    invoke-direct {v4, v8, v6, v9}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    const/16 v16, 0x0

    const/16 v10, 0x1e

    const/high16 v11, 0x41f00000    # 30.0f

    const/16 v12, 0x31

    const/high16 v14, 0x42180000    # 38.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    sget v6, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_GIFT_PIN:I

    invoke-direct {v4, v8, v6, v9}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    const/16 v1, 0x2c

    const/16 v6, 0x11

    invoke-static {v1, v1, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    const v10, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v10}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setScaleY(F)V

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->titleView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v12, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v4, v2, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x30

    const/16 v17, 0x0

    const/high16 v18, 0x42b20000    # 89.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitleView:Landroid/widget/TextView;

    invoke-static {v12, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v4, v2, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x30

    const/4 v15, 0x0

    const/high16 v16, 0x42d60000    # 107.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v4, v12, v5, v9, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v9

    if-eqz v9, :cond_0

    const v9, 0x1eeba52d

    goto :goto_0

    :cond_0
    const v9, 0x40e8ab02

    :goto_0
    invoke-direct {v5, v9}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v5, -0xcc6e2c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v17, 0x0

    const/high16 v18, 0x41300000    # 11.0f

    const/4 v12, -0x2

    const/high16 v13, 0x41d00000    # 26.0f

    const/16 v14, 0x31

    const/4 v15, 0x0

    const/high16 v16, 0x43020000    # 130.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    const v5, 0x412a8f5c    # 10.66f

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, -0x145ad3

    goto :goto_1

    :cond_1
    const v2, -0x2988de

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x0

    const/high16 v18, 0x41000000    # 8.0f

    const/4 v12, -0x2

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x31

    const/4 v15, 0x0

    const/high16 v16, 0x43210000    # 161.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    const/high16 v17, 0x40000000    # 2.0f

    const/high16 v18, 0x40000000    # 2.0f

    const/16 v12, 0x14

    const/high16 v13, 0x41a00000    # 20.0f

    const/16 v14, 0x33

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedImageView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_limit_pin:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v3, 0x414a8f5c    # 12.66f

    invoke-static {v3, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x40000000    # 2.0f

    const/16 v8, 0x14

    const/high16 v9, 0x41a00000    # 20.0f

    const/16 v10, 0x33

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getUniqueStarGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$setPinned$0(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setShowPinIcon$1(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 10

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocumentId:J

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocumentId:J

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const v2, 0x3e99999a    # 0.3f

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const-string v5, "100_100"

    const-string v7, "100_100"

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRibbonText()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    const/16 v1, 0x2c

    const-string v2, "#"

    const-wide/16 v3, 0x0

    const/16 v5, 0x8

    const-class v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v10, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v10, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v10, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    cmp-long v0, v10, v3

    if-lez v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3d23d70a    # 0.04f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2OnSale:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinned:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    :goto_1
    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v4, v2

    invoke-static {v4, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2Limited1OfRibbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_issued:I

    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2Limited1OfRibbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_total:I

    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v0, :cond_a

    iget-boolean v10, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inResalePage:Z

    if-eqz v10, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    goto/16 :goto_1

    :cond_5
    iget-boolean v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->allowResaleInGifts:Z

    if-eqz v1, :cond_6

    iget-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v10, v1, v3

    if-lez v10, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_green:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2Resale:I

    goto/16 :goto_0

    :cond_6
    iget-boolean v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->giftMine:Z

    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2Limited1OfRibbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_issued:I

    invoke-static {v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_7
    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->limited:Z

    if-eqz v1, :cond_8

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_remains:I

    if-gtz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon_soldout:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2SoldOut:I

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    if-eqz v1, :cond_9

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_gift_ribbon:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2LimitedRibbon:I

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getDiscount()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    const v1, -0x26b001

    const v2, -0x7d9201

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setColors(II)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    sget v1, Lorg/telegram/messenger/R$string;->GiftPremiumOptionDiscount:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getDiscount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1, v7}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setText(ILjava/lang/CharSequence;Z)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->setStrokeColor(I)V

    :cond_c
    :goto_5
    return-void
.end method


# virtual methods
.method public customDraw(Landroid/view/View;Landroid/graphics/Canvas;FFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v9, v12

    div-float v3, v10, v12

    invoke-virtual {v8, v1, v2, v13, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->getUniqueStarGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    const/high16 v1, 0x427c0000    # 63.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v11

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    float-to-int v3, v9

    float-to-int v4, v10

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v2, v8, v11}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->draw(Landroid/graphics/Canvas;F)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->getPadding(Landroid/graphics/Rect;)Z

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2, v3, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    sub-float v4, v9, v2

    div-float/2addr v4, v12

    sub-float v1, v10, v1

    sub-float v5, v1, v2

    div-float/2addr v5, v12

    invoke-virtual {v3, v4, v5, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->isLottieRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/high16 v16, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v15

    if-lez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v9, v2

    div-float/2addr v2, v12

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v12

    invoke-static {v3, v1, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    sub-float v1, v7, v11

    mul-float v1, v1, v16

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v6, v1

    const/4 v3, 0x0

    const/16 v17, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p2

    const/high16 p1, 0x3f800000    # 1.0f

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v15

    if-lez v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float v1, v1, v16

    float-to-int v6, v1

    const/4 v3, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v15

    if-lez v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v15

    if-lez v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v9, v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x3fa00000    # 1.25f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v1, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v8, v1, v15}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_2
    if-eqz v14, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    if-nez v1, :cond_6

    new-instance v1, Lorg/telegram/ui/Components/Text;

    iget-object v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v1, v2, v4, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    if-nez v1, :cond_7

    new-instance v1, Lorg/telegram/ui/Components/Text;

    iget v2, v14, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    const-string v3, "Gift2CollectionNumber"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v9, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    sub-float v2, v9, v2

    div-float v3, v2, v12

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v10, v2

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v4

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    const/high16 v15, 0x42480000    # 50.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v17, v7, v11

    mul-float v4, v4, v17

    add-float/2addr v4, v2

    const/4 v5, -0x1

    move-object/from16 v2, p2

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v9, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    sub-float v2, v9, v2

    div-float v3, v2, v12

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v10, v2

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v4

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    add-float/2addr v4, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float v6, v11, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    sub-float/2addr v13, v1

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v8, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float v1, v1, v16

    sub-float/2addr v7, v11

    mul-float v1, v1, v7

    float-to-int v6, v1

    const/4 v3, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->reordering:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v0, v0, v2

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->shaker:Lorg/telegram/ui/Components/Shaker;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/Shaker;->concat(Landroid/graphics/Canvas;F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getGift()Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    return-object v0
.end method

.method public getPremiumTier()Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    return-object v0
.end method

.method public getSavedGift()Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    return-object v0
.end method

.method public invalidateCustom()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->card:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->card:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setPinned(ZZ)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinned:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinned:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const v4, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Z)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    const v4, 0x3e99999a    # 0.3f

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinned:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->reordering:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-virtual {p0, v1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setShowPinIcon(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->updateRibbonText()V

    return-void
.end method

.method public setPremiumGift(Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getMonths()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    const/4 v4, 0x0

    if-eq v3, p1, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setPremiumGiftImage(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;I)Ljava/lang/Runnable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    iput-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->titleView:Landroid/widget/TextView;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Gift2Months"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->TelegramPremiumShort:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->isStarsPaymentAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, -0x145ad3

    goto :goto_0

    :cond_1
    const v3, -0x2988de

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getStarsPrice()J

    move-result-wide v5

    const/16 v7, 0x2c

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-array v3, v0, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->PremiumOrStarsPrice:I

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    const v6, 0x3ef5c28f    # 0.48f

    invoke-static {v2, v6, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v2, v3, v1

    const v3, 0x3f4ccccd    # 0.8f

    iput v3, v2, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x31

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v6, v1, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;->getFormattedPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const v5, 0x193391d4

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const v2, -0xcc6e2c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x43020000    # 130.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iput-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iput-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iput-boolean v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->giftMine:Z

    iput-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iput-boolean v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->allowResaleInGifts:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inResalePage:Z

    iput-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    iput-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->updateRibbonText()V

    return-void
.end method

.method public setReordering(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->reordering:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->reordering:Z

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinned:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setShowPinIcon(ZZ)V

    return-void
.end method

.method public setShowPinIcon(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedIcon:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedIcon:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_6
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    const v0, 0x3e99999a    # 0.3f

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_8
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    :goto_3
    return-void
.end method

.method public setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iput-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    :cond_0
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v2, v4}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v5, v6}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->titleView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setWaitingImage()V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, -0x1000000

    if-eqz v2, :cond_1

    iget v9, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v9, v8

    invoke-static {v9, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v3

    :goto_0
    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setBlendWithColor(Ljava/lang/Integer;)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setWaitingImage()V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v2, :cond_2

    iget v9, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v9, v8

    invoke-static {v9, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setBlendWithColor(Ljava/lang/Integer;)V

    const/high16 v4, 0x41a00000    # 20.0f

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->pinnedView:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-eqz v2, :cond_3

    iget v9, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v9, v8

    const v10, 0x3dcccccd    # 0.1f

    const v11, -0x41b33333    # -0.2f

    invoke-static {v9, v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result v9

    :goto_2
    invoke-static {v4, v9}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    goto :goto_2

    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastUserGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    const v9, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f800000    # 1.0f

    if-ne v4, v1, :cond_7

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_4

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_5

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_5
    const v11, 0x3ecccccd    # 0.4f

    :goto_5
    invoke-virtual {v4, v11}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_6

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_6
    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v9, 0x15e

    invoke-virtual {v4, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_8

    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_8

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v4, v11}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_9

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_9
    const v11, 0x3ecccccd    # 0.4f

    :goto_7
    invoke-virtual {v4, v11}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v11, :cond_a

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_a
    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleY(F)V

    :goto_8
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v4, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_b

    goto :goto_a

    :cond_b
    iget-boolean v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->name_hidden:Z

    if-eqz v11, :cond_c

    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    const-string v11, "anonymous"

    invoke-static {v11}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView;->getPlatformDrawable(Ljava/lang/String;)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object v11

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v11, v13, v12}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_c
    iget-object v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v11}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-lez v13, :cond_d

    iget v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v13, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    if-eqz v11, :cond_e

    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_9
    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v12, v11, v13}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_b

    :cond_d
    iget v13, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v13, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    if-eqz v11, :cond_e

    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_9

    :cond_e
    :goto_a
    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    const-string v14, "XTR "

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x41000000    # 8.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v5, 0x1

    if-eqz v2, :cond_10

    iget-object v11, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v12, v11, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    cmp-long v11, v12, v9

    if-lez v11, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v4, v9, v7, v10, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    new-array v3, v5, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v10, v10, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    const/16 v12, 0x2c

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const v10, 0x3f733333    # 0.95f

    invoke-static {v9, v10, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v3, v3, v7

    if-eqz v3, :cond_f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    :cond_f
    iget v3, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v3, v8

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int/2addr v2, v8

    const v4, 0x3f0ccccd    # 0.55f

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;

    const v6, 0x70ffffff

    invoke-direct {v4, v6, v2}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x31

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x428a0000    # 69.0f

    :goto_c
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_13

    :cond_10
    const/4 v6, -0x1

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    if-eqz p2, :cond_11

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_d

    :cond_11
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    if-eqz v4, :cond_12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v2, v8, v7, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2PriceUnique:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_e
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_12
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v2, v8, v7, v11, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v11, v8, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    iget-wide v13, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->convert_stars:J

    cmp-long v15, v13, v9

    if-lez v15, :cond_13

    goto :goto_f

    :cond_13
    iget-wide v13, v8, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->convert_stars:J

    :goto_f
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const/16 v10, 0x2c

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v8, 0x3f28f5c3    # 0.66f

    invoke-static {v3, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_e

    :goto_10
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    if-eqz v4, :cond_14

    const/4 v12, -0x1

    goto :goto_11

    :cond_14
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v3

    if-eqz v3, :cond_15

    const v12, -0x145ad3

    goto :goto_11

    :cond_15
    const v12, -0x408a00

    :goto_11
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;

    if-eqz v4, :cond_16

    const v4, 0x40ffffff    # 7.9999995f

    goto :goto_12

    :cond_16
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x1eeba52d

    goto :goto_12

    :cond_17
    const v4, 0x40e8ab02

    :goto_12
    invoke-direct {v3, v4}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x31

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x42ce0000    # 103.0f

    goto/16 :goto_c

    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastUserGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iput-boolean v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->giftMine:Z

    iput-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iput-boolean v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->allowResaleInGifts:Z

    iput-boolean v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inResalePage:Z

    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    iput-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    iget-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-ne v3, v1, :cond_18

    const/4 v7, 0x1

    :cond_18
    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->updateRibbonText()V

    return-void
.end method

.method public setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZ)V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    iput-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cancel:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v7, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v5, v7}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->cardBackground:Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;

    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v8, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->titleView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageViewLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0x31

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const/high16 v10, 0x41400000    # 12.0f

    const/4 v11, 0x1

    invoke-virtual {v7, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v7, -0x1

    const v12, 0x3f0ccccd    # 0.55f

    const/high16 v13, -0x1000000

    const/high16 v14, 0x41200000    # 10.0f

    const/4 v15, 0x0

    if-eqz v2, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v11, v10, v15, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v10, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/messenger/R$string;->Gift2TransferMine:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_1

    iget v10, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v10, v13

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int/2addr v5, v13

    invoke-static {v5, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v10, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v10

    goto :goto_0

    :cond_1
    const v10, 0x40ffffff    # 7.9999995f

    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const/high16 v11, 0x41500000    # 13.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const v12, 0x30ffffff

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v12

    invoke-static {v11, v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    :cond_2
    const/16 v10, 0x2c

    const-string v11, "XTR "

    const/high16 v17, 0x41000000    # 8.0f

    if-eqz v4, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v6, v8, v15, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-wide v7, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_stars:J

    iget v14, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v14, v13

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int/2addr v5, v13

    invoke-static {v5, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v14, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v5

    iget-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8, v10}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v8, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;

    const v10, 0x70ffffff

    invoke-direct {v8, v10, v5}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    const/4 v6, -0x1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v6, v15, v7, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_5

    iget-wide v7, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    cmp-long v12, v7, v5

    if-lez v12, :cond_5

    iget-wide v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->resell_min_stars:J

    const-wide/16 v12, 0x1

    cmp-long v14, v7, v12

    if-lez v14, :cond_4

    iget v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v7, v7, Lorg/telegram/messenger/MessagesController;->starsStargiftResaleAmountMax:J

    cmp-long v12, v5, v7

    if-gez v12, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    iget-wide v7, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->stars:J

    if-eqz p3, :cond_6

    iget-boolean v12, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->can_upgrade:Z

    if-eqz v12, :cond_6

    iget-wide v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->upgrade_stars:J

    :cond_6
    add-long/2addr v5, v7

    goto :goto_2

    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6, v10}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_7

    const-string v5, "+"

    goto :goto_4

    :cond_7
    const-string v5, ""

    :goto_4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x3f35c28f    # 0.71f

    invoke-static {v5, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;

    instance-of v7, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v7, :cond_8

    const v10, 0x40ffffff    # 7.9999995f

    goto :goto_5

    :cond_8
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v7

    if-eqz v7, :cond_9

    const v10, 0x1eeba52d

    goto :goto_5

    :cond_9
    const v10, 0x40e8ab02

    :goto_5
    invoke-direct {v6, v10}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v6

    if-eqz v6, :cond_a

    const v6, -0x145ad3

    goto/16 :goto_1

    :cond_a
    const v6, -0x2988de

    goto/16 :goto_1

    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v6, 0x42ce0000    # 103.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->starsPriceView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    iput-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->lastTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iput-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->premiumTier:Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    iput-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iput-boolean v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->giftMine:Z

    iput-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->userGift:Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iput-boolean v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->allowResaleInGifts:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->inResalePage:Z

    iput-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->title:Lorg/telegram/ui/Components/Text;

    iput-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0, v15, v15}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->updateRibbonText()V

    return-void
.end method

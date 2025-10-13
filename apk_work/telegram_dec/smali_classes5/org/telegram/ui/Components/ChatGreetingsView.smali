.class public abstract Lorg/telegram/ui/Components/ChatGreetingsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatGreetingsView$Listener;
    }
.end annotation


# instance fields
.field private backgroundHeight:I

.field private final currentAccount:I

.field private descriptionView:Landroid/widget/TextView;

.field private disableBackground:Z

.field ignoreLayot:Z

.field private isSuggest:Z

.field private listener:Lorg/telegram/ui/Components/ChatGreetingsView$Listener;

.field public nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

.field private preloadedGreetingsSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private premiumButtonView:Landroid/widget/TextView;

.field private premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private premiumLock:Z

.field private premiumTextView:Landroid/widget/TextView;

.field public preview:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public stickerContainer:Landroid/widget/FrameLayout;

.field public stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

.field private titleView:Landroid/widget/TextView;

.field private togglingStickersAnimator:Landroid/animation/AnimatorSet;

.field private viewTop:F

.field private viewTranslationX:F

.field private visiblePartSet:Z

.field wasDraw:Z


# direct methods
.method public static synthetic $r8$lambda$06XqzI5PQJZLi1lFTz35DaWMwKg(Lorg/telegram/ui/Components/ChatGreetingsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatGreetingsView;->lambda$setPremiumLock$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$13a8CLbV7ZHYOY05YUpOVmneXOw(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatGreetingsView;->lambda$showPremiumSheet$3(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$flfrJ0LaBGFFJqtR9RCK7UdR_5E(Lorg/telegram/ui/Components/ChatGreetingsView;Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatGreetingsView;->lambda$setSticker$1(Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sE5lOh5buuYAbmETqF9wS7ZFYT0(Lorg/telegram/ui/Components/ChatGreetingsView;Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatGreetingsView;->lambda$setNextSticker$2(Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput p3, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->currentAccount:I

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 p5, 0x41000000    # 8.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p5, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance p5, Landroid/widget/TextView;

    invoke-direct {p5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->titleView:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p5, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->titleView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p5, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->titleView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p5, Landroid/widget/TextView;

    invoke-direct {p5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p5, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p5, Landroid/widget/FrameLayout;

    invoke-direct {p5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerContainer:Landroid/widget/FrameLayout;

    new-instance p5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p5, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p5

    invoke-virtual {p5, p2}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x70

    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p5, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance p5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p5, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatGreetingsView;->updateLayout()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatGreetingsView;->updateColors()V

    sget p1, Lorg/telegram/messenger/R$string;->NoMessages:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->NoMessagesGreetingsDescription:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ChatGreetingsView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->preloadedGreetingsSticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p4, :cond_0

    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getGreetingsSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->preloadedGreetingsSticker:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatGreetingsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatGreetingsView;->toggleToNextSticker()V

    return-void
.end method

.method public static createFilter(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    :goto_0
    mul-float v2, v2, v3

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-eqz v5, :cond_1

    iget v3, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    goto :goto_3

    :cond_1
    add-int/2addr v3, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    invoke-static {p0, v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    const/16 v3, 0x200

    const/16 v4, 0x200

    :cond_3
    if-nez v3, :cond_4

    float-to-int v4, v2

    const/high16 p0, 0x42c80000    # 100.0f

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    add-int v3, v4, p0

    :cond_4
    int-to-float p0, v4

    int-to-float v3, v3

    div-float v3, v2, v3

    mul-float p0, p0, v3

    float-to-int p0, p0

    float-to-int v3, v2

    int-to-float v4, p0

    cmpl-float v5, v4, v2

    if-lez v5, :cond_5

    int-to-float p0, v3

    div-float/2addr v2, v4

    mul-float p0, p0, v2

    float-to-int p0, p0

    move v6, v3

    move v3, p0

    move p0, v6

    :cond_5
    int-to-float v2, v3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float p0, p0

    div-float/2addr p0, v3

    float-to-int p0, p0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object p0, v4, v1

    const-string p0, "%d_%d"

    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fetchSticker()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->preloadedGreetingsSticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getGreetingsSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->preloadedGreetingsSticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->wasDraw:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatGreetingsView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_0
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$setNextSticker$2(Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->listener:Lorg/telegram/ui/Components/ChatGreetingsView$Listener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/ChatGreetingsView$Listener;->onGreetings(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setPremiumLock$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$setSticker$1(Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->listener:Lorg/telegram/ui/Components/ChatGreetingsView$Listener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/ChatGreetingsView$Listener;->onGreetings(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showPremiumSheet$3(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "contact"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    return-void
.end method

.method public static showPremiumSheet(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v7, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v7, Lorg/telegram/messenger/R$raw;->large_message_lock:I

    const/16 v8, 0x50

    invoke-virtual {v6, v7, v8, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v9, -0x1

    invoke-direct {v7, v9, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v8, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x0

    const/16 v14, 0x10

    const/16 v8, 0x50

    const/16 v9, 0x50

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x10

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v6

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v9, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v7, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v6, :cond_0

    sget v10, Lorg/telegram/messenger/R$string;->PremiumMessageHeaderLocked:I

    goto :goto_0

    :cond_0
    sget v10, Lorg/telegram/messenger/R$string;->PremiumMessageHeader:I

    :goto_0
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v16, 0xc

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x1

    const/16 v14, 0xc

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v9, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const-wide/16 v8, 0x0

    cmp-long v10, p2, v8

    if-lez v10, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    const-string v8, ""

    :goto_1
    if-eqz v6, :cond_2

    sget v9, Lorg/telegram/messenger/R$string;->PremiumMessageTextLocked:I

    goto :goto_2

    :cond_2
    sget v9, Lorg/telegram/messenger/R$string;->PremiumMessageText:I

    :goto_2
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v3

    aput-object v8, v10, v5

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0xc

    const/16 v15, 0x13

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x1

    const/16 v12, 0xc

    const/16 v13, 0x9

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v6, :cond_3

    new-instance v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-direct {v6, v0, v5, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatGreetingsView$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ChatGreetingsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lorg/telegram/messenger/R$string;->PremiumMessageButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v3, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v7, -0x1

    const/16 v8, 0x30

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private toggleToNextSticker()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->togglingStickersAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->togglingStickersAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x1a4

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->togglingStickersAnimator:Landroid/animation/AnimatorSet;

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->togglingStickersAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/ChatGreetingsView$3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/ChatGreetingsView$3;-><init>(Lorg/telegram/ui/Components/ChatGreetingsView;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->togglingStickersAnimator:Landroid/animation/AnimatorSet;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x0

    new-array v8, v3, [F

    fill-array-data v8, :array_0

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v10, v3, [F

    fill-array-data v10, :array_1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v3, [F

    fill-array-data v12, :array_2

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    neg-int v15, v15

    int-to-float v15, v15

    new-array v14, v3, [F

    aput v15, v14, v2

    aput v7, v14, v1

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    new-array v15, v3, [F

    fill-array-data v15, :array_3

    invoke-static {v14, v6, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    new-array v15, v3, [F

    fill-array-data v15, :array_4

    invoke-static {v14, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    new-array v15, v3, [F

    fill-array-data v15, :array_5

    invoke-static {v14, v11, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    new-array v0, v3, [F

    aput v7, v0, v2

    aput v15, v0, v1

    invoke-static {v14, v13, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v7, 0x8

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v5, v7, v2

    aput-object v8, v7, v1

    aput-object v10, v7, v3

    const/4 v1, 0x3

    aput-object v12, v7, v1

    const/4 v1, 0x4

    aput-object v6, v7, v1

    const/4 v1, 0x5

    aput-object v9, v7, v1

    const/4 v1, 0x6

    aput-object v11, v7, v1

    const/4 v1, 0x7

    aput-object v0, v7, v1

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatGreetingsView;->togglingStickersAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method private updateColors()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatGreetingsView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatGreetingsView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateLayout()V
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumLock:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v6, 0x14

    const/16 v7, 0x9

    const/16 v1, 0x4e

    const/16 v2, 0x4e

    const/16 v3, 0x31

    const/16 v4, 0x14

    const/16 v5, 0x9

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v2, 0xd

    const/16 v9, 0xd

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    const/16 v9, 0x9

    :goto_0
    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x31

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->isSuggest:Z

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    const/16 v6, 0x14

    const/16 v7, 0xd

    const/4 v1, -0x2

    const/16 v2, 0x1e

    const/16 v3, 0x31

    const/16 v4, 0x14

    const/4 v5, 0x2

    :goto_1
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->titleView:Landroid/widget/TextView;

    const/16 v6, 0x14

    const/4 v7, 0x6

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/16 v4, 0x14

    const/4 v5, 0x6

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    const/4 v1, -0x2

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerContainer:Landroid/widget/FrameLayout;

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/16 v1, 0x70

    const/16 v2, 0x70

    const/16 v4, 0x10

    const/16 v5, 0xa

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->disableBackground:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->backgroundHeight:I

    iget v4, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->viewTranslationX:F

    iget v5, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->viewTop:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v5, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->applyServiceShaderMatrix(IIFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->backgroundHeight:I

    iget v3, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->viewTranslationX:F

    iget v4, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->viewTop:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v6, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "paintChatActionBackground"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/ChatGreetingsView$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->wasDraw:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->wasDraw:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->preloadedGreetingsSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatGreetingsView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatGreetingsView;->fetchSticker()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->ignoreLayot:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->preview:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->preview:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->preview:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->ignoreLayot:Z

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->ignoreLayot:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public resetPremiumLock()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lorg/telegram/ui/Components/ChatGreetingsView;->setPremiumLock(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->disableBackground:Z

    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/ChatGreetingsView$Listener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->listener:Lorg/telegram/ui/Components/ChatGreetingsView$Listener;

    return-void
.end method

.method public setNextSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->togglingStickersAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatGreetingsView$2;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/ChatGreetingsView$2;-><init>(Lorg/telegram/ui/Components/ChatGreetingsView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatGreetingsView;->createFilter(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v0, 0x5a

    invoke-static {p2, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatGreetingsView;->createFilter(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v0, Lorg/telegram/ui/Components/ChatGreetingsView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatGreetingsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatGreetingsView;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPremiumLock(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 6

    .line 0
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatGreetingsView;->setPremiumLock(ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPremiumLock(ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 5

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumLock:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumLock:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->isSuggest:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v0, 0x429c0000    # 78.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x1c000000

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$drawable;->filled_chatlist2:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$raw;->large_message_lock:I

    const/16 v0, 0x50

    invoke-virtual {p1, p2, v0, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance p2, Lorg/telegram/ui/Components/ChatGreetingsView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatGreetingsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatGreetingsView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumTextView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/16 v0, 0x11

    const/4 v1, 0x4

    const/high16 v2, 0x41500000    # 13.0f

    if-nez p1, :cond_3

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {p3, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumTextView:Landroid/widget/TextView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatGreetingsView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    if-nez p1, :cond_4

    new-instance p1, Lorg/telegram/ui/Components/ChatGreetingsView$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lorg/telegram/ui/Components/ChatGreetingsView$1;-><init>(Lorg/telegram/ui/Components/ChatGreetingsView;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x1e000000

    const/high16 v1, 0x33000000

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatGreetingsView;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->premiumButtonView:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatGreetingsView;->updateLayout()V

    return-void
.end method

.method public setPreview(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->preview:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->titleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->NoMessages:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p2, Lorg/telegram/messenger/R$string;->NoMessagesGreetingsDescription:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v0, 0x3c

    const/high16 v1, 0x3f000000    # 0.5f

    if-le p2, v0, :cond_4

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    mul-float p2, p2, v1

    float-to-int p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_4
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    mul-float p2, p2, v1

    float-to-int p2, p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method public setSticker(Ljava/lang/String;)V
    .locals 8

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->wasDraw:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "256_256"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 8

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->wasDraw:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->nextStickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatGreetingsView;->createFilter(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatGreetingsView;->createFilter(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Lorg/telegram/ui/Components/ChatGreetingsView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatGreetingsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatGreetingsView;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->stickerToSendView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisiblePart(FI)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->visiblePartSet:Z

    iput p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->backgroundHeight:I

    iput p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->viewTop:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView;->viewTranslationX:F

    return-void
.end method

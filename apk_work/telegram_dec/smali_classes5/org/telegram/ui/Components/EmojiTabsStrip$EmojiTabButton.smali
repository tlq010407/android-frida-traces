.class public Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmojiTabButton"
.end annotation


# instance fields
.field animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field animatedEmojiDocumentId:Ljava/lang/Long;

.field attached:Z

.field private forceSelector:Z

.field public id:Ljava/lang/Long;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private isAnimatedEmoji:Z

.field private isVisible:Z

.field public keepAttached:Z

.field private lockAnimator:Landroid/animation/ValueAnimator;

.field private lockT:F

.field private lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field private lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field public newly:Z

.field private round:Z

.field private selectAnimator:Landroid/animation/ValueAnimator;

.field private selectT:F

.field private selected:Z

.field setObject:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

.field public shown:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;


# direct methods
.method public static synthetic $r8$lambda$5OTUZnC76mQpBFUXJt3cTfUOb1U(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lambda$updateSelect$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RBHdUHevmyUeXKyY8S9hVGU-OYQ(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lambda$updateLock$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IIZZ)V
    .locals 9

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->shown:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    iput-boolean p6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    invoke-static {p5, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    :goto_0
    invoke-virtual {p0, p5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    if-eqz p6, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    const/16 p6, 0x8

    invoke-static {p5, p6, p6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    goto :goto_0

    :cond_1
    :goto_1
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x17

    if-lt p5, p6, :cond_2

    new-instance p2, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 p3, 0x41c00000    # 24.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    move v3, p4

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    const/high16 p5, 0x41d80000    # 27.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-virtual {p2, p4, p3, p6, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_2

    :cond_2
    new-instance p4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p4, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-boolean v1, p4, Lorg/telegram/ui/Components/BackupImageView;->applyAttach:Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;IZZ)V
    .locals 1

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->shown:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p4

    invoke-static {p4, v0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    :goto_0
    invoke-virtual {p0, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p4

    const/16 p5, 0x8

    invoke-static {p4, p5, p5}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p4, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-boolean v0, p4, Lorg/telegram/ui/Components/BackupImageView;->applyAttach:Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;JZZZ)V
    .locals 6

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x1

    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->shown:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->newly:Z

    iput-boolean p6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    iput-boolean p7, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p6

    invoke-static {p6, v0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p6

    :goto_0
    invoke-virtual {p0, p6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    if-eqz p7, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p6

    const/16 p7, 0x8

    invoke-static {p6, p7, p7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p6

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p6, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$3;

    invoke-direct {p6, p0, p2, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$3;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    iput-object p6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-boolean v0, p6, Lorg/telegram/ui/Components/BackupImageView;->applyAttach:Z

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isAnimatedEmoji:Z

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->getEmojiColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$4;

    sget v3, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_STICKERS_PREMIUM_LOCKED:I

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$4;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLockImageReceiver()V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Document;ZZZ)V
    .locals 6

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x1

    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->shown:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->newly:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    iput-boolean p6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    invoke-static {p5, v0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    :goto_0
    invoke-virtual {p0, p5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    if-eqz p6, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p5

    const/16 p6, 0x8

    invoke-static {p5, p6, p6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$1;

    invoke-direct {p5, p0, p2, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-boolean v0, p5, Lorg/telegram/ui/Components/BackupImageView;->applyAttach:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iput-boolean p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isAnimatedEmoji:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->getEmojiColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p3

    invoke-virtual {p5, p3}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$2;

    sget v3, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_STICKERS_PREMIUM_LOCKED:I

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$2;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLockImageReceiver()V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->round:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->forceSelector:Z

    return p0
.end method

.method private initLock()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateLock$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateSelect$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method private playAnimation()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZ)V

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    :cond_1
    return-void
.end method

.method private setColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1500(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result p1

    :cond_1
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isAnimatedEmoji:Z

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->invalidate()V

    :cond_3
    return-void
.end method

.method private stopAnimation()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAttachState()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->attached:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isVisible:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v1, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1600(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1600(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setObject:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setObject:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "24_24"

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setObject:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->needLoadSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_7

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setObject:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->needLoadSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setObject:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->needLoadSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->attached:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isVisible:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->onAttachedToWindow()V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->onDetachedFromWindow()V

    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLockImageReceiver()V

    return-void
.end method

.method private updateLock(ZZ)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p2, v1, v0

    const/4 p2, 0x1

    aput v2, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$5;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabledOrPreparing()Z

    move-result p2

    if-eqz p2, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_6
    iput v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockT:F

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isVisible:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public id()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setObject:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_3

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->attached:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->attached:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_0

    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p5, p3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_1

    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int p2, p4, p2

    sub-int/2addr p5, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int p3, p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const/high16 p1, 0x41f00000    # 30.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public performClick()Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->playAnimation()V

    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimatedEmojiDocument(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    if-eqz v1, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    :goto_0
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    :cond_4
    return-void
.end method

.method public setAnimatedEmojiDocumentId(J)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    if-eqz v3, :cond_2

    :cond_0
    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    :goto_0
    cmp-long v0, v3, p1

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

    cmp-long v0, p1, v1

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    :cond_5
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setAnimatedEmojiDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setStickerThumb(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLock(Ljava/lang/Boolean;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLock(ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateLock(ZZ)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mini_lockedemoji:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mini_addemoji:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setStickerThumb(Lorg/telegram/ui/Components/EmojiView$EmojiPack;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setObject:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v3, p1, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmojiDocumentId:Ljava/lang/Long;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->animatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setObject:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    :cond_3
    return-void
.end method

.method public updateColor()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->setColor(I)V

    return-void
.end method

.method public updateLockImageReceiver()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->done()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1500(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSelect(ZZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selected:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selected:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->stopAnimation()V

    :cond_3
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    iget p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton$6;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabledOrPreparing()Z

    move-result p2

    if-eqz p2, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x15e

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_7
    iput v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->selectT:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateColor()V

    :goto_1
    return-void
.end method

.method public updateVisibilityInbounds(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isVisible:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isVisible:Z

    if-eq p2, p1, :cond_4

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->isVisible:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->lockView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->initLock()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->stopAnimation()V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateAttachState()V

    :cond_4
    return-void
.end method

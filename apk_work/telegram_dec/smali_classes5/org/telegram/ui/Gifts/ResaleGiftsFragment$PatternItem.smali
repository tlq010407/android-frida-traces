.class public Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatternItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem$Factory;
    }
.end annotation


# instance fields
.field private final currentAccount:I

.field private emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private emojiDrawableId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;->currentAccount:I

    const/high16 p1, 0x41900000    # 18.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p2, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->makeCheckView(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance p2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem$1;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    return-object p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    const/high16 p1, 0x437a0000    # 250.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;ILjava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;->emojiDrawableId:J

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;->emojiDrawableId:J

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem$2;

    iget v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;->currentAccount:I

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem$2;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;IILorg/telegram/tgnet/TLRPC$Document;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_3
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_4
    if-lez p2, :cond_5

    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "  "

    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p2, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {p3, p2, p1, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p1, p3

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    return-void
.end method

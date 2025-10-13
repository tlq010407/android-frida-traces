.class public Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Business/BusinessLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BusinessLinkView"
.end annotation


# instance fields
.field private businessLink:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

.field private final clicksCountTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private final imageView:Landroid/widget/ImageView;

.field private final messagePreviewTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$qe3d4I706PSfqW1kkBze4mToLwo(Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_limit_links:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v9, 0x0

    const/high16 v3, 0x42100000    # 36.0f

    const/high16 v4, 0x42100000    # 36.0f

    const v5, 0x800013

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v11, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/16 v7, 0x37

    const/high16 v8, 0x42800000    # 64.0f

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->clicksCountTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    :goto_1
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    const/high16 v11, 0x41600000    # 14.0f

    const/4 v12, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x41900000    # 18.0f

    const/16 v8, 0x37

    const/high16 v9, 0x42800000    # 64.0f

    const v10, 0x412a8f5c    # 10.66f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->messagePreviewTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/high16 p1, 0x41500000    # 13.0f

    const/4 v5, 0x1

    invoke-virtual {v1, v5, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_2

    const/4 v3, 0x5

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iput-boolean v0, v1, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->allowClickSpoilers:Z

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setUseAlphaForEmoji(Z)V

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/16 v6, 0x57

    const/high16 v7, 0x42800000    # 64.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->businessLink:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->needDivider:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "paintDivider"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :cond_0
    move-object v6, v0

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42800000    # 64.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42800000    # 64.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p1

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p3, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->clicksCountTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result p3

    invoke-virtual {p1, p3, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p3, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->clicksCountTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result p3

    invoke-virtual {p1, p2, p2, p3, p2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkWrapper;Z)V
    .locals 2

    iput-boolean p2, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->needDivider:Z

    iget-object p1, p1, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkWrapper;->link:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iput-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->businessLink:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->businessLink:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->businessLink:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/Business/BusinessLinksController;->stripHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->businessLink:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->message:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->businessLink:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->entities:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->message:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->messagePreviewTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->businessLink:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->entities:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->messagePreviewTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->messagePreviewTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->businessLink:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->views:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->clicksCountTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget p2, Lorg/telegram/messenger/R$string;->NoClicks:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->clicksCountTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Clicks"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->clicksCountTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

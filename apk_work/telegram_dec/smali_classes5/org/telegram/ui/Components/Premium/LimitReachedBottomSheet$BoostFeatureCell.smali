.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoostFeatureCell"
.end annotation


# instance fields
.field public feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

.field private final imageView:Landroid/widget/ImageView;

.field public level:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

.field private final levelLayout:Landroid/widget/FrameLayout;

.field private final levelTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$9300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$9400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->imageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    invoke-static {v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x3

    const/4 v8, 0x5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    :goto_0
    or-int/lit8 v11, v5, 0x10

    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v15, 0x0

    const/16 v9, 0x18

    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v12, 0x41c00000    # 24.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setWidthWrapContent(Z)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v9, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v9, 0xe

    invoke-virtual {v4, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_1

    const/4 v7, 0x5

    :cond_1
    or-int/lit8 v13, v7, 0x10

    const/high16 v7, 0x42700000    # 60.0f

    const/high16 v8, 0x41f00000    # 30.0f

    if-eqz v10, :cond_2

    const/high16 v14, 0x41f00000    # 30.0f

    goto :goto_1

    :cond_2
    const/high16 v14, 0x42700000    # 60.0f

    :goto_1
    if-eqz v10, :cond_3

    const/high16 v16, 0x42700000    # 60.0f

    goto :goto_2

    :cond_3
    const/high16 v16, 0x41f00000    # 30.0f

    :goto_2
    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40000000    # -2.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setWidthWrapContent(Z)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    new-instance v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell$1;

    invoke-direct {v5, v0, v2, v1, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;Landroid/content/Context;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v7, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->level:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    if-eqz p2, :cond_0

    const/high16 p2, 0x42440000    # 49.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x42100000    # 36.0f

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;)V
    .locals 8

    instance-of v0, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->level:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->level:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;->isFirst:Z

    if-eqz v1, :cond_0

    const-string v1, "BoostLevelUnlocks"

    goto :goto_0

    :cond_0
    const-string v1, "BoostLevel"

    :goto_0
    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;->lvl:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_4

    :cond_1
    if-eqz p1, :cond_9

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->level:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel;

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->iconResId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKeyPlural:Ljava/lang/String;

    const/16 v1, 0x21

    const-string v4, ""

    if-eqz v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKeyPlural:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countPlural:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getStringParamForNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "LOC_ERR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKeyPlural:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_other"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    move-object p1, v4

    :cond_4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v5, "%d"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_7

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget v7, v7, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countPlural:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {p1, v4, v3, v6, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v5, 0x2

    invoke-virtual {v0, v5, v1, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_5
    iget p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->textKey:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v4, p1

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countValue:Ljava/lang/String;

    if-eqz p1, :cond_8

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "%s"

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_7

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->feature:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;->countValue:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, p1, v1, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->levelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method

.class Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TranslateAlert2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderView"
.end annotation


# instance fields
.field private arrowView:Landroid/widget/ImageView;

.field private backButton:Landroid/widget/ImageView;

.field private backgroundView:Landroid/view/View;

.field private fromLanguageTextView:Landroid/widget/TextView;

.field private shadow:Landroid/view/View;

.field private subtitleView:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lorg/telegram/ui/Components/TranslateAlert2;

.field private titleTextView:Landroid/widget/TextView;

.field private toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public static synthetic $r8$lambda$UblI6Bw1mBSi2LG49nRSYd2HcQc(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;[Ljava/lang/Runnable;Lorg/telegram/messenger/LocaleController$LocaleInfo;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$openLanguagesSelect$2([Ljava/lang/Runnable;Lorg/telegram/messenger/LocaleController$LocaleInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ckkkTX5MtIRf7qABRq_wLNI3C3w(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cxsq22VKU9G5VDQy2DY-_10K4aU(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pG-mYnJKhFzQ_XlXN6mIMCRME_k(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$openLanguagesSelect$3(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backgroundView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1100(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backgroundView:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x42300000    # 44.0f

    const/16 v6, 0x37

    const/4 v7, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1200(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1300(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    new-instance v6, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v8, 0x36

    const/high16 v9, 0x42580000    # 54.0f

    const/16 v10, 0x30

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$1;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$1;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1500(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->AutomaticTranslation:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/high16 v13, 0x41b00000    # 22.0f

    const/4 v14, 0x0

    const/4 v8, -0x1

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x37

    const/high16 v11, 0x41b00000    # 22.0f

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$2;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$2;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1700(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    if-nez v3, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1700(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "und"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLines(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v1, v11}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1800(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1700(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v3, v9, v6, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->search_arrow:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v1, v11}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1900(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v12

    invoke-direct {v6, v12, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    new-instance v3, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    :cond_3
    iget-object v12, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v18, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x15e

    const/high16 v13, 0x3e800000    # 0.25f

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v1, v11}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2300(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v5, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, 0x3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v7, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_4

    const/4 v15, 0x3

    goto :goto_0

    :cond_4
    const/4 v15, 0x0

    :goto_0
    const/16 v16, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    const/4 v15, 0x0

    const/4 v14, 0x1

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v7, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_7

    const/4 v13, 0x3

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    :goto_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x10

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    const/high16 v10, 0x41b00000    # 22.0f

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/16 v7, 0x37

    const/high16 v8, 0x41b00000    # 22.0f

    const/high16 v9, 0x422c0000    # 43.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2500(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    div-float v5, v2, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/16 v6, 0x37

    const/4 v7, 0x0

    const/high16 v8, 0x42600000    # 56.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->openLanguagesSelect()V

    return-void
.end method

.method private synthetic lambda$openLanguagesSelect$2([Ljava/lang/Runnable;Lorg/telegram/messenger/LocaleController$LocaleInfo;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x0

    aget-object p1, p1, p3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2900(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->access$3000(Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p3}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3100(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/widget/FrameLayout;

    move-result-object p3

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3202(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {p3, p2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2402(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2900(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3300(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->setToLanguage(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->translate()V

    return-void
.end method

.method private static synthetic lambda$openLanguagesSelect$3(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x429c0000    # 78.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public openLanguagesSelect()V
    .locals 14

    new-instance v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$4;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2600(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Runnable;

    invoke-static {}, Lorg/telegram/messenger/TranslateController;->getLocales()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v6, v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v7}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1700(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    const-string v7, "remote"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ne v5, v6, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2700(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v8, 0x2

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v6, v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    new-instance v6, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v2, v12}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;[Ljava/lang/Runnable;Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    invoke-virtual {v13, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x0

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v5, -0x2

    invoke-direct {v3, v0, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    new-instance v5, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    aput-object v5, v2, v4

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v2, 0xdc

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v5, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationInWindow([I)V

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    aget v1, v2, v1

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float v6, v6, v7

    int-to-float v7, v0

    sub-float/2addr v6, v7

    const/high16 v7, 0x41000000    # 8.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    sub-int/2addr v1, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2800(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;

    move-result-object v0

    aget v2, v2, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    const/16 v4, 0x33

    invoke-virtual {v3, v0, v4, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$600(Lorg/telegram/ui/Components/TranslateAlert2;)Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const v3, 0x3f59999a    # 0.85f

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/high16 v3, -0x3ec00000    # -12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v4, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    const/high16 v3, -0x3e500000    # -22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    const/high16 v3, -0x3e380000    # -25.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v0, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v0, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.class public Lorg/telegram/ui/Components/ChatBigEmptyView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private imageViews:Ljava/util/ArrayList;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private statusTextView:Landroid/widget/TextView;

.field private textViews:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    move-object/from16 v3, p4

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const-string v4, "paintChatActionBackground"

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-static {v3, v0, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v6, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x31

    const/high16 v6, 0x43520000    # 210.0f

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v8, -0x2

    if-nez v2, :cond_0

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v9, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-static {v8, v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    if-ne v2, v4, :cond_1

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    sget v6, Lorg/telegram/messenger/R$raw;->utyan_saved_messages:I

    const/16 v9, 0x78

    invoke-virtual {v5, v6, v9, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x31

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-nez v2, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->EncryptedDescriptionTitle:I

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    :cond_2
    if-ne v2, v4, :cond_3

    sget v3, Lorg/telegram/messenger/R$string;->GroupEmptyTitle2:I

    goto :goto_2

    :cond_3
    sget v6, Lorg/telegram/messenger/R$string;->ChatYourSelfTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    :goto_3
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x43820000    # 260.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v2, v10, :cond_5

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_4

    const/4 v11, 0x5

    goto :goto_4

    :cond_4
    const/4 v11, 0x3

    goto :goto_4

    :cond_5
    const/4 v11, 0x1

    :goto_4
    or-int/lit8 v14, v11, 0x30

    const/4 v11, 0x0

    if-eq v2, v10, :cond_6

    const/16 v18, 0x0

    goto :goto_5

    :cond_6
    const/16 v12, 0x8

    const/16 v18, 0x8

    :goto_5
    const/4 v12, -0x2

    const/4 v13, -0x2

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    :goto_6
    const/4 v12, 0x4

    if-ge v5, v12, :cond_1c

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_7

    const/16 v16, 0x5

    goto :goto_7

    :cond_7
    const/16 v16, 0x3

    :goto_7
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v17, 0x0

    const/16 v18, 0x8

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(I)I

    move-result v6

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v6, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-nez v2, :cond_8

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_lock_white:I

    :goto_8
    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    :cond_8
    if-ne v2, v10, :cond_9

    sget v6, Lorg/telegram/messenger/R$drawable;->list_circle:I

    goto :goto_8

    :cond_9
    sget v6, Lorg/telegram/messenger/R$drawable;->groups_overview_check:I

    goto :goto_8

    :goto_9
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_a

    const/4 v11, 0x5

    goto :goto_a

    :cond_a
    const/4 v11, 0x3

    :goto_a
    or-int/lit8 v11, v11, 0x10

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setMaxWidth(I)V

    if-eqz v5, :cond_14

    if-eq v5, v4, :cond_11

    if-eq v5, v10, :cond_e

    if-eq v5, v9, :cond_b

    goto :goto_c

    :cond_b
    if-nez v2, :cond_c

    sget v11, Lorg/telegram/messenger/R$string;->EncryptedDescription4:I

    goto :goto_b

    :cond_c
    if-ne v2, v10, :cond_d

    sget v11, Lorg/telegram/messenger/R$string;->ChatYourSelfDescription4:I

    goto :goto_b

    :cond_d
    sget v11, Lorg/telegram/messenger/R$string;->GroupDescription4:I

    goto :goto_b

    :cond_e
    if-nez v2, :cond_f

    sget v11, Lorg/telegram/messenger/R$string;->EncryptedDescription3:I

    goto :goto_b

    :cond_f
    if-ne v2, v10, :cond_10

    sget v11, Lorg/telegram/messenger/R$string;->ChatYourSelfDescription3:I

    goto :goto_b

    :cond_10
    sget v11, Lorg/telegram/messenger/R$string;->GroupDescription3:I

    goto :goto_b

    :cond_11
    if-nez v2, :cond_12

    sget v11, Lorg/telegram/messenger/R$string;->EncryptedDescription2:I

    goto :goto_b

    :cond_12
    if-ne v2, v10, :cond_13

    sget v11, Lorg/telegram/messenger/R$string;->ChatYourSelfDescription2:I

    goto :goto_b

    :cond_13
    sget v11, Lorg/telegram/messenger/R$string;->GroupDescription2:I

    goto :goto_b

    :cond_14
    if-nez v2, :cond_15

    sget v11, Lorg/telegram/messenger/R$string;->EncryptedDescription1:I

    goto :goto_b

    :cond_15
    if-ne v2, v10, :cond_16

    sget v11, Lorg/telegram/messenger/R$string;->ChatYourSelfDescription1:I

    goto :goto_b

    :cond_16
    sget v11, Lorg/telegram/messenger/R$string;->GroupDescription1:I

    :goto_b
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_19

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v2, :cond_17

    goto :goto_e

    :cond_17
    if-ne v2, v10, :cond_18

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/high16 v16, 0x41000000    # 8.0f

    const/high16 v17, 0x40e00000    # 7.0f

    :goto_d
    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v12, v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_18
    :goto_e
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/high16 v16, 0x41000000    # 8.0f

    const/high16 v17, 0x40400000    # 3.0f

    goto :goto_d

    :cond_19
    if-nez v2, :cond_1a

    goto :goto_10

    :cond_1a
    if-ne v2, v10, :cond_1b

    const/high16 v18, 0x41000000    # 8.0f

    const/16 v19, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x0

    const/high16 v17, 0x41000000    # 8.0f

    :goto_f
    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v12, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    :cond_1b
    :goto_10
    const/high16 v18, 0x41000000    # 8.0f

    const/16 v19, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x0

    const/high16 v17, 0x40800000    # 4.0f

    goto :goto_f

    :goto_11
    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v12, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_12
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_1c
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public setStatusText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

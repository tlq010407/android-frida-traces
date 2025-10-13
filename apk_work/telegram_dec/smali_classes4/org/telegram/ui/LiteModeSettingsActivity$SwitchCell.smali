.class Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LiteModeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchCell"
.end annotation


# instance fields
.field private all:I

.field private arrowView:Landroid/widget/ImageView;

.field private checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

.field private containing:Z

.field private countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private disabled:Z

.field private enabled:I

.field private imageView:Landroid/widget/ImageView;

.field private needDivider:Z

.field private needLine:Z

.field private switchView:Lorg/telegram/ui/Components/Switch;

.field private textView:Landroid/widget/TextView;

.field private textViewLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lorg/telegram/ui/LiteModeSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v9, 0x3

    const/4 v10, 0x5

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    :goto_0
    const/16 v11, 0x10

    or-int/lit8 v14, v7, 0x10

    const/high16 v17, 0x41a00000    # 20.0f

    const/16 v18, 0x0

    const/16 v12, 0x18

    const/high16 v13, 0x41c00000    # 24.0f

    const/high16 v15, 0x41a00000    # 20.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell$1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;Landroid/content/Context;Lorg/telegram/ui/LiteModeSettingsActivity;)V

    iput-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLines(I)V

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x5

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    :goto_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v12, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v1, 0x0

    invoke-direct {v12, v2, v1, v3, v3}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v18, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0xc8

    const v13, 0x3eb33333    # 0.35f

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v12, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-direct {v13, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x5

    goto :goto_2

    :cond_2
    const/4 v8, 0x3

    :goto_2
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, -0x2

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v13, 0x10

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-static/range {v13 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-static {v8, v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-static {v8, v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v5, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    const/16 v12, 0x10

    const/16 v13, 0x10

    const/16 v16, 0x2

    invoke-static/range {v12 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v5, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x5

    goto :goto_4

    :cond_4
    const/4 v8, 0x3

    :goto_4
    or-int/lit8 v14, v8, 0x10

    const/high16 v17, 0x41000000    # 8.0f

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    const/high16 v15, 0x42800000    # 64.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-virtual {v5, v8, v12, v4, v4}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v4, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto :goto_5

    :cond_5
    const/4 v5, 0x5

    :goto_5
    or-int/lit8 v14, v5, 0x10

    const/high16 v17, 0x41980000    # 19.0f

    const/16 v18, 0x0

    const/16 v12, 0x25

    const/high16 v13, 0x42480000    # 50.0f

    const/high16 v15, 0x41980000    # 19.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v5, 0x15

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v4, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v4, v2, v5, v8}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    iget-object v2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    iget-object v2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    const/4 v9, 0x5

    :cond_6
    or-int/lit8 v14, v9, 0x10

    const/high16 v4, 0x42800000    # 64.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    const/4 v15, 0x0

    goto :goto_6

    :cond_7
    const/high16 v15, 0x42800000    # 64.0f

    :goto_6
    if-eqz v2, :cond_8

    const/high16 v17, 0x42800000    # 64.0f

    goto :goto_7

    :cond_8
    const/16 v17, 0x0

    :goto_7
    const/16 v18, 0x0

    const/16 v12, 0x15

    const/high16 v13, 0x41a80000    # 21.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private preprocessFlagsCount(I)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eqz v0, :cond_2

    and-int/lit16 v0, p1, 0x1000

    if-lez v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    and-int/lit16 v0, p1, 0x2000

    if-lez v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    and-int/lit16 v0, p1, 0x4000

    if-lez v0, :cond_5

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_5

    :goto_0
    add-int/lit8 v1, v1, -0x1

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_6

    add-int/lit8 v1, v1, -0x1

    :cond_6
    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect;->supports()Z

    move-result v0

    if-nez v0, :cond_7

    const/high16 v0, 0x10000

    and-int/2addr p1, v0

    if-lez p1, :cond_7

    add-int/lit8 v1, v1, -0x1

    :cond_7
    return v1
.end method

.method private updateCount(Lorg/telegram/ui/LiteModeSettingsActivity$Item;Z)V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    move-result v1

    iget v2, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    and-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->preprocessFlagsCount(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->enabled:I

    iget p1, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->preprocessFlagsCount(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->all:I

    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->enabled:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->all:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v0

    const-string v1, "%d/%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42800000    # 64.0f

    const v2, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x42960000    # 75.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x41a00000    # 20.0f

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needLine:Z

    if-eqz v0, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v9, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v7, v9, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v8, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float v10, v0, v4

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needDivider:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v1, -0x3e000000    # -32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needLine:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v9, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v7, v9, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v8, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float v10, v0, v4

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needDivider:Z

    if-eqz v0, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float v3, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.widget.CheckBox"

    goto :goto_0

    :cond_0
    const-string v1, "android.widget.Switch"

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v1

    goto :goto_1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->containing:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->Of:I

    iget v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->enabled:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->all:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v4, v5, v0

    const-string v0, "Of"

    invoke-static {v0, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/ui/LiteModeSettingsActivity$Item;Z)V
    .locals 6

    iget v0, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    iget v5, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->iconResId:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    iget-object v5, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->getFlagsCount()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->containing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->updateCount(Lorg/telegram/ui/LiteModeSettingsActivity$Item;Z)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    iget v2, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {v2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    invoke-virtual {p1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->getFlagsCount()I

    move-result v0

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needLine:Z

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    iget v5, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {v5}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v5

    invoke-virtual {v0, v5, v3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->countTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    iget-object v2, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x42240000    # 41.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    const v5, -0x3ff33333    # -2.2f

    goto :goto_3

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_3
    mul-float v2, v2, v5

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iput-boolean v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->containing:Z

    iput-boolean v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needLine:Z

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p1, v4, :cond_6

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x40

    goto :goto_5

    :cond_5
    const/16 p1, 0x4b

    :goto_5
    add-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    goto :goto_6

    :cond_6
    const/high16 p1, 0x41000000    # 8.0f

    :goto_6
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput-boolean p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needDivider:Z

    if-nez p2, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->needLine:Z

    if-nez p1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p1

    invoke-virtual {p0, p1, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->setDisabled(ZZ)V

    return-void
.end method

.method public setDisabled(ZZ)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->disabled:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->disabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v2, 0xdc

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->textViewLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_4

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_7

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_5

    :cond_7
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_8

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_8
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_6
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method public update(Lorg/telegram/ui/LiteModeSettingsActivity$Item;)V
    .locals 5

    iget v0, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->getFlagsCount()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->containing:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->updateCount(Lorg/telegram/ui/LiteModeSettingsActivity$Item;Z)V

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    iget v1, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {v0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$200(Lorg/telegram/ui/LiteModeSettingsActivity;I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-ltz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$300(Lorg/telegram/ui/LiteModeSettingsActivity;)[Z

    move-result-object v3

    aget-boolean v0, v3, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xf0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->switchView:Lorg/telegram/ui/Components/Switch;

    iget p1, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->checkBoxView:Lorg/telegram/ui/Components/CheckBox2;

    iget p1, p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :goto_2
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p1

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->setDisabled(ZZ)V

    return-void
.end method

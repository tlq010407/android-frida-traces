.class public Lorg/telegram/ui/BlurSettingsBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# static fields
.field public static blurAlpha:F = 0.0f

.field public static blurRadius:F = 1.0f

.field public static saturation:F = 1.0f


# instance fields
.field contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    sput v1, Lorg/telegram/ui/BlurSettingsBottomSheet;->blurAlpha:F

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/telegram/ui/BlurSettingsBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v2, v0, Lorg/telegram/ui/BlurSettingsBottomSheet;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saturation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/telegram/ui/BlurSettingsBottomSheet;->saturation:F

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x5

    const/4 v9, 0x3

    if-eqz v7, :cond_1

    const/4 v7, 0x3

    goto :goto_0

    :cond_1
    const/4 v7, 0x5

    :goto_0
    or-int/lit8 v7, v7, 0x30

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto :goto_1

    :cond_2
    const/4 v7, 0x5

    :goto_1
    or-int/lit8 v12, v7, 0x30

    const/high16 v15, 0x41a80000    # 21.0f

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v13, 0x41a80000    # 21.0f

    const/high16 v14, 0x41500000    # 13.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    new-instance v10, Lorg/telegram/ui/BlurSettingsBottomSheet$1;

    invoke-direct {v10, v0, v4}, Lorg/telegram/ui/BlurSettingsBottomSheet$1;-><init>(Lorg/telegram/ui/BlurSettingsBottomSheet;Landroid/widget/TextView;)V

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    const/high16 v16, 0x40a00000    # 5.0f

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x42180000    # 38.0f

    const/4 v13, 0x0

    const/high16 v14, 0x40a00000    # 5.0f

    const/high16 v15, 0x40800000    # 4.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Alpha "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lorg/telegram/ui/BlurSettingsBottomSheet;->blurAlpha:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x3

    goto :goto_2

    :cond_3
    const/4 v10, 0x5

    :goto_2
    or-int/lit8 v10, v10, 0x30

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x3

    goto :goto_3

    :cond_4
    const/4 v10, 0x5

    :goto_3
    or-int/lit8 v13, v10, 0x30

    const/high16 v16, 0x41a80000    # 21.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v14, 0x41a80000    # 21.0f

    const/high16 v15, 0x41500000    # 13.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    new-instance v11, Lorg/telegram/ui/BlurSettingsBottomSheet$2;

    invoke-direct {v11, v0, v4}, Lorg/telegram/ui/BlurSettingsBottomSheet$2;-><init>(Lorg/telegram/ui/BlurSettingsBottomSheet;Landroid/widget/TextView;)V

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    const/high16 v17, 0x40a00000    # 5.0f

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, 0x42180000    # 38.0f

    const/4 v14, 0x0

    const/high16 v15, 0x40a00000    # 5.0f

    const/high16 v16, 0x40800000    # 4.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v11, "Blur Radius"

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto :goto_4

    :cond_5
    const/4 v5, 0x5

    :goto_4
    or-int/lit8 v5, v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_6

    const/4 v8, 0x3

    :cond_6
    or-int/lit8 v13, v8, 0x30

    const/high16 v16, 0x41a80000    # 21.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v14, 0x41a80000    # 21.0f

    const/high16 v15, 0x41500000    # 13.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    new-instance v5, Lorg/telegram/ui/BlurSettingsBottomSheet$3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/BlurSettingsBottomSheet$3;-><init>(Lorg/telegram/ui/BlurSettingsBottomSheet;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    const/high16 v16, 0x40a00000    # 5.0f

    const/4 v11, -0x1

    const/high16 v12, 0x42180000    # 38.0f

    const/4 v13, 0x0

    const/high16 v14, 0x40a00000    # 5.0f

    const/high16 v15, 0x40800000    # 4.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/BlurSettingsBottomSheet$4;

    invoke-direct {v3, v0, v7, v4, v10}, Lorg/telegram/ui/BlurSettingsBottomSheet$4;-><init>(Lorg/telegram/ui/BlurSettingsBottomSheet;Lorg/telegram/ui/Components/SeekBarView;Lorg/telegram/ui/Components/SeekBarView;Lorg/telegram/ui/Components/SeekBarView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public static onThemeApplyed()V
    .locals 3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_BlurAlpha:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    sput v1, Lorg/telegram/ui/BlurSettingsBottomSheet;->blurAlpha:F

    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/BlurSettingsBottomSheet;

    invoke-direct {v0, p0}, Lorg/telegram/ui/BlurSettingsBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

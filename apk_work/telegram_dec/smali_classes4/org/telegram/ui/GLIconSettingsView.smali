.class public Lorg/telegram/ui/GLIconSettingsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static smallStarsSize:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "Spectral top "

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v10, 0x3

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_0

    :cond_0
    const/4 v8, 0x5

    :goto_0
    or-int/lit8 v8, v8, 0x30

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x3

    goto :goto_1

    :cond_1
    const/4 v8, 0x5

    :goto_1
    or-int/lit8 v13, v8, 0x30

    const/high16 v16, 0x41a80000    # 21.0f

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v14, 0x41a80000    # 21.0f

    const/high16 v15, 0x41500000    # 13.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    new-instance v8, Lorg/telegram/ui/GLIconSettingsView$1;

    invoke-direct {v8, v0, v2}, Lorg/telegram/ui/GLIconSettingsView$1;-><init>(Lorg/telegram/ui/GLIconSettingsView;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    iget-object v8, v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->model:Lorg/telegram/ui/Components/Premium/GLIcon/Icon3D;

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x0

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    iget v8, v8, Lorg/telegram/ui/Components/Premium/GLIcon/Icon3D;->spec1:F

    div-float/2addr v8, v11

    :goto_2
    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    const/high16 v18, 0x40a00000    # 5.0f

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, 0x42180000    # 38.0f

    const/4 v15, 0x0

    const/high16 v16, 0x40a00000    # 5.0f

    const/high16 v17, 0x40800000    # 4.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "Spectral bottom "

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x3

    goto :goto_3

    :cond_3
    const/4 v8, 0x5

    :goto_3
    or-int/lit8 v8, v8, 0x30

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x3

    goto :goto_4

    :cond_4
    const/4 v8, 0x5

    :goto_4
    or-int/lit8 v15, v8, 0x30

    const/high16 v18, 0x41a80000    # 21.0f

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v16, 0x41a80000    # 21.0f

    const/high16 v17, 0x41500000    # 13.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    new-instance v8, Lorg/telegram/ui/GLIconSettingsView$2;

    invoke-direct {v8, v0, v2}, Lorg/telegram/ui/GLIconSettingsView$2;-><init>(Lorg/telegram/ui/GLIconSettingsView;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    iget-object v8, v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->model:Lorg/telegram/ui/Components/Premium/GLIcon/Icon3D;

    if-nez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    iget v8, v8, Lorg/telegram/ui/Components/Premium/GLIcon/Icon3D;->spec2:F

    div-float/2addr v8, v11

    :goto_5
    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    const/high16 v18, 0x40a00000    # 5.0f

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, 0x42180000    # 38.0f

    const/4 v15, 0x0

    const/high16 v16, 0x40a00000    # 5.0f

    const/high16 v17, 0x40800000    # 4.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "Setup spec color"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(I)V

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    const/high16 v16, 0x40800000    # 4.0f

    new-array v9, v4, [F

    aput v16, v9, v3

    invoke-static {v15, v9}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lorg/telegram/ui/GLIconSettingsView$3;

    invoke-direct {v9, v0, v1, v2}, Lorg/telegram/ui/GLIconSettingsView$3;-><init>(Lorg/telegram/ui/GLIconSettingsView;Landroid/content/Context;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v23, 0x41800000    # 16.0f

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, 0x42400000    # 48.0f

    const/16 v20, 0x10

    const/high16 v21, 0x41800000    # 16.0f

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "Diffuse "

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x3

    goto :goto_6

    :cond_6
    const/4 v9, 0x5

    :goto_6
    or-int/lit8 v9, v9, 0x30

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_7

    const/4 v9, 0x3

    goto :goto_7

    :cond_7
    const/4 v9, 0x5

    :goto_7
    or-int/lit8 v20, v9, 0x30

    const/high16 v23, 0x41a80000    # 21.0f

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/high16 v19, -0x40800000    # -1.0f

    const/high16 v21, 0x41a80000    # 21.0f

    const/high16 v22, 0x41500000    # 13.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    new-instance v9, Lorg/telegram/ui/GLIconSettingsView$4;

    invoke-direct {v9, v0, v2}, Lorg/telegram/ui/GLIconSettingsView$4;-><init>(Lorg/telegram/ui/GLIconSettingsView;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    iget-object v9, v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->model:Lorg/telegram/ui/Components/Premium/GLIcon/Icon3D;

    if-nez v9, :cond_8

    const/4 v9, 0x0

    goto :goto_8

    :cond_8
    iget v9, v9, Lorg/telegram/ui/Components/Premium/GLIcon/Icon3D;->diffuse:F

    :goto_8
    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    const/high16 v23, 0x40a00000    # 5.0f

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, 0x42180000    # 38.0f

    const/16 v20, 0x0

    const/high16 v21, 0x40a00000    # 5.0f

    const/high16 v22, 0x40800000    # 4.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "Normal map spectral"

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_9

    const/4 v9, 0x3

    goto :goto_9

    :cond_9
    const/4 v9, 0x5

    :goto_9
    or-int/lit8 v9, v9, 0x30

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_a

    const/4 v9, 0x3

    goto :goto_a

    :cond_a
    const/4 v9, 0x5

    :goto_a
    or-int/lit8 v20, v9, 0x30

    const/high16 v23, 0x41a80000    # 21.0f

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/high16 v19, -0x40800000    # -1.0f

    const/high16 v21, 0x41a80000    # 21.0f

    const/high16 v22, 0x41500000    # 13.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    new-instance v9, Lorg/telegram/ui/GLIconSettingsView$5;

    invoke-direct {v9, v0, v2}, Lorg/telegram/ui/GLIconSettingsView$5;-><init>(Lorg/telegram/ui/GLIconSettingsView;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    iget-object v9, v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->model:Lorg/telegram/ui/Components/Premium/GLIcon/Icon3D;

    if-nez v9, :cond_b

    goto :goto_b

    :cond_b
    iget v9, v9, Lorg/telegram/ui/Components/Premium/GLIcon/Icon3D;->normalSpec:F

    div-float v12, v9, v11

    :goto_b
    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    const/high16 v23, 0x40a00000    # 5.0f

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, 0x42180000    # 38.0f

    const/16 v20, 0x0

    const/high16 v21, 0x40a00000    # 5.0f

    const/high16 v22, 0x40800000    # 4.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "Setup normal spec color"

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    new-array v9, v4, [F

    aput v16, v9, v3

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lorg/telegram/ui/GLIconSettingsView$6;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/GLIconSettingsView$6;-><init>(Lorg/telegram/ui/GLIconSettingsView;Landroid/content/Context;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v23, 0x41800000    # 16.0f

    const/high16 v19, 0x42400000    # 48.0f

    const/16 v20, 0x10

    const/high16 v21, 0x41800000    # 16.0f

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "Small starts size"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x3

    goto :goto_c

    :cond_c
    const/4 v3, 0x5

    :goto_c
    or-int/lit8 v3, v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_d

    const/4 v9, 0x3

    goto :goto_d

    :cond_d
    const/4 v9, 0x5

    :goto_d
    or-int/lit8 v14, v9, 0x30

    const/high16 v17, 0x41a80000    # 21.0f

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v15, 0x41a80000    # 21.0f

    const/high16 v16, 0x41500000    # 13.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/GLIconSettingsView$7;

    invoke-direct {v1, v0}, Lorg/telegram/ui/GLIconSettingsView$7;-><init>(Lorg/telegram/ui/GLIconSettingsView;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    sget v1, Lorg/telegram/ui/GLIconSettingsView;->smallStarsSize:F

    div-float/2addr v1, v11

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x42180000    # 38.0f

    const/4 v7, 0x0

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

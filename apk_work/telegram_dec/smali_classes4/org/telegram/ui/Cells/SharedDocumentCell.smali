.class public Lorg/telegram/ui/Cells/SharedDocumentCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# instance fields
.field private TAG:I

.field private caption:Ljava/lang/CharSequence;

.field private captionTextView:Landroid/widget/TextView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private currentAccount:I

.field private dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

.field private dotSpan:Landroid/text/SpannableStringBuilder;

.field private downloadedSize:J

.field private drawDownloadIcon:Z

.field enterAlpha:F

.field private extTextView:Landroid/widget/TextView;

.field globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field ignoreRequestLayout:Z

.field private loaded:Z

.field private loading:Z

.field private message:Lorg/telegram/messenger/MessageObject;

.field private nameTextView:Landroid/widget/TextView;

.field private needDivider:Z

.field private placeholderImageView:Landroid/widget/ImageView;

.field private progressView:Lorg/telegram/ui/Components/LineProgressView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public rightDateTextView:Landroid/widget/TextView;

.field showReorderIcon:Z

.field showReorderIconProgress:F

.field private statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 28

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->drawDownloadIcon:Z

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    iput-object v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->TAG:I

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    sget-boolean v16, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v2, v4, :cond_3

    if-eqz v16, :cond_0

    const/16 v17, 0x5

    goto :goto_0

    :cond_0
    const/16 v17, 0x3

    :goto_0
    or-int/lit8 v17, v17, 0x30

    const/high16 v18, 0x41700000    # 15.0f

    if-eqz v16, :cond_1

    const/16 v19, 0x0

    goto :goto_1

    :cond_1
    const/high16 v19, 0x41700000    # 15.0f

    :goto_1
    if-eqz v16, :cond_2

    move/from16 v23, v17

    move/from16 v24, v19

    const/16 v21, 0x2a

    const/high16 v22, 0x42280000    # 42.0f

    const/high16 v25, 0x41400000    # 12.0f

    const/high16 v26, 0x41700000    # 15.0f

    goto :goto_5

    :cond_2
    const/16 v16, 0x2a

    const/high16 v18, 0x42280000    # 42.0f

    const/high16 v20, 0x41400000    # 12.0f

    goto :goto_4

    :cond_3
    if-eqz v16, :cond_4

    const/16 v17, 0x5

    goto :goto_2

    :cond_4
    const/16 v17, 0x3

    :goto_2
    or-int/lit8 v17, v17, 0x30

    if-eqz v16, :cond_5

    const/16 v19, 0x0

    goto :goto_3

    :cond_5
    const/high16 v19, 0x41400000    # 12.0f

    :goto_3
    if-eqz v16, :cond_6

    move/from16 v23, v17

    move/from16 v24, v19

    const/16 v21, 0x28

    const/high16 v22, 0x42200000    # 40.0f

    const/high16 v25, 0x41000000    # 8.0f

    const/high16 v26, 0x41400000    # 12.0f

    goto :goto_5

    :cond_6
    const/16 v16, 0x28

    const/high16 v18, 0x42200000    # 40.0f

    const/high16 v20, 0x41000000    # 8.0f

    :goto_4
    move/from16 v21, v16

    move/from16 v23, v17

    move/from16 v22, v18

    move/from16 v24, v19

    move/from16 v25, v20

    const/16 v26, 0x0

    :goto_5
    const/16 v27, 0x0

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_files_iconText:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/high16 v5, 0x41800000    # 16.0f

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    sget-boolean v20, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v2, v4, :cond_9

    if-eqz v20, :cond_7

    const/16 v21, 0x5

    goto :goto_6

    :cond_7
    const/16 v21, 0x3

    :goto_6
    or-int/lit8 v21, v21, 0x30

    if-eqz v20, :cond_8

    const/16 v22, 0x0

    goto :goto_7

    :cond_8
    const/high16 v22, 0x41a00000    # 20.0f

    :goto_7
    const/high16 v23, 0x41e00000    # 28.0f

    if-eqz v20, :cond_c

    const/high16 v20, 0x41a00000    # 20.0f

    move/from16 v23, v22

    const/high16 v24, 0x41e00000    # 28.0f

    const/high16 v25, 0x41a00000    # 20.0f

    :goto_8
    move/from16 v22, v21

    goto :goto_b

    :cond_9
    if-eqz v20, :cond_a

    const/16 v21, 0x5

    goto :goto_9

    :cond_a
    const/16 v21, 0x3

    :goto_9
    or-int/lit8 v21, v21, 0x30

    if-eqz v20, :cond_b

    const/16 v22, 0x0

    goto :goto_a

    :cond_b
    const/high16 v22, 0x41800000    # 16.0f

    :goto_a
    const/high16 v23, 0x41b00000    # 22.0f

    if-eqz v20, :cond_c

    move/from16 v23, v22

    const/high16 v24, 0x41b00000    # 22.0f

    const/high16 v25, 0x41800000    # 16.0f

    goto :goto_8

    :cond_c
    move/from16 v24, v23

    const/16 v25, 0x0

    move/from16 v23, v22

    goto :goto_8

    :goto_b
    const/16 v20, 0x20

    const/16 v26, 0x0

    const/high16 v21, -0x40000000    # -2.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Cells/SharedDocumentCell$1;

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell$1;-><init>(Lorg/telegram/ui/Cells/SharedDocumentCell;Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v2, v4, :cond_10

    if-eqz v11, :cond_d

    const/16 v16, 0x5

    goto :goto_c

    :cond_d
    const/16 v16, 0x3

    :goto_c
    or-int/lit8 v16, v16, 0x30

    if-eqz v11, :cond_e

    const/16 v17, 0x0

    goto :goto_d

    :cond_e
    const/high16 v17, 0x41800000    # 16.0f

    :goto_d
    if-eqz v11, :cond_f

    move/from16 v22, v16

    move/from16 v23, v17

    const/16 v20, 0x2a

    const/high16 v21, 0x42280000    # 42.0f

    const/high16 v24, 0x41400000    # 12.0f

    const/high16 v25, 0x41800000    # 16.0f

    goto :goto_11

    :cond_f
    move/from16 v18, v16

    move/from16 v19, v17

    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v16, 0x42280000    # 42.0f

    const/16 v17, 0x2a

    goto :goto_10

    :cond_10
    if-eqz v11, :cond_11

    const/16 v18, 0x5

    goto :goto_e

    :cond_11
    const/16 v18, 0x3

    :goto_e
    or-int/lit8 v18, v18, 0x30

    if-eqz v11, :cond_12

    const/16 v19, 0x0

    goto :goto_f

    :cond_12
    const/high16 v19, 0x41400000    # 12.0f

    :goto_f
    if-eqz v11, :cond_13

    move/from16 v22, v18

    move/from16 v23, v19

    const/16 v20, 0x28

    const/high16 v21, 0x42200000    # 40.0f

    const/high16 v24, 0x41000000    # 8.0f

    const/high16 v25, 0x41400000    # 12.0f

    goto :goto_11

    :cond_13
    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v16, 0x42200000    # 40.0f

    const/16 v17, 0x28

    :goto_10
    move/from16 v24, v11

    move/from16 v21, v16

    move/from16 v20, v17

    move/from16 v22, v18

    move/from16 v23, v19

    const/16 v25, 0x0

    :goto_11
    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v10, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_14

    const/4 v12, 0x5

    goto :goto_12

    :cond_14
    const/4 v12, 0x3

    :goto_12
    or-int/lit8 v12, v12, 0x10

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v10, 0x41500000    # 13.0f

    const/4 v12, 0x0

    const/high16 v17, 0x42900000    # 72.0f

    if-ne v2, v4, :cond_17

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_15

    const/4 v11, 0x5

    goto :goto_13

    :cond_15
    const/4 v11, 0x3

    :goto_13
    or-int/lit8 v11, v11, 0x30

    if-eqz v6, :cond_16

    const/high16 v18, 0x41000000    # 8.0f

    goto :goto_14

    :cond_16
    const/high16 v18, 0x42900000    # 72.0f

    :goto_14
    const/high16 v19, 0x41100000    # 9.0f

    move/from16 v14, v18

    const/high16 v15, 0x41100000    # 9.0f

    if-eqz v6, :cond_23

    goto/16 :goto_20

    :cond_17
    if-ne v2, v9, :cond_20

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-boolean v19, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v19, :cond_18

    const/16 v20, 0x5

    goto :goto_15

    :cond_18
    const/16 v20, 0x3

    :goto_15
    or-int/lit8 v23, v20, 0x30

    if-eqz v19, :cond_19

    const/high16 v24, 0x41800000    # 16.0f

    goto :goto_16

    :cond_19
    const/high16 v24, 0x42900000    # 72.0f

    :goto_16
    if-eqz v19, :cond_1a

    const/high16 v26, 0x42900000    # 72.0f

    goto :goto_17

    :cond_1a
    const/high16 v26, 0x41800000    # 16.0f

    :goto_17
    const/16 v27, 0x0

    const/16 v21, -0x1

    const/high16 v22, -0x40000000    # -2.0f

    const/high16 v25, 0x40a00000    # 5.0f

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->rightDateTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {v0, v15}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v14, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->rightDateTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v15, -0x2

    if-nez v14, :cond_1b

    iget-object v14, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-static {v15, v15, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v14, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->rightDateTextView:Landroid/widget/TextView;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, -0x2

    const/16 v21, -0x2

    const/16 v22, 0x0

    const/16 v23, 0x4

    :goto_18
    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_19

    :cond_1b
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->rightDateTextView:Landroid/widget/TextView;

    invoke-static {v15, v15, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const/16 v25, 0x4

    const/16 v26, 0x0

    const/16 v20, -0x2

    const/16 v21, -0x2

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    goto :goto_18

    :goto_19
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_1c

    const/4 v6, 0x5

    goto :goto_1a

    :cond_1c
    const/4 v6, 0x3

    :goto_1a
    or-int/lit8 v6, v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_1d

    const/4 v11, 0x5

    goto :goto_1b

    :cond_1d
    const/4 v11, 0x3

    :goto_1b
    or-int/lit8 v22, v11, 0x30

    if-eqz v6, :cond_1e

    const/high16 v23, 0x41000000    # 8.0f

    goto :goto_1c

    :cond_1e
    const/high16 v23, 0x42900000    # 72.0f

    :goto_1c
    if-eqz v6, :cond_1f

    const/high16 v25, 0x42900000    # 72.0f

    goto :goto_1d

    :cond_1f
    const/high16 v25, 0x41000000    # 8.0f

    :goto_1d
    const/16 v26, 0x0

    const/16 v20, -0x1

    const/high16 v21, -0x40000000    # -2.0f

    const/high16 v24, 0x41f00000    # 30.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_22

    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_21

    const/4 v11, 0x5

    goto :goto_1e

    :cond_21
    const/4 v11, 0x3

    :goto_1e
    or-int/lit8 v11, v11, 0x30

    if-eqz v6, :cond_22

    const/high16 v14, 0x41000000    # 8.0f

    goto :goto_1f

    :cond_22
    const/high16 v14, 0x42900000    # 72.0f

    :goto_1f
    const/high16 v15, 0x40a00000    # 5.0f

    if-eqz v6, :cond_23

    :goto_20
    move/from16 v22, v11

    move/from16 v23, v14

    move/from16 v24, v15

    const/high16 v25, 0x42900000    # 72.0f

    goto :goto_21

    :cond_23
    move/from16 v22, v11

    move/from16 v23, v14

    move/from16 v24, v15

    const/high16 v25, 0x41000000    # 8.0f

    :goto_21
    const/16 v20, -0x1

    const/16 v26, 0x0

    const/high16 v21, -0x40000000    # -2.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_22
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v21, Lorg/telegram/messenger/R$raw;->download_arrow:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-string v22, "download_arrow"

    move-object/from16 v20, v5

    invoke-direct/range {v20 .. v26}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_startStopLoadIcon:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v11

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v11, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v5, 0x42040000    # 33.0f

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v2, v4, :cond_26

    if-eqz v11, :cond_24

    const/4 v14, 0x5

    goto :goto_23

    :cond_24
    const/4 v14, 0x3

    :goto_23
    or-int/lit8 v14, v14, 0x30

    if-eqz v11, :cond_25

    const/high16 v15, 0x41000000    # 8.0f

    goto :goto_24

    :cond_25
    const/high16 v15, 0x428c0000    # 70.0f

    :goto_24
    const/high16 v20, 0x42140000    # 37.0f

    if-eqz v11, :cond_29

    goto :goto_27

    :cond_26
    if-eqz v11, :cond_27

    const/4 v14, 0x5

    goto :goto_25

    :cond_27
    const/4 v14, 0x3

    :goto_25
    or-int/lit8 v14, v14, 0x30

    if-eqz v11, :cond_28

    const/high16 v15, 0x41000000    # 8.0f

    goto :goto_26

    :cond_28
    const/high16 v15, 0x428c0000    # 70.0f

    :goto_26
    const/high16 v20, 0x42040000    # 33.0f

    if-eqz v11, :cond_29

    :goto_27
    move/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v20

    const/high16 v25, 0x42900000    # 72.0f

    goto :goto_28

    :cond_29
    move/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v20

    const/high16 v25, 0x41000000    # 8.0f

    :goto_28
    const/16 v20, 0xe

    const/16 v26, 0x0

    const/high16 v21, 0x41600000    # 14.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_2a

    const/4 v8, 0x5

    goto :goto_29

    :cond_2a
    const/4 v8, 0x3

    :goto_29
    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {v6}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v6, v4, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v2, v4, :cond_2d

    if-eqz v8, :cond_2b

    const/4 v10, 0x5

    goto :goto_2a

    :cond_2b
    const/4 v10, 0x3

    :goto_2a
    or-int/lit8 v10, v10, 0x30

    if-eqz v8, :cond_2c

    const/high16 v11, 0x41000000    # 8.0f

    goto :goto_2b

    :cond_2c
    const/high16 v11, 0x42900000    # 72.0f

    :goto_2b
    const/high16 v14, 0x42080000    # 34.0f

    if-eqz v8, :cond_30

    goto :goto_2e

    :cond_2d
    if-eqz v8, :cond_2e

    const/4 v10, 0x5

    goto :goto_2c

    :cond_2e
    const/4 v10, 0x3

    :goto_2c
    or-int/lit8 v10, v10, 0x30

    if-eqz v8, :cond_2f

    const/high16 v11, 0x41000000    # 8.0f

    goto :goto_2d

    :cond_2f
    const/high16 v11, 0x42900000    # 72.0f

    :goto_2d
    const/high16 v14, 0x41f00000    # 30.0f

    if-eqz v8, :cond_30

    :goto_2e
    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v14

    const/high16 v25, 0x42900000    # 72.0f

    goto :goto_2f

    :cond_30
    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v14

    const/high16 v25, 0x41000000    # 8.0f

    :goto_2f
    const/16 v20, -0x1

    const/16 v26, 0x0

    const/high16 v21, -0x40000000    # -2.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_31

    const/4 v8, 0x5

    goto :goto_30

    :cond_31
    const/4 v8, 0x3

    :goto_30
    or-int/lit8 v22, v8, 0x30

    if-eqz v7, :cond_32

    const/16 v23, 0x0

    goto :goto_31

    :cond_32
    const/high16 v23, 0x42900000    # 72.0f

    :goto_31
    if-eqz v7, :cond_33

    const/high16 v25, 0x42900000    # 72.0f

    goto :goto_32

    :cond_33
    const/16 v25, 0x0

    :goto_32
    const/16 v26, 0x0

    const/16 v20, -0x1

    const/high16 v21, 0x40000000    # 2.0f

    const/high16 v24, 0x42580000    # 54.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v7, 0x15

    invoke-direct {v6, v1, v7, v3}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v7, -0x1

    invoke-virtual {v1, v7, v3, v6}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v2, v4, :cond_36

    if-eqz v3, :cond_34

    const/4 v14, 0x5

    goto :goto_33

    :cond_34
    const/4 v14, 0x3

    :goto_33
    or-int/lit8 v5, v14, 0x30

    if-eqz v3, :cond_35

    const/4 v6, 0x0

    goto :goto_34

    :cond_35
    const/high16 v6, 0x42180000    # 38.0f

    :goto_34
    const/high16 v7, 0x42100000    # 36.0f

    if-eqz v3, :cond_3a

    const/high16 v13, 0x42180000    # 38.0f

    move v15, v5

    move/from16 v16, v6

    const/high16 v17, 0x42100000    # 36.0f

    const/high16 v18, 0x42180000    # 38.0f

    goto :goto_37

    :cond_36
    if-eqz v3, :cond_37

    const/4 v14, 0x5

    goto :goto_35

    :cond_37
    const/4 v14, 0x3

    :goto_35
    or-int/lit8 v6, v14, 0x30

    if-eqz v3, :cond_38

    const/4 v7, 0x0

    goto :goto_36

    :cond_38
    const/high16 v7, 0x42040000    # 33.0f

    :goto_36
    const/high16 v8, 0x41e00000    # 28.0f

    if-eqz v3, :cond_39

    move v15, v6

    move/from16 v16, v7

    const/high16 v17, 0x41e00000    # 28.0f

    const/high16 v18, 0x42040000    # 33.0f

    goto :goto_37

    :cond_39
    move v5, v6

    move v6, v7

    const/high16 v7, 0x41e00000    # 28.0f

    :cond_3a
    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    const/16 v18, 0x0

    :goto_37
    const/16 v13, 0x18

    const/16 v19, 0x0

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v2, v9, :cond_3b

    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dotSpan:Landroid/text/SpannableStringBuilder;

    new-instance v2, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v2}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    invoke-virtual {v1, v2, v12, v4, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3b
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/SharedDocumentCell;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/SharedDocumentCell;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/SharedDocumentCell;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "paintDivider"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private updateDateView()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iget-wide v6, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->downloadedSize:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v6, v8, v0

    aput-object v7, v8, v1

    const-string v6, "%s / %s"

    invoke-static {v3, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget v6, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    if-ne v6, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;ZILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dotSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->rightDateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v7, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v8, v5, v0

    aput-object v4, v5, v1

    const-string v4, "formatDateAtTime"

    invoke-static {v4, v7, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    aput-object v4, v2, v1

    const-string v0, "%s, %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    sub-float v0, v1, v0

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v0, v0, v9

    float-to-int v7, v0

    const/4 v4, 0x0

    const/16 v8, 0x1f

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    mul-float v0, v0, v9

    float-to-int v7, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->drawDivider(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->drawDivider(Landroid/graphics/Canvas;)V

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIcon:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_4

    :cond_1
    const v3, 0x3dda740e

    if-eqz v0, :cond_2

    iget v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_2

    add-float/2addr v4, v3

    iput v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_3

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    goto :goto_1

    :cond_3
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    int-to-float v3, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->TAG:I

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->downloadedSize:J

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateDateView()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    if-gt p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/high16 p2, 0x41b00000    # 22.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p1, p2

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p2, p3, p4, p5, p1}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    iget-boolean p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    sub-int/2addr p3, p4

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    iget p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 p2, 0x42800000    # 64.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    add-int/2addr p2, v1

    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/16 :goto_1

    :cond_0
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    if-nez p2, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/high16 p1, 0x42080000    # 34.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->caption:Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result p2

    if-eqz p2, :cond_2

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->ignoreRequestLayout:Z

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->caption:Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/16 v5, 0x82

    invoke-static {v0, v1, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->ignoreRequestLayout:Z

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p1, p2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    :cond_0
    iput-wide p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->downloadedSize:J

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateDateView()V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->downloadedSize:J

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateDateView()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->ignoreRequestLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setDocument(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    move/from16 v1, p2

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    const/4 v14, 0x0

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    iput-object v11, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iput-boolean v13, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    iput-boolean v13, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    if-nez v14, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->downloadedSize:J

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/16 v15, 0x8

    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    move-object v7, v5

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    :goto_1
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_5

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v9, :cond_4

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v6, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v6, v5

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v8, :cond_c

    const-string v6, "video"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    sget v6, Lorg/telegram/messenger/R$string;->AttachVideo:I

    :goto_3
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_8
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v8, "image"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_4
    sget v6, Lorg/telegram/messenger/R$string;->AttachGif:I

    goto :goto_3

    :cond_9
    sget v6, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    goto :goto_3

    :cond_a
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v8, "audio"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget v6, Lorg/telegram/messenger/R$string;->AttachAudio:I

    goto :goto_3

    :cond_b
    sget v6, Lorg/telegram/messenger/R$string;->AttachDocument:I

    goto :goto_3

    :cond_c
    :goto_5
    if-nez v7, :cond_d

    move-object v7, v6

    :cond_d
    iget-object v8, v11, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_e
    iget-object v8, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {v6, v8, v13}, Lorg/telegram/messenger/AndroidUtilities;->getThumbForNameOrMime(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v8, 0x2e

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_f

    goto :goto_7

    :cond_f
    add-int/2addr v8, v12

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v6, 0x140

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v7, 0x28

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    if-ne v6, v4, :cond_10

    move-object v4, v5

    :cond_10
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v7, :cond_15

    if-nez v6, :cond_11

    goto/16 :goto_a

    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-nez v4, :cond_12

    const/4 v3, 0x1

    goto :goto_8

    :cond_12
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-nez v4, :cond_13

    const/4 v3, 0x1

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v11, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v6, v11, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "40_40"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_b

    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {v6, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const-string v5, "40_40"

    const-string v6, "40_40_b"

    const/4 v10, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_b

    :cond_15
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateDateView()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->caption:Ljava/lang/CharSequence;

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_19

    if-nez v1, :cond_16

    goto :goto_c

    :cond_16
    const/4 v15, 0x0

    :goto_c
    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    goto :goto_d

    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->caption:Ljava/lang/CharSequence;

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    :goto_d
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_e
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    xor-int/2addr v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    return-void
.end method

.method public setDrawDownloadIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->drawDownloadIcon:Z

    return-void
.end method

.method public setEnterAnimationAlpha(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGlobalGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 5

    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vthumb://0:"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_0
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumb://0:"

    goto :goto_0

    :goto_2
    return-void
.end method

.method public setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    goto :goto_2

    :cond_0
    iget-object v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const-string v4, ":"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vthumb://"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v5, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v6, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    invoke-virtual {v2, v5, v6, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IIZ)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thumb://"

    goto :goto_0

    :goto_1
    iget-object v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, ""

    :goto_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    const-string v5, ", "

    if-eqz v4, :cond_4

    iget v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v6, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v0

    aput-object v7, v8, v1

    const-string v0, "%dx%d"

    invoke-static {v4, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-wide v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->size:J

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-wide v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->size:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterStats()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iget-wide v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    if-nez p5, :cond_1

    iget-object p6, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-static {p1, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->getThumbForNameOrMime(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p6, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const/4 p1, 0x1

    const/4 p3, 0x0

    const/4 p6, 0x3

    if-nez p4, :cond_3

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p4, p5}, Landroid/view/View;->setAlpha(F)V

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, p5}, Landroid/view/View;->setAlpha(F)V

    iget p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    if-eq p4, p6, :cond_a

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p4, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_3
    :goto_2
    if-eqz p4, :cond_4

    iget p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    if-eq p2, p6, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string p5, "42_42"

    invoke-virtual {p2, p4, p5, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_4
    const/high16 p2, 0x42280000    # 42.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, p5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$drawable;->files_storage:I

    if-ne p5, p3, :cond_5

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationBackground:I

    :goto_3
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachIcon:I

    goto :goto_4

    :cond_5
    sget p3, Lorg/telegram/messenger/R$drawable;->files_gallery:I

    if-ne p5, p3, :cond_6

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactBackground:I

    goto :goto_3

    :cond_6
    sget p3, Lorg/telegram/messenger/R$drawable;->files_music:I

    if-ne p5, p3, :cond_7

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    goto :goto_3

    :cond_7
    sget p3, Lorg/telegram/messenger/R$drawable;->files_internal:I

    if-ne p5, p3, :cond_8

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachGalleryBackground:I

    goto :goto_3

    :cond_8
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIconBackground:I

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIcon:I

    :goto_4
    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result p3

    invoke-static {p2, p3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    invoke-direct {p0, p4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result p3

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_6
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public showReorderIcon(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIcon:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIcon:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateFileExistIcon(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    new-instance v5, Landroid/transition/Fade;

    invoke-direct {v5}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {v5, v3, v4}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    invoke-static {p0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x42900000    # 72.0f

    const/4 v5, 0x4

    const/high16 v6, 0x41000000    # 8.0f

    if-eqz v1, :cond_f

    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_f

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    iget-boolean v7, v1, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    if-nez v7, :cond_a

    iget-boolean v7, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->drawDownloadIcon:Z

    if-nez v7, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, v1, v7, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    iget v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    const/16 v8, 0xf

    if-eqz v7, :cond_2

    const/16 v7, 0xf

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_7

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v4, 0x42ac0000    # 86.0f

    if-eqz v3, :cond_5

    const/high16 v3, 0x41000000    # 8.0f

    goto :goto_3

    :cond_5
    const/high16 v3, 0x42ac0000    # 86.0f

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    const/high16 v6, 0x42ac0000    # 86.0f

    :cond_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    goto/16 :goto_a

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_d

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_b

    const/high16 v1, 0x41000000    # 8.0f

    goto :goto_5

    :cond_b
    const/high16 v1, 0x42900000    # 72.0f

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    const/high16 v4, 0x41000000    # 8.0f

    :goto_6
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_d
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    :cond_e
    :goto_7
    iget p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    goto :goto_a

    :cond_f
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_e

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_10

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_8

    :cond_10
    const/high16 v0, 0x42900000    # 72.0f

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    const/high16 v4, 0x41000000    # 8.0f

    :goto_9
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_7

    :goto_a
    return-void
.end method

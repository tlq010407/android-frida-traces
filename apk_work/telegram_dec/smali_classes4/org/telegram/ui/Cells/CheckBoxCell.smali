.class public Lorg/telegram/ui/Cells/CheckBoxCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;
    }
.end annotation


# instance fields
.field private animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final checkBox:Landroid/view/View;

.field private checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

.field private final checkBoxSize:I

.field private checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private click1Container:Landroid/view/View;

.field private click2Container:Landroid/view/View;

.field private collapseButton:Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;

.field private collapsedArrow:Landroid/view/View;

.field private final currentType:I

.field private isMultiline:Z

.field public itemId:I

.field private linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textAnimated:Z

.field private textView:Landroid/view/View;

.field private final valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 0
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 28

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput v2, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textAnimated:Z

    const/high16 v8, 0x40400000    # 3.0f

    const/16 v9, 0x13

    const/4 v10, 0x2

    const/4 v13, 0x7

    const/high16 v14, 0x41800000    # 16.0f

    const/4 v15, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v11, 0x1

    if-eqz v4, :cond_e

    new-instance v4, Lorg/telegram/ui/Cells/CheckBoxCell$1;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell$1;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v17, 0x41000000    # 8.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setRightPadding(F)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v4

    invoke-virtual {v4, v11, v11, v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eq v2, v11, :cond_1

    if-ne v2, v7, :cond_0

    goto :goto_0

    :cond_0
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_1
    invoke-direct {v0, v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    if-ne v2, v13, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-ne v2, v6, :cond_3

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x13

    const/high16 v21, 0x41e80000    # 29.0f

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v15, v15, v15, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_9

    :cond_3
    int-to-float v8, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setRightPadding(F)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x5

    goto :goto_2

    :cond_4
    const/4 v8, 0x3

    :goto_2
    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    if-ne v2, v10, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_5

    const/4 v9, 0x5

    goto :goto_3

    :cond_5
    const/4 v9, 0x3

    :goto_3
    or-int/lit8 v20, v9, 0x10

    if-eqz v8, :cond_6

    const/16 v9, 0x8

    goto :goto_4

    :cond_6
    const/16 v9, 0x1d

    :goto_4
    int-to-float v9, v9

    if-eqz v8, :cond_7

    const/16 v8, 0x1d

    goto :goto_5

    :cond_7
    const/16 v8, 0x8

    :goto_5
    int-to-float v8, v8

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v22, 0x0

    move/from16 v21, v9

    move/from16 v23, v8

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isCheckboxRound()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v16, 0x38

    goto :goto_6

    :cond_9
    const/16 v16, 0x2e

    :goto_6
    if-ne v2, v13, :cond_a

    add-int/lit8 v16, v16, 0x27

    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_b

    const/4 v9, 0x5

    goto :goto_7

    :cond_b
    const/4 v9, 0x3

    :goto_7
    or-int/lit8 v20, v9, 0x10

    if-eqz v8, :cond_c

    move v9, v3

    goto :goto_8

    :cond_c
    add-int/lit8 v9, v3, -0x11

    add-int v9, v16, v9

    :goto_8
    int-to-float v9, v9

    if-eqz v8, :cond_d

    add-int/lit8 v8, v3, -0x11

    add-int v16, v16, v8

    move/from16 v8, v16

    goto :goto_5

    :cond_d
    move v8, v3

    goto :goto_5

    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    :goto_a
    iput-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    goto/16 :goto_18

    :cond_e
    new-instance v4, Lorg/telegram/ui/Cells/CheckBoxCell$2;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell$2;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eq v2, v11, :cond_10

    if-ne v2, v7, :cond_f

    goto :goto_b

    :cond_f
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_c

    :cond_10
    :goto_b
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_c
    invoke-direct {v0, v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, v11, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-ne v2, v13, :cond_11

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-ne v2, v6, :cond_12

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x13

    const/high16 v21, 0x41e80000    # 29.0f

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v15, v15, v15, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_17

    :cond_12
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_13

    const/4 v8, 0x5

    goto :goto_d

    :cond_13
    const/4 v8, 0x3

    :goto_d
    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    if-ne v2, v10, :cond_17

    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_14

    const/4 v9, 0x5

    goto :goto_e

    :cond_14
    const/4 v9, 0x3

    :goto_e
    or-int/lit8 v20, v9, 0x10

    if-eqz v8, :cond_15

    const/16 v9, 0x8

    goto :goto_f

    :cond_15
    const/16 v9, 0x1d

    :goto_f
    int-to-float v9, v9

    if-eqz v8, :cond_16

    const/16 v8, 0x1d

    goto :goto_10

    :cond_16
    const/16 v8, 0x8

    :goto_10
    int-to-float v8, v8

    const/16 v24, 0x0

    const/16 v18, -0x1

    :goto_11
    const/high16 v19, -0x40000000    # -2.0f

    const/16 v22, 0x0

    move/from16 v21, v9

    move/from16 v23, v8

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_17

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isCheckboxRound()Z

    move-result v4

    if-eqz v4, :cond_18

    const/16 v16, 0x38

    goto :goto_12

    :cond_18
    const/16 v16, 0x2e

    :goto_12
    if-ne v2, v13, :cond_19

    add-int/lit8 v16, v16, 0x27

    :cond_19
    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isCheckboxRound()Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, -0x2

    const/16 v18, -0x2

    goto :goto_13

    :cond_1a
    const/4 v8, -0x1

    const/16 v18, -0x1

    :goto_13
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_1b

    const/4 v9, 0x5

    goto :goto_14

    :cond_1b
    const/4 v9, 0x3

    :goto_14
    or-int/lit8 v20, v9, 0x10

    if-eqz v8, :cond_1c

    move v9, v3

    goto :goto_15

    :cond_1c
    add-int/lit8 v9, v3, -0x11

    add-int v9, v16, v9

    :goto_15
    int-to-float v9, v9

    if-eqz v8, :cond_1d

    add-int/lit8 v8, v3, -0x11

    add-int v16, v16, v8

    move/from16 v8, v16

    goto :goto_16

    :cond_1d
    move v8, v3

    :goto_16
    int-to-float v8, v8

    const/16 v24, 0x0

    goto :goto_11

    :goto_17
    iget-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    goto/16 :goto_a

    :goto_18
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    if-eq v2, v11, :cond_1f

    if-ne v2, v7, :cond_1e

    goto :goto_19

    :cond_1e
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    goto :goto_1a

    :cond_1f
    :goto_19
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    :goto_1a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v11, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_20

    const/4 v8, 0x3

    goto :goto_1b

    :cond_20
    const/4 v8, 0x5

    :goto_1b
    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_21

    const/4 v8, 0x3

    goto :goto_1c

    :cond_21
    const/4 v8, 0x5

    :goto_1c
    or-int/lit8 v20, v8, 0x30

    int-to-float v8, v3

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/high16 v19, -0x40800000    # -1.0f

    move/from16 v21, v8

    move/from16 v23, v8

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isCheckboxRound()Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v4, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v9, 0x15

    invoke-direct {v4, v1, v9, v5}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    iput-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v5, v11, v15}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    iput v9, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    int-to-float v5, v9

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_22

    const/4 v6, 0x5

    :cond_22
    or-int/lit8 v6, v6, 0x30

    if-eqz v10, :cond_23

    const/4 v7, 0x0

    goto :goto_1d

    :cond_23
    move v7, v3

    :goto_1d
    int-to-float v7, v7

    if-eqz v10, :cond_30

    goto/16 :goto_23

    :cond_24
    new-instance v4, Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eq v2, v11, :cond_26

    if-ne v2, v7, :cond_25

    goto :goto_1e

    :cond_25
    const/4 v11, 0x0

    :cond_26
    :goto_1e
    invoke-direct {v4, v1, v11, v5}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

    iput-object v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    const/16 v5, 0x12

    iput v5, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    if-ne v2, v7, :cond_2a

    int-to-float v9, v5

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_27

    const/4 v6, 0x5

    :cond_27
    or-int/lit8 v6, v6, 0x10

    if-eqz v10, :cond_28

    const/4 v7, 0x0

    goto :goto_1f

    :cond_28
    move v7, v3

    :goto_1f
    int-to-float v7, v7

    const/4 v14, 0x0

    if-eqz v10, :cond_29

    :goto_20
    move v5, v9

    const/16 v9, 0x12

    goto :goto_23

    :cond_29
    move v5, v9

    const/16 v9, 0x12

    goto :goto_24

    :cond_2a
    if-ne v2, v6, :cond_2b

    int-to-float v6, v5

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x33

    const/16 v21, 0x0

    const/high16 v22, 0x41700000    # 15.0f

    move/from16 v18, v5

    move/from16 v19, v6

    :goto_21
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_26

    :cond_2b
    int-to-float v9, v5

    if-ne v2, v10, :cond_2d

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_2c

    const/4 v6, 0x5

    :cond_2c
    or-int/lit8 v20, v6, 0x30

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x41700000    # 15.0f

    move/from16 v18, v5

    move/from16 v19, v9

    goto :goto_21

    :cond_2d
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_2e

    const/4 v6, 0x5

    :cond_2e
    or-int/lit8 v6, v6, 0x30

    if-eqz v10, :cond_2f

    const/4 v7, 0x0

    goto :goto_22

    :cond_2f
    move v7, v3

    :goto_22
    int-to-float v7, v7

    if-eqz v10, :cond_29

    goto :goto_20

    :goto_23
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v18, v9

    move/from16 v22, v14

    move v5, v3

    goto :goto_25

    :cond_30
    :goto_24
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v18, v9

    move/from16 v22, v14

    const/4 v5, 0x0

    :goto_25
    int-to-float v5, v5

    const/16 v24, 0x0

    move/from16 v23, v5

    goto :goto_21

    :goto_26
    const/4 v4, 0x6

    if-ne v2, v4, :cond_31

    new-instance v2, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_folders_groups:I

    invoke-direct {v2, v0, v1, v4}, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/content/Context;I)V

    :goto_27
    iput-object v2, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapseButton:Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;

    add-int/lit8 v1, v3, -0xb

    int-to-float v1, v1

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/high16 v21, -0x40000000    # -2.0f

    const/high16 v22, -0x40000000    # -2.0f

    const v23, 0x800015

    move/from16 v24, v8

    move/from16 v26, v1

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    :cond_31
    const/16 v4, 0x8

    if-ne v2, v4, :cond_32

    new-instance v2, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;

    invoke-direct {v2, v0, v1, v15}, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/content/Context;I)V

    goto :goto_27

    :cond_32
    if-ne v2, v13, :cond_33

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v2, 0x42080000    # 34.0f

    const/high16 v3, 0x42080000    # 34.0f

    const v4, 0x800013

    const/high16 v5, 0x42600000    # 56.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_33
    :goto_28
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateTextColor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    const/16 v0, 0x11

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/CheckBoxCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateCollapseArrowTranslation()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/CheckBoxCell;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private updateCollapseArrowTranslation()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public allowMultiline()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textAnimated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public getAnimatedTextView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method public getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    return-object v0
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    return-object v0
.end method

.method public getValueTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public isCheckboxRound()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isCheckboxRound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x421c0000    # 39.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    int-to-float v1, v0

    move v3, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    sub-int/2addr v1, v0

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.CheckBox"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    const/4 v1, 0x3

    const/high16 v2, 0x42080000    # 34.0f

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, p2, v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 v0, 0x41e80000    # 29.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->isMultiline:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-eqz v0, :cond_1

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/16 :goto_3

    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isCheckboxRound()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42080000    # 34.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textAnimated:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getRightPadding()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p1, v0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    div-int/lit8 v1, p1, 0x2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapseButton:Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;

    if-eqz v6, :cond_6

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapseButton:Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v1, v6

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    const/high16 v7, 0x41000000    # 8.0f

    if-ne v1, v6, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr p1, v6

    sub-int/2addr p1, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr p1, v6

    sub-int/2addr p1, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, v1

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p2, p1

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    if-eqz p1, :cond_a

    const/high16 p2, 0x42600000    # 56.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    if-eqz p1, :cond_b

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    :cond_b
    return-void
.end method

.method public setCheckBoxColor(III)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p1, p3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    :cond_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    :goto_0
    return-void
.end method

.method public setCollapseButton(ZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapseButton:Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;->set(ZLjava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapseButton:Lorg/telegram/ui/Cells/CheckBoxCell$CollapseButton;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setCollapsed(Ljava/lang/Boolean;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    const/16 v1, 0x10

    invoke-static {v1, v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateCollapseArrowTranslation()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/high16 p1, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x154

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setIcon(I)V

    return-void
.end method

.method public setMultiline(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textAnimated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->isMultiline:Z

    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->isMultiline:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, -0x1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    return-void
.end method

.method public setOnSectionsClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    if-nez v2, :cond_1

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    const/16 v3, 0x77

    invoke-static {v1, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    if-nez p2, :cond_3

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    goto :goto_2

    :cond_3
    if-nez p1, :cond_5

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    :goto_1
    const/16 v2, 0x38

    invoke-static {v2, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setPad(I)V
    .locals 2

    mul-int/lit8 p1, p1, 0x28

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int p1, p1, v0

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    if-eqz v0, :cond_1

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    return-void
.end method

.method public setSquareCheckBoxColor(III)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/CheckBoxSquare;->setColors(III)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V
    .locals 6

    .line 0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textAnimated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1, p5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p5}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p1, p3, p5}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean p4, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textAnimated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setUserOrChat(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v4, p1, Lorg/telegram/messenger/MessagesController;->telegramAntispamUserId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->ChannelAntiSpamUser:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textAnimated:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public updateTextColor()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textAnimated:Z

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->animatedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v3, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    if-eq v3, v2, :cond_1

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_1
    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    goto :goto_6

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget v3, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    if-eq v3, v2, :cond_4

    if-ne v3, v1, :cond_3

    goto :goto_2

    :cond_3
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_3

    :cond_4
    :goto_2
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_3
    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->linksTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget v3, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    if-eq v3, v2, :cond_6

    if-ne v3, v1, :cond_5

    goto :goto_4

    :cond_5
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    goto :goto_5

    :cond_6
    :goto_4
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    :goto_5
    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    iget v3, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    if-eq v3, v2, :cond_8

    if-ne v3, v1, :cond_7

    goto :goto_7

    :cond_7
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    goto :goto_8

    :cond_8
    :goto_7
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    :goto_8
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

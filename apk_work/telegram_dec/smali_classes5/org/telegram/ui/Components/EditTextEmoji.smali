.class public Lorg/telegram/ui/Components/EditTextEmoji;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;
    }
.end annotation


# instance fields
.field adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

.field private allowAnimatedEmoji:Z

.field private allowEmojisForNonPremium:Z

.field private currentStyle:I

.field private destroyed:Z

.field private editText:Lorg/telegram/ui/Components/EditTextCaption;

.field private emojiButton:Landroid/widget/ImageView;

.field public emojiExpanded:Z

.field private emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private emojiViewAlpha:F

.field private emojiViewCacheType:I

.field private emojiViewVisible:Z

.field private formatOptions:Lorg/telegram/ui/Components/ItemOptions;

.field public includeNavigationBar:Z

.field private innerTextChange:I

.field private isAnimatePopupClosing:Z

.field private isPaused:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardVisible:Z

.field private lastEmojiExpanded:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private openKeyboardRunnable:Ljava/lang/Runnable;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showKeyboardOnResume:Z

.field private shownFormatButton:Z

.field private sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private waitingForKeyboardOpen:Z


# direct methods
.method public static synthetic $r8$lambda$7jQ_zP9v6GXOCX7eMj8lK9XgoDI(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->lambda$showPopup$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8LhCpvUmLdox9J2jeH7GZMjlWno(Lorg/telegram/ui/Components/EditTextEmoji;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->lambda$hidePopup$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BuNHRsGwIJRmrzwqwjQkbbp551M(Lorg/telegram/ui/Components/EditTextEmoji;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextEmoji;->lambda$new$0(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V
    .locals 7

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    new-instance v6, Lorg/telegram/ui/Components/EditTextEmoji$1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/EditTextEmoji$1;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x2

    iput v6, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewCacheType:I

    move/from16 v7, p5

    iput-boolean v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->allowAnimatedEmoji:Z

    iput-object v4, v0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput v3, v0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v7, v0, v8}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    move-object/from16 v7, p3

    iput-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object v2, v0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    new-instance v7, Lorg/telegram/ui/Components/EditTextEmoji$2;

    invoke-direct {v7, v0, v1, v4, v3}, Lorg/telegram/ui/Components/EditTextEmoji$2;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v7}, Landroid/widget/TextView;->getInputType()I

    move-result v8

    or-int/lit16 v8, v8, 0x4000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v7, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const v7, -0x73000001

    const/high16 v10, 0x41900000    # 18.0f

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/high16 v13, 0x41300000    # 11.0f

    const/4 v14, 0x4

    const/4 v15, 0x0

    if-nez v3, :cond_5

    iget-object v9, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v9, v5, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x5

    goto :goto_0

    :cond_0
    const/4 v9, 0x3

    :goto_0
    or-int/lit8 v9, v9, 0x10

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v9

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v5, v9, v10, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v9, 0x42200000    # 40.0f

    if-eqz v8, :cond_1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_2
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v5, v8, v15, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    const/high16 v19, 0x41300000    # 11.0f

    goto :goto_3

    :cond_3
    const/16 v19, 0x0

    :goto_3
    if-eqz v8, :cond_4

    const/16 v21, 0x0

    goto :goto_4

    :cond_4
    const/high16 v21, 0x41300000    # 11.0f

    :goto_4
    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v18, 0x13

    const/high16 v20, 0x3f800000    # 1.0f

    :goto_5
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    :cond_5
    const/16 v8, 0x13

    if-eq v3, v6, :cond_8

    if-ne v3, v12, :cond_6

    goto :goto_7

    :cond_6
    const/high16 v9, 0x41400000    # 12.0f

    iget-object v12, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v12, v5, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextHint:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v15, v8, v15, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    if-ne v3, v14, :cond_7

    const/high16 v21, 0x42400000    # 48.0f

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x13

    const/high16 v19, 0x41600000    # 14.0f

    :goto_6
    const/16 v20, 0x0

    goto :goto_5

    :cond_7
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x13

    const/high16 v19, 0x42400000    # 48.0f

    goto :goto_6

    :cond_8
    :goto_7
    iget-object v9, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v9, v5, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v9, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/Components/EditTextCaption;->setAllowTextEntitiesIntersection(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, v15}, Lorg/telegram/ui/Components/EditTextEffects;->setClipToPadding(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v10, 0x41100000    # 9.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v15, v11, v15, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const v10, 0x30ffffff

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const v10, -0xb95c15

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iput v9, v8, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v21, 0x41c00000    # 24.0f

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x13

    const/high16 v19, 0x42200000    # 40.0f

    goto/16 :goto_6

    :goto_8
    new-instance v5, Lorg/telegram/ui/Components/EditTextEmoji$3;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji$3;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    new-instance v8, Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v3, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->smiles_tab_smiles:I

    invoke-virtual {v1, v3, v15}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_9

    const/4 v9, 0x3

    goto :goto_9

    :cond_9
    const/4 v9, 0x5

    :goto_9
    or-int/lit8 v12, v9, 0x10

    const/4 v15, 0x0

    const/high16 v16, 0x40a00000    # 5.0f

    const/16 v10, 0x30

    const/high16 v11, 0x42400000    # 48.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    :goto_a
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_a
    if-eq v3, v6, :cond_d

    const/4 v1, 0x3

    if-ne v3, v1, :cond_b

    goto :goto_d

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    if-ne v3, v14, :cond_c

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v1, v3, v15}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v5, 0x30

    const/high16 v6, 0x42400000    # 48.0f

    const/16 v7, 0x35

    :goto_b
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    goto :goto_a

    :cond_c
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v1, v3, v15}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v5, 0x30

    const/high16 v6, 0x42400000    # 48.0f

    :goto_c
    const/16 v7, 0x53

    goto :goto_b

    :cond_d
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {v1, v3, v15}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v5, 0x28

    const/high16 v6, 0x42200000    # 40.0f

    goto :goto_c

    :goto_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2, v4}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Emoji:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->destroyed:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/EditTextEmoji;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing:Z

    return p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/EditTextEmoji;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/EditTextEmoji;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->innerTextChange:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EditTextEmoji;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/EmojiView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EditTextEmoji;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/ReplaceableIconDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EditTextEmoji;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->shownFormatButton:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/EditTextEmoji;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->shownFormatButton:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EditTextEmoji;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$hidePopup$1(ILandroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    int-to-float v0, p1

    div-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    if-lez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    sub-float/2addr p2, v0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->bottomPanelTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 4

    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p3, p3, v0

    if-ltz p3, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->shownFormatButton:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->formatOptions:Lorg/telegram/ui/Components/ItemOptions;

    const/4 v1, 0x0

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->hideActionMode()V

    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/high16 p2, 0x438c0000    # 280.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setMaxHeight(I)Lorg/telegram/ui/Components/ItemOptions;

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance p3, Lorg/telegram/ui/Components/MenuToItemOptions;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getOnPremiumMenuLockClickListener()Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {p3, p1, v2, v3}, Lorg/telegram/ui/Components/MenuToItemOptions;-><init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->formatOptions:Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0, p2}, Lorg/telegram/ui/Components/EmojiView;->onOpen(ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onEmojiKeyboardUpdate()V

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardInternal()V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$showPopup$2(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    int-to-float v1, v0

    div-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    if-lez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->bottomPanelTranslationY(F)V

    return-void
.end method

.method private onWindowSizeChanged()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    return-void
.end method


# virtual methods
.method public allowEmojisForNonPremium(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->allowEmojisForNonPremium:Z

    return-void
.end method

.method protected allowEntities()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

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

.method protected allowSearch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected allowSearchAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bottomPanelTranslationY(F)V
    .locals 0

    return-void
.end method

.method public closeKeyboard()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected closeParent()V
    .locals 0

    return-void
.end method

.method public collapseEmojiView()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    :cond_0
    return-void
.end method

.method protected createEmojiView()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji$6;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/EditTextEmoji;->allowAnimatedEmoji:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->allowSearch()Z

    move-result v8

    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    const/4 v2, 0x2

    const/4 v14, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    iget-object v12, p0, Lorg/telegram/ui/Components/EditTextEmoji;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v13}, Lorg/telegram/ui/Components/EditTextEmoji$6;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewCacheType:I

    iput v1, v0, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->allowEmojisForNonPremium:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->allowEmojisForNonPremium(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/EmojiView;->setForseMultiwindowLayout(Z)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/EditTextEmoji$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextEmoji$7;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDelegate(Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected customEmojiButtonDraw(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method protected drawEmojiBackground(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public emojiCacheType()I
    .locals 1

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v0

    return v0
.end method

.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public getEditText()Lorg/telegram/ui/Components/EditTextCaption;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object v0
.end method

.method public getEmojiButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getEmojiPadding()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    return v0
.end method

.method public getEmojiPaddingShown()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    return v0
.end method

.method public getEmojiView()Lorg/telegram/ui/Components/EmojiView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object v0
.end method

.method public getKeyboardHeight()I
    .locals 2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->includeNavigationBar:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideEmojiView()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->updatedEmojiExpanded()V

    :cond_2
    return-void
.end method

.method public hidePopup(Z)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    :cond_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr p1, v1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    int-to-float v1, p1

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    aput v1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing:Z

    new-instance p1, Lorg/telegram/ui/Components/EditTextEmoji$4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextEmoji$4;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->updatedEmojiExpanded()V

    :cond_5
    return-void
.end method

.method public isAnimatePopupClosing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing:Z

    return v0
.end method

.method public isKeyboardVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    return v0
.end method

.method public isPopupView(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPopupVisible()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWaitingForKeyboardOpen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->destroyed:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->removeDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    :cond_1
    return-void
.end method

.method protected onEmojiKeyboardUpdate()V
    .locals 0

    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->showKeyboardOnResume:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->showKeyboardOnResume:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWaitingForKeyboard()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected onScrollYChange(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSizeChanged(IZ)V
    .locals 5

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    const-string v2, "kbd_height_land3"

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    const-string v2, "kbd_height"

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    :goto_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->includeNavigationBar:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_6

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v3, v0, :cond_7

    :cond_6
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_7

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastEmojiExpanded:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    if-eq v0, v2, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onEmojiKeyboardUpdate()V

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastEmojiExpanded:Z

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue1:I

    const/4 v2, 0x1

    if-ne v0, p1, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->allowSearch()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_8

    if-lez p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    return-void

    :cond_a
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue1:I

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->lastSizeChangeValue2:Z

    iget-boolean p2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    if-lez p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    :cond_c
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez p1, :cond_d

    if-eq p1, p2, :cond_d

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_d

    iput v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    if-eqz p1, :cond_e

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    return-void
.end method

.method protected onWaitingForKeyboard()V
    .locals 0

    return-void
.end method

.method public openKeyboard()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method protected openKeyboardInternal()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWaitingForKeyboard()V

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->isPaused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->showKeyboardOnResume:Z

    goto :goto_2

    :cond_2
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->waitingForKeyboardOpen:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setAdjustPanLayoutHelper(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/EditTextEmoji$EditTextEmojiDelegate;)V
    .locals 0

    return-void
.end method

.method public setEmojiViewCacheType(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewCacheType:I

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iput p1, v0, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    if-nez v0, :cond_1

    const/high16 v0, 0x41300000    # 11.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x41000000    # 8.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v3, 0x42200000    # 40.0f

    if-eqz v2, :cond_2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_3
    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    return-void
.end method

.method public setSizeNotifierLayout(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->removeDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    return-void
.end method

.method public setSuggestionsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    if-nez p1, :cond_0

    const/high16 p1, 0x80000

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const p1, -0x80001

    and-int/2addr p1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showPopup(I)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    iget-object v4, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget v5, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    const/high16 v6, 0x43160000    # 150.0f

    const/high16 v7, 0x43480000    # 200.0f

    if-gtz v5, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_1
    iput v5, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    goto :goto_2

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const-string v9, "kbd_height"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    :cond_2
    :goto_2
    iget v5, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    if-gtz v5, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_3
    iput v5, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    goto :goto_4

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const-string v8, "kbd_height_land3"

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_3

    :cond_4
    :goto_4
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-le v6, v5, :cond_5

    iget v5, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeightLand:I

    goto :goto_5

    :cond_5
    iget v5, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardHeight:I

    :goto_5
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EditTextEmoji;->includeNavigationBar:Z

    if-eqz v6, :cond_6

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    add-int/2addr v5, v6

    iget-boolean v6, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    if-eqz v6, :cond_7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v4, :cond_8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v4, :cond_9

    iput v5, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    iget-object v4, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v5, Lorg/telegram/messenger/R$drawable;->input_keyboard:I

    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onEmojiKeyboardUpdate()V

    iget-boolean v4, p0, Lorg/telegram/ui/Components/EditTextEmoji;->keyboardVisible:Z

    if-nez v4, :cond_a

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->allowSearchAnimation()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    int-to-float p1, p1

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p1, v3, v1

    aput v0, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEmoji$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEmoji$5;-><init>(Lorg/telegram/ui/Components/EditTextEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_9

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iput v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->bottomPanelTranslationY(F)V

    goto :goto_9

    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_d

    iget v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    if-nez v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v4, Lorg/telegram/messenger/R$drawable;->smiles_tab_smiles:I

    :goto_7
    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    sget v4, Lorg/telegram/messenger/R$drawable;->input_smile:I

    goto :goto_7

    :cond_d
    :goto_8
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v2, :cond_f

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewVisible:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onEmojiKeyboardUpdate()V

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v2, :cond_e

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    iput v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v2, :cond_11

    if-nez p1, :cond_10

    iput v1, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiPadding:I

    iput v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiViewAlpha:F

    :cond_10
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onWindowSizeChanged()V

    :cond_11
    :goto_9
    return-void
.end method

.method public updateColors()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->currentStyle:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextHint:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const v1, -0x73000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const v2, 0x30ffffff

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iput v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelIcons:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->updateColors()V

    :cond_3
    return-void
.end method

.method protected updatedEmojiExpanded()V
    .locals 0

    return-void
.end method

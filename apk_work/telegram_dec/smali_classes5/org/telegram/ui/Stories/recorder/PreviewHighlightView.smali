.class public Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final bottom:Landroid/widget/FrameLayout;

.field private currentAccount:I

.field private shownBottom:Z

.field private shownTop:Z

.field private storiesCount:I

.field private final storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

.field private final top:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->storiesCount:I

    const/4 v4, 0x0

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownTop:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownBottom:Z

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->currentAccount:I

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView$1;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView$1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->top:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)V

    iget-object v8, v7, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/BackupImageView;->getAvatarDrawable()Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v8

    invoke-virtual {v8, v2, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    iget-object v2, v7, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getAvatarDrawable()Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v7, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, v7, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    sget v2, Lorg/telegram/messenger/R$string;->RightNow:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, -0x1

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x37

    const/4 v11, 0x0

    const/high16 v12, 0x41880000    # 17.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v15, 0x41400000    # 12.0f

    const/16 v16, 0x0

    const/16 v10, 0x28

    const/high16 v11, 0x42200000    # 40.0f

    const/16 v12, 0x35

    const/high16 v13, 0x41400000    # 12.0f

    const/high16 v14, 0x41700000    # 15.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x40000000    # -2.0f

    const/4 v5, -0x1

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->bottom:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v9, p3

    invoke-direct {v7, v8, v9}, Lorg/telegram/ui/Stories/StoryCaptionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iput-boolean v3, v7, Lorg/telegram/ui/Stories/StoryCaptionView;->disableTouches:Z

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v4}, Landroid/view/View;->setTranslationY(F)V

    const/4 v13, 0x0

    const/high16 v14, 0x42800000    # 64.0f

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/16 v10, 0x57

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v14, 0x41400000    # 12.0f

    const/high16 v15, 0x41800000    # 16.0f

    const/16 v9, 0x1c

    const/high16 v10, 0x41e00000    # 28.0f

    const/16 v11, 0x55

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v9, -0x1000000

    const/16 v10, 0x7a

    invoke-static {v9, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v7, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const v3, 0x64ffffff

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lorg/telegram/messenger/R$string;->ReplyPrivately:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41c00000    # 24.0f

    const/4 v15, 0x0

    const/4 v9, -0x2

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x13

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->input_attach:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v14, 0x41100000    # 9.0f

    const/16 v9, 0x1c

    const/high16 v10, 0x41e00000    # 28.0f

    const/16 v11, 0x15

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, 0x425c0000    # 55.0f

    const/high16 v13, 0x41000000    # 8.0f

    const/4 v7, -0x1

    const/high16 v8, 0x42300000    # 44.0f

    const/16 v9, 0x57

    const/high16 v10, 0x41100000    # 9.0f

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->storiesCount:I

    return p0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public show(ZZLandroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownTop:Z

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownTop:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownBottom:Z

    if-ne v0, p2, :cond_2

    return-void

    :cond_2
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->shownBottom:Z

    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->top:Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->bottom:Landroid/widget/FrameLayout;

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_4
    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    return-void
.end method

.method public updateCaption(Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setText(Ljava/lang/CharSequence;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;ZZ)V

    return-void
.end method

.method public updateCount()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getSelfStoriesCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->storiesCount:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->top:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

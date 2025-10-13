.class public Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerHeaderView"
.end annotation


# instance fields
.field public backupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private progressToUploading:F

.field radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field radialProgressPaint:Landroid/graphics/Paint;

.field storyItemHolder:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

.field private subtitleAnimator:Landroid/animation/ValueAnimator;

.field private subtitleView:[Landroid/widget/TextView;

.field public titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private uploadedTooFast:Z

.field private uploading:Z


# direct methods
.method public static synthetic $r8$lambda$YcdQEJk_j9jqRJoa-Mxe8F5-bXs(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->lambda$setSubtitle$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->storyItemHolder:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    new-instance p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x20

    const/high16 v2, 0x42000000    # 32.0f

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v8, 0x42ac0000    # 86.0f

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v5, 0x0

    const/high16 v6, 0x42580000    # 54.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v1

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v5, p2, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const/high16 v9, 0x42a60000    # 83.0f

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/4 v6, 0x0

    const/high16 v7, 0x424c0000    # 51.0f

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic access$8202(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    return p1
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$setSubtitle$0(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawUploadingProgress(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->storyItemHolder:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v5, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v5, :cond_1

    :cond_0
    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_c

    :cond_1
    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v3, :cond_3

    iget-boolean v10, v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-nez v10, :cond_3

    iput v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    iget v3, v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploading:Z

    if-nez v10, :cond_2

    iput-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploading:Z

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploading:Z

    if-eqz v3, :cond_5

    iput-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploading:Z

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgress;->getAnimatedProgress()F

    move-result v3

    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v3, v10

    if-gez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploadedTooFast:Z

    :cond_5
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploadedTooFast:Z

    if-nez v3, :cond_6

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float v10, v6, v10

    div-float/2addr v10, v5

    sub-float/2addr v3, v10

    invoke-static {v3, v9, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    :goto_1
    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-nez v11, :cond_7

    new-instance v11, Lorg/telegram/ui/Components/RadialProgress;

    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7, v8}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    :cond_7
    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v11, v8}, Lorg/telegram/ui/Components/RadialProgress;->setDiff(I)V

    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    const/high16 v12, 0x40400000    # 3.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    sub-float v14, v9, v14

    mul-float v13, v13, v14

    sub-float/2addr v12, v13

    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget v14, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v12

    float-to-int v14, v14

    iget v15, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v15, v12

    float-to-int v15, v15

    iget v8, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v12

    float-to-int v8, v8

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v13, v14, v15, v8, v2}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v10, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_8
    invoke-static {v3, v9, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    :goto_2
    invoke-virtual {v2, v3, v7}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->uploadedTooFast:Z

    if-eqz v2, :cond_9

    if-eqz v10, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress;->getAnimatedProgress()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    iget v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v6, v3

    div-float/2addr v6, v5

    sub-float/2addr v2, v6

    invoke-static {v2, v9, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    :cond_9
    if-eqz p3, :cond_c

    const/high16 v2, 0x437f0000    # 255.0f

    cmpl-float v3, p4, v9

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    invoke-static {v11, v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v3

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    mul-float v4, v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RadialProgress;->setPaint(Landroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_b

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    mul-float v2, v2, p4

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->progressToUploading:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgress;->setPaint(Landroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    return-void
.end method

.method public setOnSubtitleClick(Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const p1, 0x30ffffff

    const/4 v1, 0x7

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v3

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object v1, p2, v3

    aget-object p2, p2, v4

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v3

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v3

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v3

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v4

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p1, p1, v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p1, p1, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p1, p1, v4

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$3;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x154

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v4

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p2, p2, v4

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p1, p1, v3

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->subtitleView:[Landroid/widget/TextView;

    aget-object p1, p1, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

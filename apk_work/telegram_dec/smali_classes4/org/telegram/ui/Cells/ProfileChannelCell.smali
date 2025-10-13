.class public abstract Lorg/telegram/ui/Cells/ProfileChannelCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;
    }
.end annotation


# instance fields
.field public final dialogCell:Lorg/telegram/ui/Cells/DialogCell;

.field private final headerView:Landroid/widget/TextView;

.field private loading:Z

.field private loadingAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private set:Z

.field private final subscribersView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x140

    invoke-direct {v1, v2, v3, v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JLandroid/animation/TimeInterpolator;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileChannelCell;->set:Z

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    iput-object v14, v0, Lorg/telegram/ui/Cells/ProfileChannelCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v21, 0x41b00000    # 22.0f

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v18, 0x37

    const/high16 v19, 0x41b00000    # 22.0f

    const v20, 0x4184cccd    # 16.6f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileChannelCell;->headerView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v3, Lorg/telegram/messenger/R$string;->ProfileChannel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x33

    const/4 v13, -0x2

    invoke-static {v13, v13, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-direct {v10, v15}, Lorg/telegram/ui/Components/ClickableAnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Cells/ProfileChannelCell;->subscribersView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xa5

    const v3, 0x3e99999a    # 0.3f

    move-object v2, v10

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const v2, 0x408a8f5c    # 4.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v10, v3, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    const/4 v2, 0x3

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v17, 0x11

    const/16 v18, 0x33

    const/16 v19, 0x4

    const/16 v20, 0x2

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Cells/DialogCell;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v9, v2

    move-object v11, v15

    const/4 v5, -0x2

    move v13, v4

    move-object v4, v14

    move v14, v3

    move-object v3, v15

    move-object v15, v4

    invoke-direct/range {v9 .. v15}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Lorg/telegram/ui/Cells/ProfileChannelCell$1;

    move-object/from16 v7, p1

    invoke-direct {v6, v0, v7, v3}, Lorg/telegram/ui/Cells/ProfileChannelCell$1;-><init>(Lorg/telegram/ui/Cells/ProfileChannelCell;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    const/16 v3, 0xf

    iput v3, v2, Lorg/telegram/ui/Cells/DialogCell;->avatarStart:I

    const/16 v3, 0x53

    iput v3, v2, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    const/4 v3, -0x1

    const/16 v6, 0x57

    invoke-static {v3, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileChannelCell;->updateColors()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const/high16 v5, 0x3fa00000    # 1.25f

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(II)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loading:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    iget v4, v4, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    const v5, 0x423951ec    # 46.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    iget v2, v2, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    iget v4, v4, Lorg/telegram/ui/Cells/DialogCell;->messagePaddingStart:I

    add-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3eb851ec    # 0.36f

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    const v5, 0x4280a8f6    # 64.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x422c0000    # 43.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v4, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    const v5, 0x41a2a3d7    # 20.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const v0, 0x42e751ec    # 115.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public abstract processColor(I)I
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    iget-boolean v7, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->set:Z

    const/4 v8, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->subscribersView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->subscribersView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->subscribersView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const v4, 0x3f4ccccd    # 0.8f

    if-eqz v1, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const v5, 0x3f4ccccd    # 0.8f

    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const v2, 0x3f4ccccd    # 0.8f

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1a4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    :cond_5
    if-eqz v1, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->subscribersView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v1, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->subscribersView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v1, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_8
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    :goto_6
    if-eqz p1, :cond_c

    new-array v1, v8, [I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    aput v2, v1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_9
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->subscribersView:Lorg/telegram/ui/Components/AnimatedTextView;

    aget v4, v1, v0

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "Subscribers"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v0

    const-string v1, "%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    if-nez p2, :cond_a

    const/4 v0, 0x1

    :cond_a
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loading:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_8
    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    iget-object p1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v5, 0x0

    move-object v3, p2

    goto :goto_8

    :cond_c
    :goto_9
    if-nez v7, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loading:Z

    invoke-virtual {p1, p2, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v8, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->set:Z

    return-void
.end method

.method public updateColors()V
    .locals 5

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ProfileChannelCell;->processColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->subscribersView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->subscribersView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-static {v3, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->headerView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

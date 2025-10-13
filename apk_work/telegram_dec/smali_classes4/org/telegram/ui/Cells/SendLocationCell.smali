.class public Lorg/telegram/ui/Cells/SendLocationCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private currentAccount:I

.field private dialogId:J

.field private imageView:Landroid/widget/ImageView;

.field private invalidateRunnable:Ljava/lang/Runnable;

.field private live:Z

.field private liveDisable:Z

.field private final progress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final progressAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final progressScale:Lorg/telegram/ui/Components/AnimatedFloat;

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field public useDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Cells/SendLocationCell$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/SendLocationCell$1;-><init>(Lorg/telegram/ui/Cells/SendLocationCell;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x15e

    invoke-direct {v2, v0, v3, v4, v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v2, v0, v3, v4, v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->progressAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v2, v0, v3, v4, v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->progressScale:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v3, 0x1

    const/4 v10, 0x0

    invoke-direct {v2, v10, v3, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x140

    const v4, 0x3e99999a    # 0.3f

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    move-object/from16 v2, p4

    iput-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v2, p2

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->live:Z

    move/from16 v2, p3

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->liveDisable:Z

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eqz v3, :cond_0

    const/4 v6, 0x5

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    :goto_0
    const/16 v7, 0x10

    or-int/lit8 v13, v6, 0x10

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    const/high16 v14, 0x41500000    # 13.0f

    :goto_1
    if-eqz v3, :cond_2

    const/high16 v16, 0x41500000    # 13.0f

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    const/16 v17, 0x0

    const/16 v11, 0x2e

    const/high16 v12, 0x42380000    # 46.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    goto :goto_3

    :cond_3
    const/4 v3, 0x3

    :goto_3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_4

    const/4 v6, 0x5

    goto :goto_4

    :cond_4
    const/4 v6, 0x3

    :goto_4
    or-int/lit8 v13, v6, 0x30

    const/high16 v6, 0x42920000    # 73.0f

    const/high16 v7, 0x41800000    # 16.0f

    if-eqz v3, :cond_5

    const/high16 v14, 0x41800000    # 16.0f

    goto :goto_5

    :cond_5
    const/high16 v14, 0x42920000    # 73.0f

    :goto_5
    if-eqz v3, :cond_6

    const/high16 v16, 0x42920000    # 73.0f

    goto :goto_6

    :cond_6
    const/high16 v16, 0x41800000    # 16.0f

    :goto_6
    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x41a00000    # 20.0f

    const v15, 0x411547ae    # 9.33f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    goto :goto_7

    :cond_7
    const/4 v2, 0x3

    :goto_7
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    const/4 v4, 0x5

    :cond_8
    or-int/lit8 v13, v4, 0x30

    if-eqz v2, :cond_9

    const/high16 v14, 0x41800000    # 16.0f

    goto :goto_8

    :cond_9
    const/high16 v14, 0x42920000    # 73.0f

    :goto_8
    if-eqz v2, :cond_a

    const/high16 v16, 0x42920000    # 73.0f

    goto :goto_9

    :cond_a
    const/high16 v16, 0x41800000    # 16.0f

    :goto_9
    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v15, 0x42040000    # 33.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/SendLocationCell;->updateImage()V

    invoke-virtual {v0, v10}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/SendLocationCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SendLocationCell;->checkText()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/SendLocationCell;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/SendLocationCell;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private checkText()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->liveDisable:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->StopLiveLocation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    if-eqz v2, :cond_0

    int-to-long v2, v2

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v2, v0

    :goto_0
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatLocationUpdateDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->SharingLiveLocation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SharingLiveLocationAdd:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->SendLiveLocation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SendLiveLocationInfo:I

    goto :goto_1

    :goto_2
    return-void
.end method

.method private getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private updateImage()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->live:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->liveDisable:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationText:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationText:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->live:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->liveDisable:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationText:I

    goto :goto_1

    :cond_3
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationText:I

    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->live:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->liveDisable:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    goto :goto_3

    :cond_4
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationBackground:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationIcon:I

    :goto_2
    add-int/2addr v1, v2

    goto :goto_3

    :cond_5
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationBackground:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationIcon:I

    goto :goto_2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/SendLocationCell;->live:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/SendLocationCell;->liveDisable:Z

    if-eqz v2, :cond_6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    goto :goto_4

    :cond_6
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationBackground:I

    goto :goto_4

    :cond_7
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationBackground:I

    :goto_4
    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/SendLocationCell;->getThemedColor(I)I

    move-result v2

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SendLocationCell;->live:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SendLocationCell;->liveDisable:Z

    if-eqz v3, :cond_8

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    goto :goto_5

    :cond_8
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationBackground:I

    goto :goto_5

    :cond_9
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationBackground:I

    :goto_5
    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/SendLocationCell;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/SendLocationCell;->live:Z

    if-eqz v2, :cond_b

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    new-instance v2, Lorg/telegram/ui/Components/ShareLocationDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/Cells/SendLocationCell;->liveDisable:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x5

    goto :goto_6

    :cond_a
    const/4 v4, 0x4

    :goto_6
    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/ShareLocationDrawable;-><init>(Landroid/content/Context;I)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationIcon:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Cells/SendLocationCell;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->liveDisable:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->pin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationIcon:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Cells/SendLocationCell;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    :goto_7
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->useDivider:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "paintDivider"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x42920000    # 73.0f

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    move v3, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v9

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sub-int/2addr v1, v2

    int-to-float v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v11, v1

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->liveDisable:Z

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v12

    if-eqz v11, :cond_4

    iget v2, v11, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    if-lt v2, v12, :cond_4

    iget v3, v11, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_4

    sub-int/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v11, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->progressAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    :goto_2
    move v8, v1

    move v9, v2

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->progressAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    goto :goto_2

    :goto_3
    cmpg-float v1, v9, v10

    if-gtz v1, :cond_5

    return-void

    :cond_5
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x422c0000    # 43.0f

    const/high16 v10, 0x41500000    # 13.0f

    const/high16 v3, 0x41700000    # 15.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v6, v13

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v13, v3

    invoke-virtual {v1, v5, v6, v2, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v6, v13

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v13, v3

    invoke-virtual {v1, v2, v5, v6, v13}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v1, 0x3f19999a    # 0.6f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v1, v13, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_liveLocationProgress:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SendLocationCell;->getThemedColor(I)I

    move-result v14

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v15

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    int-to-float v6, v15

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v6

    mul-float v2, v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object/from16 v1, p1

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    mul-float v6, v17, v9

    float-to-int v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    const/high16 v3, -0x3c4c0000    # -360.0f

    mul-float v4, v1, v3

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_radialProgress2Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v11, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v2, v11, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    sub-int/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->formatLocationLeftTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->progressScale:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x4

    if-le v1, v3, :cond_8

    const/high16 v13, 0x3f400000    # 0.75f

    goto :goto_5

    :cond_8
    const/4 v3, 0x3

    if-le v1, v3, :cond_9

    const v13, 0x3f59999a    # 0.85f

    :cond_9
    :goto_5
    invoke-virtual {v2, v13}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v9, v9, v2

    float-to-int v2, v9

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Cells/SendLocationCell;->rect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v1, v3, v2, v5, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Cells/SendLocationCell;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->dialogId:J

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->live:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SendLocationCell;->checkText()V

    :cond_0
    return-void
.end method

.method public setHasLocation(Z)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->live:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SendLocationCell;->checkText()V

    :cond_4
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

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

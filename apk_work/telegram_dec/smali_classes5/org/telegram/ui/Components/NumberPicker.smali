.class public Lorg/telegram/ui/Components/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;,
        Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;,
        Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;,
        Lorg/telegram/ui/Components/NumberPicker$Formatter;,
        Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
    }
.end annotation


# static fields
.field private static final interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;


# instance fields
.field private SELECTOR_MIDDLE_ITEM_INDEX:I

.field private SELECTOR_WHEEL_ITEM_COUNT:I

.field private accessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

.field private allItemsCount:Ljava/lang/Integer;

.field private drawDividers:Z

.field private mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFantomValue:I

.field private mFlingScroller:Lorg/telegram/ui/Components/Scroller;

.field private mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mInputText:Landroid/widget/TextView;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxValueSet:Z

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMinHeight:I

.field private mMinValue:I

.field private mMinValueSet:Z

.field private mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

.field private mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectionDivider:Landroid/graphics/Paint;

.field private mSelectionDividerHeight:I

.field private mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;

.field private mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSolidColor:I

.field private mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelSetting:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textOffset:I

.field private thisGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(FFFF)V

    sput-object v0, Lorg/telegram/ui/Components/NumberPicker;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    const/4 p1, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->drawDividers:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/NumberPicker;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    int-to-float p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    const/16 v0, 0x12

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/NumberPicker;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$280(Lorg/telegram/ui/Components/NumberPicker;I)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/NumberPicker;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$480(Lorg/telegram/ui/Components/NumberPicker;I)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/NumberPicker;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/NumberPicker;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v0, p1, v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    :cond_0
    aput v0, p1, v2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    aget-object v1, v2, v1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    const/4 v4, 0x0

    const/16 v6, 0x320

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v2, 0x0

    if-lez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    goto :goto_1

    :cond_0
    const v3, 0x7fffffff

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValueSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr p1, v0

    rem-int/2addr p1, v2

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValueSet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_1

    sub-int/2addr v0, p1

    rem-int/2addr v0, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSolidColor:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/NumberPicker;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividersDistance:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v4, 0x43340000    # 180.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    if-eq v4, v1, :cond_1

    if-eq v2, v1, :cond_1

    if-gt v4, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    iput-boolean v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mComputeMaxWidth:Z

    new-instance v2, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;-><init>(Lorg/telegram/ui/Components/NumberPicker;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/NumberPicker;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinimumFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaximumFlingVelocity:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    sget-object v4, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    new-instance v0, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v0, Lorg/telegram/ui/Components/NumberPicker$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/NumberPicker$1;-><init>(Lorg/telegram/ui/Components/NumberPicker;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->accessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    mul-int v1, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    :cond_0
    aput v3, v0, v2

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;->onValueChange(Lorg/telegram/ui/Components/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;->onScrollStateChange(Lorg/telegram/ui/Components/NumberPicker;I)V

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_3
    return-void
.end method

.method private onScrollerFinished(Lorg/telegram/ui/Components/Scroller;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lorg/telegram/ui/Components/NumberPicker;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$100(Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    if-ge p1, p0, :cond_2

    const/high16 p0, 0x1000000

    or-int/2addr p0, p1

    :cond_2
    :goto_0
    const/high16 p1, -0x1000000

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFantomValue:I

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    sub-int v1, v0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/NumberPicker;->notifyChange(II)V

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;->onScrollStateChange(Lorg/telegram/ui/Components/NumberPicker;I)V

    :cond_4
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/Components/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    goto :goto_3

    :cond_4
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    float-to-int v3, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    goto :goto_4

    :cond_7
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected changeValueByOne(Z)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/4 v4, 0x0

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    iget v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    const/4 v10, 0x0

    const/16 v12, 0x12c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->onScrollerFinished(Lorg/telegram/ui/Components/Scroller;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    mul-int v0, v0, v1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_3

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_8

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_8

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_8

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_7

    if-ne v0, v2, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    :cond_7
    return v3

    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method protected getContentDescription(I)Ljava/lang/CharSequence;
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lorg/telegram/ui/Components/NumberPicker;->thisGravity:I

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    :goto_0
    iget v2, v0, Lorg/telegram/ui/Components/NumberPicker;->textOffset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v2, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    array-length v10, v6

    if-ge v9, v10, :cond_8

    aget v10, v6, v9

    iget-object v11, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_7

    iget v11, v0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    if-ne v9, v11, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_7

    :cond_2
    iget v11, v0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    if-le v11, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v12, v12, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    div-float/2addr v13, v4

    sub-float v13, v2, v13

    cmpg-float v11, v13, v11

    if-gez v11, :cond_3

    div-float v11, v13, v12

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v13

    div-float/2addr v11, v12

    const/4 v12, 0x0

    :goto_2
    sget-object v14, Lorg/telegram/ui/Components/NumberPicker;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v11, v15, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v11

    invoke-virtual {v14, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v11

    sub-float/2addr v15, v11

    iget-object v14, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    mul-float v15, v15, v14

    if-nez v12, :cond_4

    neg-float v15, v15

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v5, v15}, Landroid/graphics/Canvas;->translate(FF)V

    const v12, 0x3e4ccccd    # 0.2f

    mul-float v12, v12, v11

    const v14, 0x3f4ccccd    # 0.8f

    add-float/2addr v12, v14

    invoke-virtual {v7, v12, v11, v1, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    const v12, 0x3dcccccd    # 0.1f

    const/4 v13, -0x1

    cmpg-float v14, v11, v12

    if-gez v14, :cond_5

    iget-object v14, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float v3, v14

    mul-float v3, v3, v11

    div-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_5
    const/4 v14, -0x1

    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eq v14, v13, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_4
    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x3

    goto/16 :goto_1

    :cond_8
    iget-boolean v1, v0, Lorg/telegram/ui/Components/NumberPicker;->drawDividers:Z

    if-eqz v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    iget v2, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v2, v1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    iget v2, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    sub-int v2, v1, v2

    int-to-float v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v4, v2

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventTime:J

    iput-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mIngonreMoveEvents:Z

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    const/4 v2, 0x1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {p0, v1, v3, v4}, Lorg/telegram/ui/Components/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v2, v0, v1}, Lorg/telegram/ui/Components/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    :cond_6
    :goto_1
    return v2

    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheel()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeFadingEdges()V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    add-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/Components/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_7

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->fling(I)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_9

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_8

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_8
    if-gez v0, :cond_a

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->ensureScrollWheelAdjusted()Z

    :cond_a
    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3
.end method

.method public scrollBy(II)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v1, p1, v1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    if-le v1, v2, :cond_0

    iput v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_0
    if-nez v0, :cond_1

    if-gez p2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v0, p1, v0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    if-ge v0, v1, :cond_1

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    :cond_2
    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->decrementSelectorIndices([I)V

    iget-boolean p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p2, p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    if-le p2, v0, :cond_2

    goto :goto_0

    :cond_3
    :goto_1
    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->incrementSelectorIndices([I)V

    iget-boolean p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p2, p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    if-ge p2, v0, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    iget p2, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p1, p1, p2

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setAllItemsCount(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->allItemsCount:Ljava/lang/Integer;

    iget-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheelSetting:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setDrawDividers(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->drawDividers:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->thisGravity:I

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method public setItemCount(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValueSet:Z

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_4

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFantomValue:I

    if-lt p1, v0, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheelSetting:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;->onScrollStateChange(Lorg/telegram/ui/Components/NumberPicker;I)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValueSet:Z

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_4

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-le p1, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFantomValue:I

    if-gt p1, v0, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheelSetting:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;->onScrollStateChange(Lorg/telegram/ui/Components/NumberPicker;I)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setSelectorColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextOffset(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->textOffset:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValueSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValueSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->allItemsCount:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v2, v0, :cond_1

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheelSetting:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    return-void
.end method

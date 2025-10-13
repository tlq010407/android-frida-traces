.class public Lorg/telegram/ui/Components/StorageUsageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StorageUsageView$ProgressView;
    }
.end annotation


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private calculating:Z

.field calculatingProgress:F

.field calculatingProgressIncrement:Z

.field calculatingTextView:Landroid/widget/TextView;

.field cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field divider:Landroid/view/View;

.field ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

.field freeSizeTextView:Landroid/widget/TextView;

.field lastProgressColor:I

.field public legendLayout:Landroid/view/ViewGroup;

.field private paintCalculcating:Landroid/graphics/Paint;

.field private paintFill:Landroid/graphics/Paint;

.field private paintProgress:Landroid/graphics/Paint;

.field private paintProgress2:Landroid/graphics/Paint;

.field progress:F

.field progress2:F

.field progressView:Lorg/telegram/ui/Components/StorageUsageView$ProgressView;

.field telegramCacheTextView:Landroid/widget/TextView;

.field telegramDatabaseTextView:Landroid/widget/TextView;

.field textSettingsCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private totalDeviceFreeSize:J

.field private totalDeviceSize:J

.field private totalSize:J

.field totlaSizeTextView:Landroid/widget/TextView;

.field valueAnimator:Landroid/animation/ValueAnimator;

.field valueAnimator2:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$MQyrrkLQezyqXYoVVNAe0fhpOIQ(Lorg/telegram/ui/Components/StorageUsageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StorageUsageView;->lambda$setStorageUsage$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qtdXgkmgFZrYs21GtTW1qvhlx9k(Lorg/telegram/ui/Components/StorageUsageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StorageUsageView;->lambda$setStorageUsage$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintFill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintCalculcating:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintProgress:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintProgress2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->bgPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/16 v2, 0xdc

    const/16 v3, 0xff

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/StorageUsageView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iput-boolean v0, v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintFill:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintCalculcating:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintProgress:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintProgress2:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintFill:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintCalculcating:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintProgress:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintProgress2:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/StorageUsageView$ProgressView;-><init>(Lorg/telegram/ui/Components/StorageUsageView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->progressView:Lorg/telegram/ui/Components/StorageUsageView$ProgressView;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/StorageUsageView$1;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Components/StorageUsageView$1;-><init>(Lorg/telegram/ui/Components/StorageUsageView;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->legendLayout:Landroid/view/ViewGroup;

    const/high16 v10, 0x41a80000    # 21.0f

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/high16 v8, 0x41a80000    # 21.0f

    const/high16 v9, 0x42200000    # 40.0f

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->calculatingTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    sget v5, Lorg/telegram/messenger/R$string;->CalculatingSize:I

    const-string v7, "CalculatingSize"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "..."

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object v9, p0, Lorg/telegram/ui/Components/StorageUsageView;->calculatingTextView:Landroid/widget/TextView;

    invoke-direct {v5, v9}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v5, v8, v7}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->wrap(Landroid/text/SpannableString;I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->calculatingTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Components/StorageUsageView;->calculatingTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->freeSizeTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->freeSizeTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->totlaSizeTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->totlaSizeTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->freeSizeTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v8, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    const/16 v9, 0x40

    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {p1, v6, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->freeSizeTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->totlaSizeTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v8, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    const/16 v9, 0x7f

    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {p1, v6, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->totlaSizeTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {p1, v5, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->legendLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/StorageUsageView;->calculatingTextView:Landroid/widget/TextView;

    const/4 v5, -0x2

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->legendLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->legendLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->legendLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/StorageUsageView;->totlaSizeTextView:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->legendLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/StorageUsageView;->freeSizeTextView:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->divider:Landroid/view/View;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/16 v9, 0x15

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->divider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->divider:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->textSettingsCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintFill:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintProgress:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StorageUsageView;->paintProgress2:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/StorageUsageView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StorageUsageView;->bgPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/StorageUsageView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/StorageUsageView;->calculating:Z

    return p0
.end method

.method private synthetic lambda$setStorageUsage$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->progress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StorageUsageView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setStorageUsage$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StorageUsageView;->progress2:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StorageUsageView;->invalidate()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 7

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->progressView:Lorg/telegram/ui/Components/StorageUsageView$ProgressView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->freeSizeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    const/16 v6, 0x40

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->freeSizeTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->totlaSizeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Components/StorageUsageView;->lastProgressColor:I

    const/16 v5, 0x7f

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->totlaSizeTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->textSettingsCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->divider:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StorageUsageView;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public setStorageUsage(ZJJJJ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    const/4 v8, 0x2

    iput-boolean v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->calculating:Z

    iput-wide v2, v0, Lorg/telegram/ui/Components/StorageUsageView;->totalSize:J

    iput-wide v4, v0, Lorg/telegram/ui/Components/StorageUsageView;->totalDeviceFreeSize:J

    iput-wide v6, v0, Lorg/telegram/ui/Components/StorageUsageView;->totalDeviceSize:J

    iget-object v9, v0, Lorg/telegram/ui/Components/StorageUsageView;->freeSizeTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->TotalDeviceFreeSize:I

    invoke-static/range {p6 .. p7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const-string v11, "TotalDeviceFreeSize"

    invoke-static {v11, v10, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/StorageUsageView;->totlaSizeTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->TotalDeviceSize:I

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v11, v13, v14

    const-string v11, "TotalDeviceSize"

    invoke-static {v11, v10, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x8

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->calculatingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->freeSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->totlaSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->divider:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->textSettingsCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->progress:F

    iput v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->progress2:F

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    if-eqz v1, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageUsageView;->calculatingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    if-eqz v1, :cond_1

    iget-object v10, v0, Lorg/telegram/ui/Components/StorageUsageView;->calculatingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->calculatingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-lez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->divider:Landroid/view/View;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->textSettingsCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->textSettingsCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v9, Lorg/telegram/messenger/R$string;->ClearTelegramCache:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p4 .. p5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->TelegramCacheSize:I

    add-long v10, v2, p2

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v10, v11, v14

    const-string v10, "TelegramCacheSize"

    invoke-static {v10, v9, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->telegramCacheTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->telegramDatabaseTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->LocalDatabaseSize:I

    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v11, v13, v14

    const-string v11, "LocalDatabaseSize"

    invoke-static {v11, v10, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->divider:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->textSettingsCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->freeSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->totlaSizeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    add-long v2, v2, p2

    long-to-float v1, v2

    long-to-float v2, v6

    div-float/2addr v1, v2

    long-to-float v3, v4

    div-float/2addr v3, v2

    iget v2, v0, Lorg/telegram/ui/Components/StorageUsageView;->progress:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/StorageUsageView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/StorageUsageView;->progress:F

    new-array v4, v8, [F

    aput v2, v4, v14

    aput v1, v4, v12

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/StorageUsageView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StorageUsageView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StorageUsageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    iget v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->progress2:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->valueAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->progress2:F

    new-array v2, v8, [F

    aput v1, v2, v14

    aput v3, v2, v12

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->valueAnimator2:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/StorageUsageView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StorageUsageView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StorageUsageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->valueAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/StorageUsageView;->textSettingsCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

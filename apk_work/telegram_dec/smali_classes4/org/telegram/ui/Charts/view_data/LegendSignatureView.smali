.class public Lorg/telegram/ui/Charts/view_data/LegendSignatureView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;
    }
.end annotation


# instance fields
.field backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public canGoZoom:Z

.field public chevron:Landroid/widget/ImageView;

.field content:Landroid/widget/LinearLayout;

.field format:Ljava/text/SimpleDateFormat;

.field format2:Ljava/text/SimpleDateFormat;

.field format3:Ljava/text/SimpleDateFormat;

.field format4:Ljava/text/SimpleDateFormat;

.field private formatterTON:Ljava/text/DecimalFormat;

.field holders:[Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;

.field hourFormat:Ljava/text/SimpleDateFormat;

.field hourTime:Landroid/widget/TextView;

.field public isTopHourChart:Z

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field shadowDrawable:Landroid/graphics/drawable/Drawable;

.field public showPercentage:Z

.field showProgressRunnable:Ljava/lang/Runnable;

.field time:Landroid/widget/TextView;

.field public useHour:Z

.field public useWeek:Z

.field public zoomEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->format:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->format2:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->format3:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->format4:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->hourFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->canGoZoom:Z

    new-instance v1, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$1;-><init>(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)V

    iput-object v1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgressRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0, v1, v2, v3, p2}, Landroid/view/View;->setPadding(IIII)V

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->time:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->time:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->hourTime:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->hourTime:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->chevron:Landroid/widget/ImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_chevron_right_black_18dp:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->content:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->time:Landroid/widget/TextView;

    const/high16 v5, 0x40800000    # 4.0f

    const v2, 0x800003

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->hourTime:Landroid/widget/TextView;

    const v2, 0x800005

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->chevron:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/16 v0, 0x12

    const/high16 v1, 0x41900000    # 18.0f

    const v2, 0x800035

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->recolor()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method private capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private formatData(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->format2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->format2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public formatWholeNumber(JIILandroid/widget/TextView;F)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "USD"

    const-string v1, "\u2248"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p3, v4, :cond_3

    if-nez p4, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->formatterTON:Ljava/text/DecimalFormat;

    const/4 p4, 0x6

    if-nez p3, :cond_0

    new-instance p3, Ljava/text/DecimalFormatSymbols;

    sget-object p6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p3, p6}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 p6, 0x2e

    invoke-virtual {p3, p6}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    new-instance p6, Ljava/text/DecimalFormat;

    const-string v0, "#.##"

    invoke-direct {p6, v0, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object p6, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->formatterTON:Ljava/text/DecimalFormat;

    invoke-virtual {p6, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    iget-object p3, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->formatterTON:Ljava/text/DecimalFormat;

    invoke-virtual {p3, p4}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    iget-object p3, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->formatterTON:Ljava/text/DecimalFormat;

    invoke-virtual {p3, v2}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->formatterTON:Ljava/text/DecimalFormat;

    const-wide/32 v0, 0x3b9aca00

    cmp-long p6, p1, v0

    if-lez p6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    :goto_0
    invoke-virtual {p3, v3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TON "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->formatterTON:Ljava/text/DecimalFormat;

    long-to-double p1, p1

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-virtual {p4, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const p3, 0x3f51eb85    # 0.82f

    invoke-static {p1, p2, p3, v2}, Lorg/telegram/ui/ChannelMonetizationLayout;->replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;FZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p4

    long-to-float p1, p1

    div-float/2addr p1, p6

    float-to-long p1, p1

    invoke-virtual {p4, p1, p2, v0}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p3, v3, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    if-nez p4, :cond_4

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "XTR "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x20

    invoke-static {p1, p2, p4}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x3f333333    # 0.7f

    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p4

    long-to-float p1, p1

    div-float/2addr p1, p6

    float-to-long p1, p1

    invoke-virtual {p4, p1, p2, v0}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    long-to-float p3, p1

    const-wide/16 p4, 0x2710

    cmp-long p6, p1, p4

    if-gez p6, :cond_6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "%d"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    const/high16 p2, 0x447a0000    # 1000.0f

    cmpl-float p4, p3, p2

    if-ltz p4, :cond_7

    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->numbersSignatureArray:[Ljava/lang/String;

    array-length p4, p4

    sub-int/2addr p4, v4

    if-ge p1, p4, :cond_7

    div-float/2addr p3, p2

    add-int/2addr p1, v4

    goto :goto_1

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    aput-object p3, p4, v2

    const-string p3, "%.2f"

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->numbersSignatureArray:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public recolor()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->time:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->hourTime:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->chevron:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartChevronColor:I

    iget-object v2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->stats_tooltip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v3, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/high16 v3, -0x1000000

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setData(IJLjava/util/ArrayList;ZIF)V
    .locals 22

    move-object/from16 v7, p0

    move-wide/from16 v0, p2

    move-object/from16 v8, p4

    move/from16 v9, p6

    iget-object v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->holders:[Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;

    array-length v10, v2

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz p5, :cond_0

    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v3, Landroid/transition/Fade;

    invoke-direct {v3, v11}, Landroid/transition/Fade;-><init>(I)V

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v6, Landroid/transition/ChangeBounds;

    invoke-direct {v6}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v6, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v6, Landroid/transition/Fade;

    invoke-direct {v6, v12}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v6, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {v2, v13}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    invoke-static {v7, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    iget-boolean v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->isTopHourChart:Z

    if-eqz v2, :cond_1

    iget-object v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->time:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v0, v1, v13

    const-string v0, "%02d:00"

    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    iget-boolean v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useWeek:Z

    if-eqz v2, :cond_2

    iget-object v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->time:Landroid/widget/TextView;

    iget-object v3, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->format4:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->format3:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    const-wide/32 v14, 0x240c8400

    add-long/2addr v14, v0

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v13

    aput-object v4, v5, v12

    const-string v3, "%s \u2014 %s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->time:Landroid/widget/TextView;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v7, v3}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->formatData(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    iget-boolean v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useHour:Z

    if-eqz v2, :cond_3

    iget-object v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->hourTime:Landroid/widget/TextView;

    iget-object v3, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->hourFormat:Ljava/text/SimpleDateFormat;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_3
    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    :goto_4
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v2, v1, p1

    add-long/2addr v5, v2

    :cond_4
    add-int/2addr v0, v12

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_5
    const/16 v0, 0x8

    if-ge v4, v10, :cond_12

    iget-object v1, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->holders:[Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;

    aget-object v3, v1, v4

    rem-int/lit8 v16, v4, 0x2

    if-eq v9, v12, :cond_7

    if-ne v9, v11, :cond_6

    goto :goto_6

    :cond_6
    move v1, v4

    goto :goto_7

    :cond_7
    :goto_6
    div-int/lit8 v1, v4, 0x2

    :goto_7
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v2, :cond_8

    iget-object v1, v3, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move v0, v4

    move-wide v14, v5

    :goto_8
    const/4 v4, 0x2

    goto/16 :goto_f

    :cond_8
    iget-object v0, v3, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v3, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_9
    iget-object v0, v3, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v3, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->value:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    iget-object v0, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v17, v0, p1

    move-object/from16 v0, p0

    move-object v14, v1

    move-object v15, v2

    move-wide/from16 v1, v17

    move-object v11, v3

    move/from16 v3, p6

    move/from16 v19, v4

    move/from16 v4, v16

    move-wide/from16 v20, v5

    move-object v5, v15

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->formatWholeNumber(JIILandroid/widget/TextView;F)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v9, v12, :cond_b

    iget-object v0, v11, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->signature:Landroid/widget/TextView;

    if-nez v16, :cond_a

    sget v1, Lorg/telegram/messenger/R$string;->ChartInTON:I

    goto :goto_9

    :cond_a
    sget v1, Lorg/telegram/messenger/R$string;->ChartInUSD:I

    :goto_9
    iget-object v2, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData$Line;->name:Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v2, v3, v13

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x2

    if-ne v9, v0, :cond_d

    iget-object v0, v11, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->signature:Landroid/widget/TextView;

    if-nez v16, :cond_c

    sget v1, Lorg/telegram/messenger/R$string;->ChartInXTR:I

    goto :goto_b

    :cond_c
    sget v1, Lorg/telegram/messenger/R$string;->ChartInUSD:I

    :goto_b
    iget-object v2, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData$Line;->name:Ljava/lang/String;

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v2, v3, v13

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f333333    # 0.7f

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_a

    :cond_d
    iget-object v0, v11, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->signature:Landroid/widget/TextView;

    iget-object v1, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->name:Ljava/lang/String;

    goto :goto_a

    :goto_c
    iget-object v0, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v0, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    if-ltz v0, :cond_e

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v11, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->value:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    iget-object v1, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    iget-object v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    :cond_e
    iget-object v0, v11, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->value:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorDark:I

    goto :goto_d

    :cond_f
    iget-object v1, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    goto :goto_d

    :goto_e
    iget-object v0, v11, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->signature:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showPercentage:Z

    if-eqz v0, :cond_11

    iget-object v0, v11, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->percentage:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v11, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->percentage:Landroid/widget/TextView;

    iget-object v2, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v2, v1, p1

    long-to-float v1, v2

    move-wide/from16 v14, v20

    long-to-float v2, v14

    div-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    const-string v3, "%"

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_10

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_10

    iget-object v2, v11, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->percentage:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v13

    aput-object v3, v6, v12

    const-string v1, "%.1f%s"

    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_10
    iget-object v2, v11, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->percentage:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v13

    aput-object v3, v6, v12

    const-string v1, "%d%s"

    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_11
    move/from16 v0, v19

    move-wide/from16 v14, v20

    goto/16 :goto_8

    :goto_f
    add-int/2addr v0, v12

    move v4, v0

    move-wide v5, v14

    const/4 v11, 0x2

    goto/16 :goto_5

    :cond_12
    move-wide v14, v5

    iget-boolean v1, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->zoomEnabled:Z

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x0

    cmp-long v3, v14, v1

    if-lez v3, :cond_13

    goto :goto_10

    :cond_13
    const/4 v12, 0x0

    :goto_10
    iput-boolean v12, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->canGoZoom:Z

    iget-object v3, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->chevron:Landroid/widget/ImageView;

    cmp-long v4, v14, v1

    if-lez v4, :cond_14

    goto :goto_11

    :cond_14
    const/16 v13, 0x8

    :goto_11
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    :cond_15
    iput-boolean v13, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->canGoZoom:Z

    iget-object v1, v7, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->chevron:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_12
    return-void
.end method

.method public setSize(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-array v0, p1, [Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->holders:[Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->holders:[Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;

    new-instance v2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;-><init>(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->content:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->holders:[Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$Holder;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseWeek(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->useWeek:Z

    return-void
.end method

.method public showProgress(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->chevron:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView$2;-><init>(Lorg/telegram/ui/Charts/view_data/LegendSignatureView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

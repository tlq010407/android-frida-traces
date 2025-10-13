.class public Lorg/telegram/ui/Components/BulletSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private final mBulletRadius:I

.field private final mColor:I

.field private final mGapWidth:I

.field private final mWantColor:Z


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method private constructor <init>(IIZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/BulletSpan;->mGapWidth:I

    iput p4, p0, Lorg/telegram/ui/Components/BulletSpan;->mBulletRadius:I

    iput p2, p0, Lorg/telegram/ui/Components/BulletSpan;->mColor:I

    iput-boolean p3, p0, Lorg/telegram/ui/Components/BulletSpan;->mWantColor:Z

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p6

    if-ne p6, p9, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p6

    iget-boolean p8, p0, Lorg/telegram/ui/Components/BulletSpan;->mWantColor:Z

    const/4 p10, 0x0

    if-eqz p8, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p8

    iget p11, p0, Lorg/telegram/ui/Components/BulletSpan;->mColor:I

    invoke-virtual {p2, p11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const/4 p8, 0x0

    :goto_0
    sget-object p11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p12, :cond_2

    invoke-virtual {p12, p9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p9

    invoke-virtual {p12}, Landroid/text/Layout;->getLineCount()I

    move-result p11

    add-int/lit8 p11, p11, -0x1

    if-eq p9, p11, :cond_1

    invoke-virtual {p12}, Landroid/text/Layout;->getSpacingAdd()F

    move-result p9

    float-to-int p10, p9

    :cond_1
    sub-int/2addr p7, p10

    :cond_2
    add-int/2addr p5, p7

    int-to-float p5, p5

    const/high16 p7, 0x40000000    # 2.0f

    div-float/2addr p5, p7

    iget p7, p0, Lorg/telegram/ui/Components/BulletSpan;->mBulletRadius:I

    mul-int p4, p4, p7

    add-int/2addr p3, p4

    int-to-float p3, p3

    int-to-float p4, p7

    invoke-virtual {p1, p3, p5, p4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/BulletSpan;->mWantColor:Z

    if-eqz p1, :cond_3

    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_4
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    iget p1, p0, Lorg/telegram/ui/Components/BulletSpan;->mBulletRadius:I

    mul-int/lit8 p1, p1, 0x2

    iget v0, p0, Lorg/telegram/ui/Components/BulletSpan;->mGapWidth:I

    add-int/2addr p1, v0

    return p1
.end method

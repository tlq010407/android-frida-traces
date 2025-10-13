.class public Lorg/telegram/ui/Components/ButtonSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;
    }
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final onClickListener:Ljava/lang/Runnable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final text:Lorg/telegram/ui/Components/Text;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ButtonSpan;->backgroundPaint:Landroid/graphics/Paint;

    iput-object p3, p0, Lorg/telegram/ui/Components/ButtonSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p2, p0, Lorg/telegram/ui/Components/ButtonSpan;->onClickListener:Ljava/lang/Runnable;

    new-instance p2, Lorg/telegram/ui/Components/Text;

    const/high16 p3, 0x41400000    # 12.0f

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ButtonSpan;->text:Lorg/telegram/ui/Components/Text;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ButtonSpan;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ButtonSpan;->onClickListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static make(Ljava/lang/CharSequence;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "btn"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/telegram/ui/Components/ButtonSpan;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ButtonSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p0

    const/4 p1, 0x0

    const/16 p2, 0x21

    invoke-virtual {v0, v1, p1, p0, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    const/high16 p2, 0x41880000    # 17.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    add-int/2addr p6, p8

    int-to-float p3, p6

    const/high16 p4, 0x40000000    # 2.0f

    div-float v3, p3, p4

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float/2addr p2, p4

    sub-float p4, v3, p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ButtonSpan;->getSize()I

    move-result p6

    int-to-float p6, p6

    add-float/2addr p6, p5

    add-float p7, v3, p2

    invoke-virtual {p3, p5, p4, p6, p7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p4, p0, Lorg/telegram/ui/Components/ButtonSpan;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-nez p4, :cond_0

    const/high16 p4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p6, 0x3ccccccd    # 0.025f

    invoke-virtual {p4, p6}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result p4

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p6

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p7

    invoke-virtual {p1, p4, p4, p6, p7}, Landroid/graphics/Canvas;->scale(FFFF)V

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object p6, p0, Lorg/telegram/ui/Components/ButtonSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, p6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iget-object p4, p0, Lorg/telegram/ui/Components/ButtonSpan;->backgroundPaint:Landroid/graphics/Paint;

    const p6, 0x3e19999a    # 0.15f

    invoke-static {v4, p6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p6

    invoke-virtual {p4, p6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p4, p0, Lorg/telegram/ui/Components/ButtonSpan;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p2, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonSpan;->text:Lorg/telegram/ui/Components/Text;

    const/high16 p2, 0x40e00000    # 7.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float v2, p5, p2

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonSpan;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ButtonSpan;->getSize()I

    move-result p1

    return p1
.end method

.method public setPressed(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonSpan;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ButtonSpan;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonSpan;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

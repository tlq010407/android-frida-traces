.class Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Business/QuickRepliesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoreSpan"
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final text:Lorg/telegram/ui/Components/Text;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/Text;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BusinessRepliesMore"

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    const v2, 0x411547ae    # 9.33f

    invoke-direct {v0, p1, v2, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;->text:Lorg/telegram/ui/Components/Text;

    return-void
.end method

.method public static of(I[I)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "+"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;-><init>(I)V

    invoke-virtual {v1}, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;->getSize()I

    move-result p0

    const/4 v2, 0x0

    aput p0, p1, v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p0

    const/16 p1, 0x21

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    const p2, 0x416a8f5c    # 14.66f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    add-int/2addr p6, p8

    int-to-float p3, p6

    const/high16 p4, 0x40000000    # 2.0f

    div-float v3, p3, p4

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float/2addr p2, p4

    sub-float p4, v3, p2

    invoke-virtual {p0}, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;->getSize()I

    move-result p6

    int-to-float p6, p6

    add-float/2addr p6, p5

    add-float/2addr p2, v3

    invoke-virtual {p3, p5, p4, p6, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;->backgroundPaint:Landroid/graphics/Paint;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p6

    const p7, 0x3e19999a    # 0.15f

    invoke-static {p6, p7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    int-to-float p6, p6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iget-object p7, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p6, p2, p7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;->text:Lorg/telegram/ui/Components/Text;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float v2, p5, p2

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    return-void
.end method

.method public getSize()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

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
    invoke-virtual {p0}, Lorg/telegram/ui/Business/QuickRepliesActivity$MoreSpan;->getSize()I

    move-result p1

    return p1
.end method

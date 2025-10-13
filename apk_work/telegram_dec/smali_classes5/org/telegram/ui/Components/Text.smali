.class public Lorg/telegram/ui/Components/Text;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private align:Landroid/text/Layout$Alignment;

.field private animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private animatedEmojisCacheType:I

.field private animatedEmojisColorFilter:Landroid/graphics/ColorFilter;

.field private animatedEmojisColorFilterColor:I

.field private doNotSave:Z

.field private drawAnimatedEmojis:Z

.field private ellipsizeGradient:Landroid/graphics/LinearGradient;

.field private ellipsizeMatrix:Landroid/graphics/Matrix;

.field private ellipsizePaint:Landroid/graphics/Paint;

.field private ellipsizeWidth:F

.field private hackClipBounds:Z

.field private layout:Landroid/text/StaticLayout;

.field private left:F

.field private lineSpacingAdd:F

.field private maxLines:I

.field private maxWidth:F

.field public final paint:Landroid/text/TextPaint;

.field private parentView:Landroid/view/View;

.field private vertPad:I

.field private width:F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;F)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x461c3c00    # 9999.0f

    iput v0, p0, Lorg/telegram/ui/Components/Text;->maxWidth:F

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/Text;->maxLines:I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, p0, Lorg/telegram/ui/Components/Text;->align:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisCacheType:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:F

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x461c3c00    # 9999.0f

    iput v0, p0, Lorg/telegram/ui/Components/Text;->maxWidth:F

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/Text;->maxLines:I

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->align:Landroid/text/Layout$Alignment;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisCacheType:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:F

    iput-object p2, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Text;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Text;->animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Text;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Text;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisCacheType:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Text;)Landroid/text/StaticLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    return-object p0
.end method


# virtual methods
.method public align(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Components/Text;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->align:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Components/Text;->align:Landroid/text/Layout$Alignment;

    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Text;->doNotSave:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:F

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/Text;->width:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/Text;->vertPad:I

    neg-int v4, v4

    int-to-float v7, v4

    sub-float v8, v1, v2

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Text;->vertPad:I

    add-int/2addr v0, v1

    int-to-float v9, v0

    const/16 v10, 0xff

    const/16 v11, 0x1f

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/Text;->left:F

    neg-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Text;->hackClipBounds:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Text;->drawAnimatedEmojis:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisColorFilterColor:I

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisColorFilterColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisColorFilter:Landroid/graphics/ColorFilter;

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/Text;->animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v13, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisColorFilter:Landroid/graphics/ColorFilter;

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v13}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Text;->doNotSave:Z

    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:F

    cmpl-float v1, v0, v3

    if-ltz v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/Components/Text;->width:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    const/high16 v1, 0x41000000    # 8.0f

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v7, v2

    const v2, 0xffffff

    const/4 v4, -0x1

    filled-new-array {v2, v4}, [I

    move-result-object v9

    const/4 v2, 0x2

    new-array v10, v2, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/Text;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lorg/telegram/ui/Components/Text;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget v5, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Components/Text;->ellipsizePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 1

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFF)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Text;->doNotSave:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/Text;->maxLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_0
    sub-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    int-to-float v0, p2

    mul-float v0, v0, p4

    float-to-int p4, v0

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Text;->doNotSave:Z

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFIF)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    iput p4, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    int-to-float v1, p4

    mul-float v1, v1, p5

    float-to-int p5, v1

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget-boolean p5, p0, Lorg/telegram/ui/Components/Text;->doNotSave:Z

    if-nez p5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Text;->isMultiline()Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p5, 0x0

    goto :goto_0

    :cond_3
    iget-object p5, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p5}, Landroid/text/Layout;->getHeight()I

    move-result p5

    int-to-float p5, p5

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    :goto_0
    sub-float/2addr p3, p5

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;)V

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Text;->doNotSave:Z

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public ellipsize(F)Lorg/telegram/ui/Components/Text;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:F

    return-object p0
.end method

.method public getCurrentWidth()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Text;->width:F

    return v0
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getLayout()Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/Text;->width:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Text;->width:F

    :goto_0
    return v0
.end method

.method public hackClipBounds()Lorg/telegram/ui/Components/Text;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Text;->hackClipBounds:Z

    return-object p0
.end method

.method public isMultiline()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Text;->maxLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public lineSpacing(F)Lorg/telegram/ui/Components/Text;
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Text;->lineSpacingAdd:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/Text;->lineSpacingAdd:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public multiline(I)Lorg/telegram/ui/Components/Text;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Text;->maxLines:I

    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setColor(I)Lorg/telegram/ui/Components/Text;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setEmojiCacheType(I)Lorg/telegram/ui/Components/Text;
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisCacheType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisCacheType:I

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Text;->drawAnimatedEmojis:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->parentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    iget p1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisCacheType:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->parentView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v2, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/Layout;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {p1, v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    :cond_0
    return-object p0
.end method

.method public setMaxWidth(F)Lorg/telegram/ui/Components/Text;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Text;->maxWidth:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setShadow(F)Lorg/telegram/ui/Components/Text;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f28f5c3    # 0.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x1000000

    invoke-static {v3, p1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 11

    iget v0, p0, Lorg/telegram/ui/Components/Text;->maxLines:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    iget v5, p0, Lorg/telegram/ui/Components/Text;->maxWidth:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-static {p1, v2, v0, v4, v5}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->align:Landroid/text/Layout$Alignment;

    invoke-static {p1, v0}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/Text;->maxLines:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/Text;->lineSpacingAdd:F

    invoke-static {p1, v0, v3}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline7;->m(Landroid/text/StaticLayout$Builder;FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceNewLines(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    iget p1, p0, Lorg/telegram/ui/Components/Text;->maxWidth:F

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int v6, p1

    iget-object v7, p0, Lorg/telegram/ui/Components/Text;->align:Landroid/text/Layout$Alignment;

    iget v9, p0, Lorg/telegram/ui/Components/Text;->lineSpacingAdd:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->align:Landroid/text/Layout$Alignment;

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/Text;->width:F

    iput v3, p0, Lorg/telegram/ui/Components/Text;->left:F

    goto :goto_2

    :cond_1
    iput v3, p0, Lorg/telegram/ui/Components/Text;->width:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/Text;->left:F

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/Text;->width:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Text;->width:F

    iget v0, p0, Lorg/telegram/ui/Components/Text;->left:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Text;->left:F

    add-int/2addr p1, v1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->parentView:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisCacheType:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->parentView:Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/Components/Text;->animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v4, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    new-array v1, v1, [Landroid/text/Layout;

    aput-object v4, v1, v2

    invoke-static {p1, v0, v3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    :cond_3
    return-void
.end method

.method public setTextSizePx(F)Lorg/telegram/ui/Components/Text;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-object p0
.end method

.method public setVerticalClipPadding(I)Lorg/telegram/ui/Components/Text;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Text;->vertPad:I

    return-object p0
.end method

.method public supportAnimatedEmojis(Landroid/view/View;)Lorg/telegram/ui/Components/Text;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Text;->drawAnimatedEmojis:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/Text;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/Text;->animatedEmojisCacheType:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Text;->animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    new-array v0, v0, [Landroid/text/Layout;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v1, p1, v2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->animatedEmojis:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Text$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Text$1;-><init>(Lorg/telegram/ui/Components/Text;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object p0
.end method

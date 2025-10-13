.class public Lorg/telegram/ui/Components/QuoteSpan$Block;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/QuoteSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Block"
.end annotation


# instance fields
.field public final bottom:I

.field public collapseButtonBounds:Landroid/graphics/RectF;

.field public final paint:Landroid/text/TextPaint;

.field public final span:Lorg/telegram/ui/Components/QuoteSpan;

.field public final top:I

.field public final view:Landroid/view/View;

.field public final width:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Lorg/telegram/ui/Components/QuoteSpan;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->view:Landroid/view/View;

    iput-object p4, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-virtual {p2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->paint:Landroid/text/TextPaint;

    invoke-interface {p3, p4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iput v0, p4, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    invoke-interface {p3, p4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    iput v0, p4, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p4, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p4, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    sub-int/2addr v0, v2

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    if-ne p3, v1, :cond_0

    iget p3, p4, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    sub-int/2addr p3, v2

    iput p3, p4, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    :cond_0
    iget p3, p4, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p3

    iget v0, p4, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    sub-int v1, v0, p3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p4, Lorg/telegram/ui/Components/QuoteSpan;->singleLine:Z

    if-gtz p3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p4, Lorg/telegram/ui/Components/QuoteSpan;->first:Z

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-lt v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p4, Lorg/telegram/ui/Components/QuoteSpan;->last:Z

    iget-boolean v1, p4, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    const/4 v4, 0x2

    if-eqz v1, :cond_8

    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iget-boolean v5, p4, Lorg/telegram/ui/Components/QuoteSpan;->singleLine:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    iget-boolean v5, p4, Lorg/telegram/ui/Components/QuoteSpan;->first:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    add-int/lit8 v5, v5, 0x3

    :goto_4
    rsub-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->top:I

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iget-boolean v5, p4, Lorg/telegram/ui/Components/QuoteSpan;->singleLine:Z

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_7

    :cond_6
    iget-boolean v5, p4, Lorg/telegram/ui/Components/QuoteSpan;->last:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    add-int/lit8 v5, v5, 0x3

    goto :goto_7

    :cond_8
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iget-boolean v5, p4, Lorg/telegram/ui/Components/QuoteSpan;->singleLine:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x2

    :goto_6
    rsub-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->top:I

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iget-boolean v5, p4, Lorg/telegram/ui/Components/QuoteSpan;->singleLine:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x2

    :goto_7
    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->bottom:I

    iput-boolean v3, p4, Lorg/telegram/ui/Components/QuoteSpan;->rtl:Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_8
    if-gt p3, v0, :cond_c

    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_b

    iput-boolean v2, p4, Lorg/telegram/ui/Components/QuoteSpan;->rtl:Z

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    float-to-double p2, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->width:I

    iget-boolean p2, p4, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    if-eqz p2, :cond_11

    if-eqz p1, :cond_11

    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$000(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object p2

    if-nez p2, :cond_d

    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v0, 0x15e

    invoke-direct {p2, p1, v0, v1, p3}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    invoke-static {p4, p2}, Lorg/telegram/ui/Components/QuoteSpan;->access$002(Lorg/telegram/ui/Components/QuoteSpan;Lorg/telegram/ui/Components/AnimatedFloat;)Lorg/telegram/ui/Components/AnimatedFloat;

    :cond_d
    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$100(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;

    move-result-object p2

    if-nez p2, :cond_e

    new-instance p2, Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;-><init>(Landroid/view/View;)V

    invoke-static {p4, p2}, Lorg/telegram/ui/Components/QuoteSpan;->access$102(Lorg/telegram/ui/Components/QuoteSpan;Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;)Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;

    :cond_e
    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object p2

    if-nez p2, :cond_10

    new-instance p2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    invoke-static {p4, p2}, Lorg/telegram/ui/Components/QuoteSpan;->access$202(Lorg/telegram/ui/Components/QuoteSpan;Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object p2

    const/high16 p3, 0x41300000    # 11.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object p2

    invoke-virtual {p2, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object p2

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    const v0, 0x3e99999a    # 0.3f

    mul-float p3, p3, v0

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object p2

    invoke-static {p4, v3}, Lorg/telegram/ui/Components/QuoteSpan;->access$302(Lorg/telegram/ui/Components/QuoteSpan;Z)Z

    move-result p3

    if-eqz p3, :cond_f

    sget p3, Lorg/telegram/messenger/R$string;->QuoteExpand:I

    goto :goto_9

    :cond_f
    sget p3, Lorg/telegram/messenger/R$string;->QuoteCollapse:I

    :goto_9
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->QuoteExpand:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$string;->QuoteCollapse:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p4, p2}, Lorg/telegram/ui/Components/QuoteSpan;->access$402(Lorg/telegram/ui/Components/QuoteSpan;I)I

    :cond_10
    invoke-static {p4}, Lorg/telegram/ui/Components/QuoteSpan;->access$500(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object p2

    if-nez p2, :cond_11

    new-instance p2, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    invoke-static {p4, p2}, Lorg/telegram/ui/Components/QuoteSpan;->access$502(Lorg/telegram/ui/Components/QuoteSpan;Lorg/telegram/ui/Components/ButtonBounce;)Lorg/telegram/ui/Components/ButtonBounce;

    :cond_11
    return-void
.end method


# virtual methods
.method public buttonWidth()I
    .locals 2

    const v0, 0x41bd47ae    # 23.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v1}, Lorg/telegram/ui/Components/QuoteSpan;->access$400(Lorg/telegram/ui/Components/QuoteSpan;)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x40554fdf    # 3.333f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;FIIFLandroid/text/TextPaint;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/QuoteSpan;->setColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    if-eqz v3, :cond_0

    move/from16 v3, p3

    goto :goto_0

    :cond_0
    iget v3, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->width:I

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    int-to-double v4, v3

    move/from16 v6, p3

    int-to-double v7, v6

    const-wide v9, 0x3fee666666666666L    # 0.95

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    cmpl-double v9, v4, v7

    if-ltz v9, :cond_1

    move v3, v6

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v4, 0x0

    move/from16 v5, p2

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->top:I

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$600(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v7}, Lorg/telegram/ui/Components/QuoteSpan;->access$600(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v8}, Lorg/telegram/ui/Components/QuoteSpan;->access$600(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v9}, Lorg/telegram/ui/Components/QuoteSpan;->access$600(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v9

    const/4 v10, 0x7

    aput v4, v9, v10

    const/4 v9, 0x6

    aput v4, v8, v9

    const/4 v8, 0x1

    aput v4, v7, v8

    const/4 v7, 0x0

    aput v4, v6, v7

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$600(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v6

    iget-object v11, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v11}, Lorg/telegram/ui/Components/QuoteSpan;->access$600(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v12}, Lorg/telegram/ui/Components/QuoteSpan;->access$600(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v13}, Lorg/telegram/ui/Components/QuoteSpan;->access$600(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v13

    const/high16 v14, 0x40800000    # 4.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    const/16 v16, 0x5

    aput v15, v13, v16

    const/4 v13, 0x4

    aput v15, v12, v13

    const/4 v12, 0x3

    aput v15, v11, v12

    const/4 v11, 0x2

    aput v15, v6, v11

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$700(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$700(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Path;

    move-result-object v6

    iget-object v15, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v15}, Lorg/telegram/ui/Components/QuoteSpan;->access$600(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v15

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v5, v15, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$700(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Path;

    move-result-object v6

    iget-object v15, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v15}, Lorg/telegram/ui/Components/QuoteSpan;->access$800(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Paint;

    move-result-object v15

    invoke-virtual {v1, v6, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v15, v6, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    const/high16 v17, 0x40000000    # 2.0f

    if-eqz v15, :cond_5

    iget-object v15, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->view:Landroid/view/View;

    if-eqz v15, :cond_5

    iget-boolean v15, v6, Lorg/telegram/ui/Components/QuoteSpan;->isCollapsing:Z

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$300(Lorg/telegram/ui/Components/QuoteSpan;)Z

    move-result v6

    if-eq v15, v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v6

    iget-object v15, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v12, v15, Lorg/telegram/ui/Components/QuoteSpan;->isCollapsing:Z

    invoke-static {v15, v12}, Lorg/telegram/ui/Components/QuoteSpan;->access$302(Lorg/telegram/ui/Components/QuoteSpan;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    sget v12, Lorg/telegram/messenger/R$string;->QuoteExpand:I

    goto :goto_1

    :cond_2
    sget v12, Lorg/telegram/messenger/R$string;->QuoteCollapse:I

    :goto_1
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_3
    const v6, 0x41bd47ae    # 23.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v12, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v12}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v12

    add-float/2addr v6, v12

    float-to-int v6, v6

    const v12, 0x418d47ae    # 17.66f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const v18, 0x40554fdf    # 3.333f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    iget-object v13, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    if-nez v13, :cond_4

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    iput-object v13, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    :cond_4
    iget-object v13, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    sub-int v7, v3, v18

    sub-int v6, v7, v6

    int-to-float v6, v6

    iget v9, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->bottom:I

    sub-int v9, v9, v18

    sub-int v10, v9, v15

    int-to-float v10, v10

    int-to-float v7, v7

    int-to-float v9, v9

    invoke-virtual {v13, v6, v10, v7, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$000(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/QuoteSpan$Block;->hasButton()Z

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v9}, Lorg/telegram/ui/Components/QuoteSpan;->access$500(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v9

    const v10, 0x3ca3d70a    # 0.02f

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v9

    mul-float v6, v6, v9

    cmpl-float v9, v6, v4

    if-lez v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v9, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->bottom:I

    sub-int v9, v9, v18

    int-to-float v9, v9

    invoke-virtual {v1, v6, v6, v7, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    int-to-float v7, v15

    div-float v7, v7, v17

    iget-object v9, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v9}, Lorg/telegram/ui/Components/QuoteSpan;->access$800(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v1, v6, v7, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    float-to-int v7, v7

    iget-object v9, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v9, v12

    float-to-int v9, v9

    iget-object v12, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    float-to-int v12, v12

    invoke-virtual {v6, v7, v10, v9, v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$200(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v7}, Lorg/telegram/ui/Components/QuoteSpan;->access$100(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;

    move-result-object v7

    iget-object v9, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    const v10, 0x40551eb8    # 3.33f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v9, v12

    int-to-float v6, v6

    sub-float/2addr v9, v6

    float-to-int v9, v9

    iget-object v12, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    div-float v6, v6, v17

    sub-float/2addr v12, v6

    const v13, 0x3ea8f5c3    # 0.33f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v12, v15

    float-to-int v12, v12

    iget-object v15, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v15, v10

    float-to-int v10, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->collapseButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    add-float/2addr v15, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v15, v6

    float-to-int v6, v15

    invoke-virtual {v7, v9, v12, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$100(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->access$100(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v6, v6, Lorg/telegram/ui/Components/QuoteSpan;->isCollapsing:Z

    xor-int/2addr v6, v8

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;->setState(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->access$100(Lorg/telegram/ui/Components/QuoteSpan;)Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/QuoteSpan$ExpandDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->top:I

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v5, v2, v6, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->access$900(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$900(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v7}, Lorg/telegram/ui/Components/QuoteSpan;->access$900(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v7

    iget-object v9, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v9}, Lorg/telegram/ui/Components/QuoteSpan;->access$900(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v12, 0x7

    aput v10, v9, v12

    const/4 v9, 0x6

    aput v10, v7, v9

    aput v10, v6, v8

    const/4 v6, 0x0

    aput v10, v2, v6

    iget-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->access$900(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$900(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v7}, Lorg/telegram/ui/Components/QuoteSpan;->access$900(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v8}, Lorg/telegram/ui/Components/QuoteSpan;->access$900(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v8

    aput v4, v8, v16

    const/4 v8, 0x4

    aput v4, v7, v8

    const/4 v7, 0x3

    aput v4, v6, v7

    const/4 v6, 0x2

    aput v4, v2, v6

    iget-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->access$1000(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    iget-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->access$1000(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v4}, Lorg/telegram/ui/Components/QuoteSpan;->access$900(Lorg/telegram/ui/Components/QuoteSpan;)[F

    move-result-object v4

    invoke-virtual {v2, v5, v4, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->access$1000(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v4}, Lorg/telegram/ui/Components/QuoteSpan;->access$1100(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v4, v2, Lorg/telegram/ui/Components/QuoteSpan;->rtl:Z

    if-nez v4, :cond_7

    iget v4, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->top:I

    iget v5, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->bottom:I

    add-int/2addr v4, v5

    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->access$1200(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    div-float v2, v2, v17

    float-to-int v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->top:I

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    if-le v2, v4, :cond_6

    iget v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->top:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v4}, Lorg/telegram/ui/Components/QuoteSpan;->access$1200(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v5}, Lorg/telegram/ui/Components/QuoteSpan;->access$1200(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int v5, v3, v5

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v6}, Lorg/telegram/ui/Components/QuoteSpan;->access$1200(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->access$1200(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, p5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    invoke-static {v2}, Lorg/telegram/ui/Components/QuoteSpan;->access$1200(Lorg/telegram/ui/Components/QuoteSpan;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public hasButton()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->bottom:I

    iget v1, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/QuoteSpan$Block;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const v2, 0x3fa66666    # 1.3f

    mul-float v1, v1, v2

    sget v2, Lorg/telegram/ui/Components/QuoteSpan;->COLLAPSE_LINES:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

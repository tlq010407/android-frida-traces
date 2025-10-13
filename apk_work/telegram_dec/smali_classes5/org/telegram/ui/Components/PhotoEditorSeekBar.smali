.class public Lorg/telegram/ui/Components/PhotoEditorSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

.field private innerPaint:Landroid/graphics/Paint;

.field private maxValue:I

.field private minValue:I

.field private outerPaint:Landroid/graphics/Paint;

.field private pressed:Z

.field private progress:F

.field private thumbDX:I

.field private thumbSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->innerPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbDX:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->innerPaint:Landroid/graphics/Paint;

    const v0, -0xb2b2b3

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    int-to-float v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v7, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v8, v3

    iget-object v9, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->innerPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v3, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    if-nez v3, :cond_0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    :goto_0
    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v6, v3

    int-to-float v7, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v8, v3

    iget-object v9, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_0
    iget v3, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v7, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v8, v3

    iget-object v9, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v7, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v8, v3

    iget-object v9, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v12, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v13, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v14, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v15, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    iget v3, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->outerPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v4, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr p1, v4

    div-int/2addr p1, v5

    int-to-float p1, p1

    sub-float v5, v3, p1

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_7

    int-to-float v4, v4

    add-float/2addr v4, v3

    add-float/2addr v4, p1

    cmpg-float p1, v1, v4

    if-gtz p1, :cond_7

    cmpl-float p1, v2, v6

    if-ltz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_7

    iput-boolean v7, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    sub-float/2addr v1, v3

    float-to-int p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbDX:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v7, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbDX:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    cmpg-float v0, p1, v6

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr p1, v0

    int-to-float v6, p1

    goto :goto_1

    :cond_4
    move v6, p1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->thumbSize:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr v6, p1

    iput v6, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getProgress()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;->onProgressChanged(II)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v7

    :cond_6
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    if-eqz p1, :cond_7

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->pressed:Z

    goto :goto_0

    :cond_7
    return v0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    return-void
.end method

.method public setMinMax(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    iput p2, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 2

    .line 0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->minValue:I

    if-ge p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    :goto_0
    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->maxValue:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->delegate:Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getProgress()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;->onProgressChanged(II)V

    :cond_2
    return-void
.end method

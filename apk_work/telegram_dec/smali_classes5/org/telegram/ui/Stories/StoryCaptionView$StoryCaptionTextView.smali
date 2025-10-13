.class public Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoryCaptionTextView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;,
        Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$LineInfo;
    }
.end annotation


# instance fields
.field public allowClickSpoilers:Z

.field private final emojiColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field horizontalPadding:I

.field private isSpoilersRevealed:Z

.field private path:Landroid/graphics/Path;

.field progressToExpand:F

.field shouldCollapse:Z

.field showMore:Landroid/text/StaticLayout;

.field showMorePaint:Landroid/text/TextPaint;

.field showMoreX:F

.field showMoreY:F

.field sizeCached:I

.field state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

.field textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

.field private updateAnimator:Landroid/animation/ValueAnimator;

.field public updateT:F

.field public updating:Z

.field verticalPadding:I

.field private final xRefGradinetPaint:Landroid/graphics/Paint;

.field private final xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$jHRPhq9GuxO-aOgO6rHZUHgXBEg(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->lambda$animateUpdate$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoryCaptionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefGradinetPaint:Landroid/graphics/Paint;

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v5, 0x0

    iput v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->sizeCached:I

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->path:Landroid/graphics/Path;

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->allowClickSpoilers:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updating:Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    new-instance v7, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    aput-object v7, v6, v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v7, 0x0

    aput-object v7, v6, v2

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    iput v6, v2, Landroid/text/TextPaint;->linkColor:I

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v12, v2

    filled-new-array {v5, v6}, [I

    move-result-object v14

    new-array v15, v4, [F

    fill-array-data v15, :array_0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v6, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->emojiColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->makeTextLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->emojiColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->clearPressedLinks()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->isSpoilersRevealed:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->isSpoilersRevealed:Z

    return p1
.end method

.method private clearPressedLinks()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->access$500(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->access$602(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;Lorg/telegram/ui/Components/LinkSpanDrawable;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$animateUpdate$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateT:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private makeTextLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, p1, p3}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline2;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_LEFT()Landroid/text/Layout$Alignment;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v8

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method


# virtual methods
.method public animateUpdate()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updating:Z

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateT:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$1;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public collapsedTextHeight(I)I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->collapsedTextHeight(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->collapsedTextHeight(I)I

    move-result v1

    :goto_0
    iget p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateT:F

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->access$702(Lorg/telegram/ui/Stories/StoryCaptionView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->access$802(Lorg/telegram/ui/Stories/StoryCaptionView;F)F

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->access$902(Lorg/telegram/ui/Stories/StoryCaptionView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->access$1002(Lorg/telegram/ui/Stories/StoryCaptionView;F)F

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    iget v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    iget v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v3, v3, v1

    if-eqz v3, :cond_6

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-eqz v3, :cond_6

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v6, v5

    iget v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v7, v7

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->width()I

    move-result v3

    add-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v8, v8, v1

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    invoke-virtual {v8}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->height()I

    move-result v8

    add-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual {v4, v6, v7, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->setPressed(ZFF)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/StoryCaptionView;->onReplyClick(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v1, v5, v6}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->setPressed(ZFF)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_1
    if-eqz v0, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->firstLayout:Landroid/text/StaticLayout;

    if-nez v4, :cond_a

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v4, v4, v1

    if-eqz v4, :cond_9

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->height()I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    iget v6, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v7, v4

    int-to-float v4, v7

    invoke-virtual {v5, v6, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->update(FF)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->allowClickSpoilers:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->access$1100(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    return v2

    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz v3, :cond_d

    :cond_c
    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getStaticTextLayout()Landroid/text/Layout;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->detach()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateT:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->draw(Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateT:F

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->draw(Landroid/graphics/Canvas;F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreY:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    sub-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefGradinetPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMorePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefGradinetPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v4, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    int-to-float v2, v2

    add-float v7, v1, v2

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->xRefPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMoreX:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->showMore:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    add-int/2addr p2, p1

    shl-int/lit8 p2, p2, 0x10

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->sizeCached:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p2, :cond_0

    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->sizeCached:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->horizontalPadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v0, v0, v2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->measure(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->measure(I)V

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->verticalPadding:I

    mul-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v3, v0, v2

    iget v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->textHeight:I

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateT:F

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableTouches:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    if-eqz v0, :cond_3

    aget-object v0, v0, v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->fullLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->touch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;ZZ)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lorg/telegram/messenger/MediaDataController;->stringsEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v0, v0, v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-ne v2, p2, :cond_1

    iput-boolean p3, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translating:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->isSpoilersRevealed:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updating:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v2, 0x1

    aget-object v3, p4, v2

    if-nez v3, :cond_3

    new-instance v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;)V

    aput-object v3, p4, v2

    :cond_3
    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v3, p4, v2

    aget-object p4, p4, v1

    iget-object v4, p4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    iget-object p4, p4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    invoke-virtual {v3, v4, p4}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->setup(Ljava/lang/CharSequence;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V

    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v3, p4, v2

    aget-object p4, p4, v1

    iget-boolean v4, p4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translating:Z

    iput-boolean v4, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translating:Z

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object p4, p4, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translateT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result p4

    invoke-virtual {v3, p4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object p4, p4, v1

    invoke-virtual {p4, p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->setup(Ljava/lang/CharSequence;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object p1, p1, v1

    iput-boolean p3, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translating:Z

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translateT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateT:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->animateUpdate()V

    goto :goto_0

    :cond_4
    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object p4, p4, v1

    invoke-virtual {p4, p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->setup(Ljava/lang/CharSequence;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object p1, p1, v1

    iput-boolean p3, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->translating:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updateT:F

    :goto_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->this$0:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->access$400(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->ripple:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->access$400(Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;)Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->reply:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->ripple:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method

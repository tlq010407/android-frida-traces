.class public Lorg/telegram/ui/web/WebActionBar$Title;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/WebActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Title"
.end annotation


# instance fields
.field public final animatedDangerous:Lorg/telegram/ui/Components/AnimatedFloat;

.field public isDangerous:Z

.field public final subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field public subtitleColor:I

.field final synthetic this$0:Lorg/telegram/ui/web/WebActionBar;

.field public final title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field public final warningDrawable:Landroid/graphics/drawable/Drawable;

.field public warningDrawableColor:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/web/WebActionBar;)V
    .locals 11

    iput-object p1, p0, Lorg/telegram/ui/web/WebActionBar$Title;->this$0:Lorg/telegram/ui/web/WebActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v0, p0, Lorg/telegram/ui/web/WebActionBar$Title;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v2, v1, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v2, p0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v10, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x12c

    move-object v3, v10

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v10, p0, Lorg/telegram/ui/web/WebActionBar$Title;->animatedDangerous:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/ui/web/WebActionBar$Title;->isDangerous:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    const v4, 0x4192a3d7    # 18.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setScaleProperty(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const v4, 0x98967f

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    iput-boolean v1, v2, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->ignoreRTL:Z

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->warning_sign:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/web/WebActionBar$Title;->warningDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFF)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar$Title;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar$Title;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, v0, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p4, p4, v2

    float-to-int p4, p4

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, p4, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object p4, p0, Lorg/telegram/ui/web/WebActionBar$Title;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isNotEmpty()F

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->isNotEmpty()F

    move-result v0

    mul-float p4, p4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const v4, 0x3f51eb85    # 0.82f

    mul-float v4, v4, p3

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar$Title;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget v5, v5, Lorg/telegram/ui/web/WebActionBar;->scale:F

    sub-float v5, v0, v5

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float v5, v5, p4

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar$Title;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget v5, v5, Lorg/telegram/ui/web/WebActionBar;->scale:F

    const v6, 0x3f5c28f6    # 0.86f

    invoke-static {v0, v6, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    mul-float v5, v5, v6

    invoke-virtual {p1, v5, v5, v1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar$Title;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v5, v1, v1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(FFFF)V

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar$Title;->title:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar$Title;->animatedDangerous:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v6, p0, Lorg/telegram/ui/web/WebActionBar$Title;->isDangerous:Z

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/web/WebActionBar$Title;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget v7, v7, Lorg/telegram/ui/web/WebActionBar;->scale:F

    sub-float v7, v0, v7

    mul-float v4, v4, v7

    mul-float v4, v4, p4

    add-float/2addr v6, v4

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p4

    add-float/2addr v6, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v0, p4

    mul-float v3, v3, v4

    sub-float/2addr v6, v3

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lorg/telegram/ui/web/WebActionBar$Title;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget v3, v3, Lorg/telegram/ui/web/WebActionBar;->scale:F

    const v4, 0x3f933333    # 1.15f

    const v6, 0x3f666666    # 0.9f

    invoke-static {v4, v6, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p4

    mul-float v3, v3, p4

    invoke-virtual {p1, v3, v3, v1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p4, p0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitleColor:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {p4, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const/4 p4, 0x2

    cmpl-float v3, v5, v1

    if-lez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/web/WebActionBar$Title;->warningDrawableColor:I

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/web/WebActionBar$Title;->warningDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, p0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/web/WebActionBar$Title;->warningDrawableColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/web/WebActionBar$Title;->warningDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v2, v2, v5

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar$Title;->warningDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p3, v4

    float-to-int v4, v4

    div-int/2addr v4, p4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p3

    float-to-int v3, v3

    div-int/2addr v3, p4

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar$Title;->warningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v5

    invoke-virtual {v2, v3, v1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar$Title;->subtitle:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lorg/telegram/ui/web/WebActionBar$Title;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget-object v2, v2, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v2, v3, v1, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/web/WebActionBar$Title;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget-object p3, p2, Lorg/telegram/ui/web/WebActionBar;->clip:Lorg/telegram/ui/GradientClip;

    iget-object p2, p2, Lorg/telegram/ui/web/WebActionBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p3, p1, p2, p4, v0}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.class Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DefaultThemesPreviewCell$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DefaultThemesPreviewCell$2;

.field final synthetic val$duration:F

.field final synthetic val$fullDuration:F

.field final synthetic val$navBarFromColor:I

.field final synthetic val$navBarNewColor:I

.field final synthetic val$startDelay:F

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DefaultThemesPreviewCell$2;FFFIILandroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->this$1:Lorg/telegram/ui/DefaultThemesPreviewCell$2;

    iput p2, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$fullDuration:F

    iput p3, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$startDelay:F

    iput p4, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$duration:F

    iput p5, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$navBarFromColor:I

    iput p6, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$navBarNewColor:I

    iput-object p7, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$fullDuration:F

    mul-float p1, p1, v0

    iget v0, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$startDelay:F

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$duration:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->this$1:Lorg/telegram/ui/DefaultThemesPreviewCell$2;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell$2;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget v1, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$navBarFromColor:I

    iget v2, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$navBarNewColor:I

    invoke-static {v1, v2, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$202(Lorg/telegram/ui/DefaultThemesPreviewCell;I)I

    iget-object p1, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$window:Landroid/view/Window;

    iget-object v0, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->this$1:Lorg/telegram/ui/DefaultThemesPreviewCell$2;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell$2;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$200(Lorg/telegram/ui/DefaultThemesPreviewCell;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    iget-object p1, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->val$window:Landroid/view/Window;

    iget-object v0, p0, Lorg/telegram/ui/DefaultThemesPreviewCell$2$3;->this$1:Lorg/telegram/ui/DefaultThemesPreviewCell$2;

    iget-object v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell$2;->this$0:Lorg/telegram/ui/DefaultThemesPreviewCell;

    invoke-static {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->access$200(Lorg/telegram/ui/DefaultThemesPreviewCell;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v2, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    return-void
.end method

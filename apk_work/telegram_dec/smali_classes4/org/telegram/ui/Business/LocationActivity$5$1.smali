.class Lorg/telegram/ui/Business/LocationActivity$5$1;
.super Lorg/telegram/messenger/ImageReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Business/LocationActivity$5;->createImageReciever()Lorg/telegram/messenger/ImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Business/LocationActivity$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Business/LocationActivity$5;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Business/LocationActivity$5$1;->this$1:Lorg/telegram/ui/Business/LocationActivity$5;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/LocationActivity$5$1;->this$1:Lorg/telegram/ui/Business/LocationActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/Business/LocationActivity$5;->this$0:Lorg/telegram/ui/Business/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/Business/LocationActivity;->access$500(Lorg/telegram/ui/Business/LocationActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    move-result p1

    return p1
.end method

.class Lorg/telegram/ui/Components/HashtagActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/HashtagActivity;->updateStoriesVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/HashtagActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/HashtagActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$6;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$6;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$202(Lorg/telegram/ui/Components/HashtagActivity;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$6;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$300(Lorg/telegram/ui/Components/HashtagActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$6;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagActivity;->access$200(Lorg/telegram/ui/Components/HashtagActivity;)F

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$6;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$300(Lorg/telegram/ui/Components/HashtagActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$6;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagActivity;->access$200(Lorg/telegram/ui/Components/HashtagActivity;)F

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.class Lorg/telegram/ui/Components/HashtagActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/HashtagActivity;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$7;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/HashtagActivity$7;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$7;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/HashtagActivity$7;->val$visible:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/HashtagActivity;->access$202(Lorg/telegram/ui/Components/HashtagActivity;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$7;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$300(Lorg/telegram/ui/Components/HashtagActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$7;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagActivity;->access$200(Lorg/telegram/ui/Components/HashtagActivity;)F

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$7;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$300(Lorg/telegram/ui/Components/HashtagActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$7;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

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

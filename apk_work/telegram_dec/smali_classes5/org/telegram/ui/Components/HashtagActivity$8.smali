.class Lorg/telegram/ui/Components/HashtagActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/HashtagActivity;->transit(ZZ)V
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

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$402(Lorg/telegram/ui/Components/HashtagActivity;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$500(Lorg/telegram/ui/Components/HashtagActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagActivity;->access$400(Lorg/telegram/ui/Components/HashtagActivity;)F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$500(Lorg/telegram/ui/Components/HashtagActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagActivity;->access$400(Lorg/telegram/ui/Components/HashtagActivity;)F

    move-result v0

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$600(Lorg/telegram/ui/Components/HashtagActivity;)Lorg/telegram/ui/ChatActivityContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$600(Lorg/telegram/ui/Components/HashtagActivity;)Lorg/telegram/ui/ChatActivityContainer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$600(Lorg/telegram/ui/Components/HashtagActivity;)Lorg/telegram/ui/ChatActivityContainer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagesSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$600(Lorg/telegram/ui/Components/HashtagActivity;)Lorg/telegram/ui/ChatActivityContainer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagesSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagActivity;->access$400(Lorg/telegram/ui/Components/HashtagActivity;)F

    move-result v0

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$600(Lorg/telegram/ui/Components/HashtagActivity;)Lorg/telegram/ui/ChatActivityContainer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messagesSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagActivity;->access$400(Lorg/telegram/ui/Components/HashtagActivity;)F

    move-result v0

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/HashtagActivity;->access$700(Lorg/telegram/ui/Components/HashtagActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$8;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagActivity;->access$400(Lorg/telegram/ui/Components/HashtagActivity;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

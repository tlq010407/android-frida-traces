.class Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->transition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$302(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$400(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    const/high16 v2, 0x42780000    # 62.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$300(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)F

    move-result v4

    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$400(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$400(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-static {v8}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$300(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)F

    move-result v8

    invoke-static {v5, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$500(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$300(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)F

    move-result v5

    invoke-static {p1, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$500(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$500(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v0, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ne v0, v6, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$1;->this$0:Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->access$300(Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

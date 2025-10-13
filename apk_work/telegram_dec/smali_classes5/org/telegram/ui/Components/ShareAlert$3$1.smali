.class Lorg/telegram/ui/Components/ShareAlert$3$1;
.super Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$3;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected heightAnimationEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2400(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$3700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPanTranslationUpdate(FFZ)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3602(Lorg/telegram/ui/Components/ShareAlert;F)F

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onPanTranslationUpdate(FFZ)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$4000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$4100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4400(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v3, v2, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Lorg/telegram/ui/Components/BlurredFrameLayout;

    if-eq v1, v3, :cond_0

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert;->navigationBar:Lorg/telegram/ui/Components/BlurredFrameLayout;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3402(Lorg/telegram/ui/Components/ShareAlert;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2700(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    const/4 v0, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_4

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    sub-float p2, v1, p2

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2700(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p2

    mul-float p1, p1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2800(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2602(Lorg/telegram/ui/Components/ShareAlert;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2700(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2800(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p2, p2, v1

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    if-eqz p3, :cond_3

    :goto_2
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    goto/16 :goto_4

    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3200(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3200(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p2

    mul-float p1, p1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3300(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2602(Lorg/telegram/ui/Components/ShareAlert;I)I

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    move v1, p2

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    if-eqz p3, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3200(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3300(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p2

    sub-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3300(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3200(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    mul-float p3, p3, v1

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    :cond_7
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$1800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p3, p3, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$4600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCurrentPanTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->updateBottomOverlay()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onTransitionEnd()V
    .locals 4

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionEnd()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$3700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le v1, v3, :cond_2

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$3602(Lorg/telegram/ui/Components/ShareAlert;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2902(Lorg/telegram/ui/Components/ShareAlert;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2502(Lorg/telegram/ui/Components/ShareAlert;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$3500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$3900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert;->updateBottomOverlay()V

    return-void
.end method

.method protected onTransitionStart(ZI)V
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionStart(ZI)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2702(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2802(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$2902(Lorg/telegram/ui/Components/ShareAlert;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2700(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p2

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/ShareAlert;->access$2602(Lorg/telegram/ui/Components/ShareAlert;I)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2702(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3000(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3100(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3202(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3302(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$2902(Lorg/telegram/ui/Components/ShareAlert;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3000(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3100(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result v1

    sub-int/2addr v0, v1

    if-nez p1, :cond_1

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3320(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    goto :goto_1

    :cond_1
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3312(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    if-eqz p1, :cond_2

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2700(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$3;->access$2800(Lorg/telegram/ui/Components/ShareAlert$3;)I

    move-result p1

    :goto_2
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2602(Lorg/telegram/ui/Components/ShareAlert;I)I

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert$3;->access$3202(Lorg/telegram/ui/Components/ShareAlert$3;I)I

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$1800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3400(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert$3;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$2600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$3$1;->this$1:Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

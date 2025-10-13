.class Lorg/telegram/ui/Components/ChatAttachAlert$25;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private openProgress:F

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$25;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Float;
    .locals 0

    .line 0
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$25;->openProgress:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$25;->get(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$25;->setValue(Lorg/telegram/ui/Components/ChatAttachAlert;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/Components/ChatAttachAlert;F)V
    .locals 7

    .line 0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$25;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_5

    rsub-int/lit8 v1, v0, 0x3

    int-to-float v1, v1

    const/high16 v2, 0x42000000    # 32.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$25;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    cmpl-float v3, p2, v1

    if-lez v3, :cond_2

    sub-float v1, p2, v1

    const v3, 0x3f8ccccd    # 1.1f

    const/high16 v4, 0x43480000    # 200.0f

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_0

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float/2addr v1, v4

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float v4, v4, v3

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    sub-float/2addr v1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v6, v1, v4

    if-gtz v6, :cond_1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float/2addr v1, v4

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const v4, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v4

    sub-float v4, v3, v1

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    instance-of v1, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    if-eqz v1, :cond_3

    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$15800(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$15800(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$15900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$15900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    :cond_3
    instance-of v1, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    if-eqz v1, :cond_4

    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16000(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16000(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16100(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$16100(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.class Lorg/telegram/ui/GroupCallActivity$18;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentButtonsAnimation:Landroid/animation/AnimatorSet;

.field currentLightColor:I

.field final overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$18;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12100(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$11300(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/lit8 v6, v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14000(Lorg/telegram/ui/GroupCallActivity;)J

    move-result-wide v7

    sub-long v7, v4, v7

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/GroupCallActivity;->access$14002(Lorg/telegram/ui/GroupCallActivity;J)J

    const-wide/16 v4, 0x14

    cmp-long v2, v7, v4

    if-lez v2, :cond_1

    const-wide/16 v7, 0x11

    :cond_1
    move-wide v11, v7

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v10

    const/4 v5, 0x0

    move-wide v8, v11

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/GroupCallActivity$WeavingState;->update(IIIJF)V

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v2

    const/high16 v4, 0x42780000    # 62.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, v2, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lorg/telegram/ui/Components/BlobDrawable;->FORM_SMALL_MAX:F

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    iput v4, v2, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v2

    const/high16 v4, 0x42820000    # 65.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v2, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sget v7, Lorg/telegram/ui/Components/BlobDrawable;->FORM_BIG_MAX:F

    mul-float v5, v5, v7

    add-float/2addr v6, v5

    iput v6, v2, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    long-to-float v7, v11

    mul-float v5, v5, v7

    invoke-static {v2, v5}, Lorg/telegram/ui/GroupCallActivity;->access$12216(Lorg/telegram/ui/GroupCallActivity;F)F

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_4

    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    invoke-static {v2, v5}, Lorg/telegram/ui/GroupCallActivity;->access$12202(Lorg/telegram/ui/GroupCallActivity;F)F

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v2, v7, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v2

    invoke-virtual {v2, v8, v8}, Lorg/telegram/ui/Components/RadialProgressView;->toCircle(ZZ)V

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgressView;->isCircle()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v2, v7, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v2

    invoke-virtual {v2, v8, v5}, Lorg/telegram/ui/Components/RadialProgressView;->toCircle(ZZ)V

    :cond_6
    const/4 v2, 0x1

    :goto_1
    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v2, :cond_15

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$14800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    const/high16 v14, 0x43340000    # 180.0f

    const/high16 v15, 0x42c80000    # 100.0f

    cmpl-float v13, v13, v10

    if-eqz v13, :cond_9

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    if-eqz v13, :cond_7

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v13, v7, :cond_7

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v4, v11

    div-float/2addr v4, v15

    invoke-static {v13, v4}, Lorg/telegram/ui/GroupCallActivity;->access$14816(Lorg/telegram/ui/GroupCallActivity;F)F

    goto :goto_2

    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v13, v11

    div-float/2addr v13, v14

    invoke-static {v4, v13}, Lorg/telegram/ui/GroupCallActivity;->access$14816(Lorg/telegram/ui/GroupCallActivity;F)F

    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v4

    cmpl-float v4, v4, v10

    if-ltz v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4, v10}, Lorg/telegram/ui/GroupCallActivity;->access$14802(Lorg/telegram/ui/GroupCallActivity;F)F

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4, v9}, Lorg/telegram/ui/GroupCallActivity;->access$14602(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/ui/GroupCallActivity$WeavingState;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v4, v7, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v4

    invoke-virtual {v4, v5, v8}, Lorg/telegram/ui/Components/RadialProgressView;->toCircle(ZZ)V

    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4, v8}, Lorg/telegram/ui/GroupCallActivity;->access$14902(Lorg/telegram/ui/GroupCallActivity;Z)Z

    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14900(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4, v5}, Lorg/telegram/ui/GroupCallActivity;->access$14902(Lorg/telegram/ui/GroupCallActivity;Z)Z

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v9

    invoke-static {v4, v13, v9}, Lorg/telegram/ui/GroupCallActivity;->access$15100(Lorg/telegram/ui/GroupCallActivity;I[I)V

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v4

    aget v4, v4, v5

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v9

    aget v9, v9, v8

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v13

    aget v13, v13, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v10

    aget v10, v10, v7

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v14

    iget v14, v14, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v15

    invoke-static {v6, v14, v15}, Lorg/telegram/ui/GroupCallActivity;->access$15100(Lorg/telegram/ui/GroupCallActivity;I[I)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v6

    aget v6, v6, v5

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$14800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v14

    invoke-static {v4, v6, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v6

    aget v6, v6, v8

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$14800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v14

    invoke-static {v9, v6, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v9

    aget v9, v9, v3

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$14800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v14

    invoke-static {v13, v9, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v9

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v13

    aget v13, v13, v7

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$14800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v14

    invoke-static {v10, v13, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v10

    goto :goto_3

    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v6

    iget v6, v6, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v9

    invoke-static {v4, v6, v9}, Lorg/telegram/ui/GroupCallActivity;->access$15100(Lorg/telegram/ui/GroupCallActivity;I[I)V

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v4

    aget v4, v4, v5

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v6

    aget v6, v6, v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v9

    aget v9, v9, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$15000(Lorg/telegram/ui/GroupCallActivity;)[I

    move-result-object v10

    aget v10, v10, v7

    :goto_3
    iget v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->currentLightColor:I

    if-eq v13, v4, :cond_b

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    new-instance v14, Landroid/graphics/RadialGradient;

    const/high16 v15, 0x42c80000    # 100.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    const/16 v3, 0x3c

    invoke-static {v4, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    filled-new-array {v3, v7}, [I

    move-result-object v23

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v14

    move/from16 v22, v15

    invoke-direct/range {v19 .. v25}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v13, v14}, Lorg/telegram/ui/GroupCallActivity;->access$15202(Lorg/telegram/ui/GroupCallActivity;Landroid/graphics/RadialGradient;)Landroid/graphics/RadialGradient;

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$15200(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RadialGradient;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->currentLightColor:I

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3, v9, v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3, v9, v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3, v9, v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3, v6, v10}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-eq v3, v8, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->isGradientState(I)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v3, 0x1

    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_f

    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v4, 0x0

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    goto :goto_6

    :goto_7
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v6

    const/high16 v7, 0x43af0000    # 350.0f

    if-eqz v6, :cond_11

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v6

    if-eqz v6, :cond_11

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v6

    iget v6, v6, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v6, v11

    const/high16 v9, 0x43340000    # 180.0f

    div-float/2addr v6, v9

    invoke-static {v3, v6}, Lorg/telegram/ui/GroupCallActivity;->access$15524(Lorg/telegram/ui/GroupCallActivity;F)F

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_13

    const/4 v6, 0x0

    goto :goto_8

    :cond_11
    if-eqz v3, :cond_12

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$15500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v6

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_12

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v6, v11

    div-float/2addr v6, v7

    invoke-static {v3, v6}, Lorg/telegram/ui/GroupCallActivity;->access$15516(Lorg/telegram/ui/GroupCallActivity;F)F

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    cmpl-float v3, v3, v9

    if-lez v3, :cond_13

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v9}, Lorg/telegram/ui/GroupCallActivity;->access$15502(Lorg/telegram/ui/GroupCallActivity;F)F

    goto :goto_9

    :cond_12
    if-nez v3, :cond_13

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_13

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v9, v11

    div-float/2addr v9, v7

    invoke-static {v3, v9}, Lorg/telegram/ui/GroupCallActivity;->access$15524(Lorg/telegram/ui/GroupCallActivity;F)F

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_13

    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v6}, Lorg/telegram/ui/GroupCallActivity;->access$15502(Lorg/telegram/ui/GroupCallActivity;F)F

    :cond_13
    :goto_9
    if-eqz v4, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v4, v11

    div-float/2addr v4, v7

    invoke-static {v3, v4}, Lorg/telegram/ui/GroupCallActivity;->access$15616(Lorg/telegram/ui/GroupCallActivity;F)F

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v6}, Lorg/telegram/ui/GroupCallActivity;->access$15602(Lorg/telegram/ui/GroupCallActivity;F)F

    goto :goto_a

    :cond_14
    if-nez v4, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    long-to-float v6, v11

    div-float/2addr v6, v7

    invoke-static {v3, v6}, Lorg/telegram/ui/GroupCallActivity;->access$15624(Lorg/telegram/ui/GroupCallActivity;F)F

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v4}, Lorg/telegram/ui/GroupCallActivity;->access$15602(Lorg/telegram/ui/GroupCallActivity;F)F

    :cond_15
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$15500(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v3

    const v4, 0x3f19999a    # 0.6f

    mul-float v3, v3, v4

    const v4, 0x3ecccccd    # 0.4f

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v6

    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    const/high16 v6, 0x43200000    # 160.0f

    const v7, 0x3f333333    # 0.7f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x42500000    # 52.0f

    const/16 v12, 0xff

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    const/4 v15, 0x3

    if-eq v4, v15, :cond_16

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v4, v15, :cond_1c

    :cond_16
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    if-ne v4, v15, :cond_17

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v8

    :goto_b
    iget-object v8, v8, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_c

    :cond_17
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v8

    goto :goto_b

    :goto_c
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$15900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v5

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackgroundUnscrolled:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButton:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$15800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v8, v15, v13, v11}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    const/4 v11, 0x2

    div-int/2addr v8, v11

    int-to-float v8, v8

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    div-int/2addr v13, v11

    int-to-float v11, v13

    add-float/2addr v8, v11

    float-to-int v8, v8

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$16000(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Matrix;

    move-result-object v11

    int-to-float v5, v5

    int-to-float v8, v8

    invoke-virtual {v11, v5, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$15200(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RadialGradient;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$16000(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v11

    const/16 v13, 0x4c

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v11, v11, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v11, :cond_18

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v14

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v11, v13

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    add-float/2addr v13, v10

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$16100(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v1, v11, v13, v10, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget v10, Lorg/telegram/ui/Components/BlobDrawable;->GLOBAL_SCALE:F

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getScaleX()F

    move-result v11

    mul-float v10, v10, v11

    sget v11, Lorg/telegram/ui/Components/BlobDrawable;->GLOBAL_SCALE:F

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getScaleY()F

    move-result v13

    mul-float v11, v11, v13

    invoke-virtual {v1, v10, v11, v5, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget v10, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    sget v11, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG:F

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    mul-float v11, v11, v13

    mul-float v11, v11, v9

    add-float/2addr v10, v11

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    mul-float v9, v9, v10

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$15600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v11

    mul-float v10, v10, v11

    invoke-virtual {v1, v9, v10, v5, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    sget v9, Lorg/telegram/ui/Components/BlobDrawable;->LIGHT_GRADIENT_SIZE:F

    add-float/2addr v9, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v9, v9, v5, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$15300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v1, v5, v8, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v6, v6, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v6, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget v6, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    sget v7, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG:F

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    mul-float v7, v7, v9

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$16200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    mul-float v7, v7, v9

    add-float/2addr v6, v7

    mul-float v6, v6, v3

    invoke-virtual {v1, v6, v6, v5, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$14300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v6, v5, v8, v1, v7}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget v6, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL_MIN:F

    sget v7, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL:F

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    mul-float v7, v7, v9

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$16200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    mul-float v7, v7, v9

    add-float/2addr v6, v7

    mul-float v6, v6, v3

    invoke-virtual {v1, v6, v6, v5, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$14200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v3

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v3, v5, v8, v1, v6}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v2, :cond_1a

    const/high16 v3, 0x42640000    # 57.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v3, v6

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v1, v5, v8, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_connectingProgress:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v13, v4, v6

    float-to-int v6, v13

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v3, 0x42640000    # 57.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v1, v5, v8, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1a
    const/high16 v3, 0x425c0000    # 55.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$15900(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v5, v8, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-nez v2, :cond_1b

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v8}, Lorg/telegram/ui/Components/RadialProgressView;->draw(Landroid/graphics/Canvas;FF)V

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_17

    :cond_1c
    const/4 v2, 0x2

    :goto_d
    if-ge v5, v2, :cond_32

    const/high16 v2, 0x42640000    # 57.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    if-nez v5, :cond_1e

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v11

    if-eqz v11, :cond_1e

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v11

    if-nez v11, :cond_1d

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1d
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$14800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v11

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v11, v13, v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$14600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    const/4 v15, 0x3

    if-ne v13, v15, :cond_20

    goto :goto_e

    :cond_1e
    if-ne v5, v8, :cond_31

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v11

    if-eqz v11, :cond_31

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v11

    if-nez v11, :cond_1f

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/GroupCallActivity$WeavingState;->shader:Landroid/graphics/Shader;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1f
    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$14800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    const/4 v15, 0x3

    if-ne v13, v15, :cond_20

    :goto_e
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v11

    sub-float/2addr v4, v13

    :cond_20
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v13

    if-nez v13, :cond_21

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v13

    if-nez v13, :cond_21

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v13

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackgroundUnscrolled:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButton:I

    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$15800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v12

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v15, v2, v12, v6}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v2

    if-eqz v2, :cond_22

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_rtmpButton:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_disabledButton:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$15800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v2, v12, v13, v15}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v2

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackgroundUnscrolled:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$15800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v15, v6, v13, v7}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v6

    invoke-virtual {v12, v6, v2}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    :cond_22
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    div-int/2addr v12, v7

    int-to-float v7, v12

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$16000(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Matrix;

    move-result-object v7

    int-to-float v2, v2

    int-to-float v6, v6

    invoke-virtual {v7, v2, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$15200(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RadialGradient;

    move-result-object v7

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$16000(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v7

    const/high16 v12, 0x42980000    # 76.0f

    mul-float v12, v12, v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$16300(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    mul-float v12, v12, v13

    float-to-int v12, v12

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$16300(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v7

    const/4 v12, 0x0

    cmpl-float v7, v7, v12

    if-lez v7, :cond_23

    if-ne v5, v8, :cond_23

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$16100(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$16100(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v12

    int-to-float v13, v7

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$16300(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float v13, v13, v15

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v14

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    const/16 v18, 0x2

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    add-float/2addr v13, v15

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getY()F

    move-result v15

    add-float/2addr v15, v12

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$16100(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v1, v13, v15, v12, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$16100(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget v7, Lorg/telegram/ui/Components/BlobDrawable;->GLOBAL_SCALE:F

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F

    move-result v10

    mul-float v7, v7, v10

    sget v10, Lorg/telegram/ui/Components/BlobDrawable;->GLOBAL_SCALE:F

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getScaleX()F

    move-result v12

    mul-float v10, v10, v12

    invoke-virtual {v1, v7, v10, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget-boolean v7, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v7, :cond_24

    const/high16 v7, 0x42820000    # 65.0f

    const/4 v10, 0x0

    goto :goto_f

    :cond_24
    const/high16 v7, 0x42820000    # 65.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$16400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v12, v13, v12

    mul-float v10, v10, v12

    :goto_f
    sget v12, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    sget v13, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG:F

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float v13, v13, v15

    mul-float v13, v13, v9

    add-float/2addr v12, v13

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$15600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    mul-float v13, v13, v12

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$15600(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float v12, v12, v15

    invoke-virtual {v1, v13, v12, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-ne v5, v8, :cond_25

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v12

    if-nez v12, :cond_25

    const/16 v12, 0x200

    invoke-static {v12}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_25

    sget v12, Lorg/telegram/ui/Components/BlobDrawable;->LIGHT_GRADIENT_SIZE:F

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$16200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v13

    mul-float v12, v12, v13

    const v13, 0x3f333333    # 0.7f

    add-float/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v12, v12, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$15300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$15300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v15

    int-to-float v7, v12

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$16300(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    mul-float v7, v7, v9

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget v9, v9, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v9, v16, v9

    mul-float v7, v7, v9

    float-to-int v7, v7

    invoke-virtual {v15, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v7, 0x43200000    # 160.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$15300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v15

    invoke-virtual {v1, v2, v6, v9, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15300(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_10

    :cond_25
    const/high16 v7, 0x43200000    # 160.0f

    const v13, 0x3f333333    # 0.7f

    const/high16 v16, 0x3f800000    # 1.0f

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v9

    if-nez v9, :cond_26

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$16300(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    const/4 v12, 0x0

    cmpl-float v9, v9, v12

    if-lez v9, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget v9, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    sget v12, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG:F

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float v12, v12, v15

    mul-float v12, v12, v3

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$16200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float v12, v12, v15

    add-float/2addr v9, v12

    invoke-virtual {v1, v9, v9, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$14300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v9, v2, v6, v1, v12}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget v9, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL_MIN:F

    sget v12, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL:F

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$12200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float v12, v12, v15

    mul-float v12, v12, v3

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$16200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v15

    mul-float v12, v12, v15

    add-float/2addr v9, v12

    invoke-virtual {v1, v9, v9, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$14200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/BlobDrawable;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v9, v2, v6, v1, v12}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_26
    sget-boolean v9, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v9, :cond_29

    if-nez v5, :cond_28

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v9

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$16400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v11

    :cond_27
    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v11, v11, v12

    float-to-int v11, v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_12

    :cond_28
    const/high16 v12, 0x437f0000    # 255.0f

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v9

    mul-float v11, v11, v12

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$16400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v12

    mul-float v11, v11, v12

    float-to-int v11, v11

    :goto_11
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v12, 0x437f0000    # 255.0f

    goto :goto_12

    :cond_29
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v9

    if-nez v5, :cond_27

    const/16 v11, 0xff

    goto :goto_11

    :goto_12
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->currentButtonsAnimation:Landroid/animation/AnimatorSet;

    if-nez v9, :cond_2a

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_2a
    sget-boolean v9, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v9, :cond_2b

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_2b
    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$16400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v9

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const/4 v11, 0x2

    div-int/2addr v10, v11

    const/high16 v15, 0x41a80000    # 21.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int/2addr v10, v15

    int-to-float v10, v10

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float v17, v4, v10

    mul-float v17, v17, v9

    add-float v10, v10, v17

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$16200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v7

    mul-float v10, v10, v7

    sub-float v7, v4, v15

    mul-float v7, v7, v9

    add-float/2addr v15, v7

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$16200(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v7

    mul-float v15, v15, v7

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$12500(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RectF;

    move-result-object v7

    sub-float v11, v2, v10

    sub-float v12, v6, v15

    add-float/2addr v10, v2

    add-float/2addr v15, v6

    invoke-virtual {v7, v11, v12, v10, v15}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v4, v11

    mul-float v4, v4, v9

    add-float/2addr v10, v4

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$12500(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v1, v4, v10, v10, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-ne v5, v8, :cond_2d

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WeavingState;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/GroupCallActivity$WeavingState;->currentState:I

    const/4 v9, 0x3

    if-ne v4, v9, :cond_2e

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v4

    mul-float v10, v10, v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    :cond_2c
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$14700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v6}, Lorg/telegram/ui/Components/RadialProgressView;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_14

    :cond_2d
    const/4 v9, 0x3

    :cond_2e
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    sget-boolean v2, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v2, :cond_30

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$16400(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2f

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v2

    const/16 v6, 0xff

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$16500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v10

    sub-float/2addr v2, v10

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$16500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$12500(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RectF;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$16500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v2

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v15}, Lorg/telegram/ui/GroupCallActivity;->access$16500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v10

    invoke-virtual {v11, v2, v10, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$12500(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$15700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v1, v2, v10, v7, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_16

    :cond_2f
    :goto_15
    const/16 v6, 0xff

    goto :goto_16

    :cond_30
    const/4 v4, 0x0

    goto :goto_15

    :cond_31
    const/4 v4, 0x0

    const/16 v6, 0xff

    const/4 v9, 0x3

    const v13, 0x3f333333    # 0.7f

    const/high16 v16, 0x3f800000    # 1.0f

    :goto_16
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x2

    const/high16 v6, 0x43200000    # 160.0f

    const v7, 0x3f333333    # 0.7f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x42500000    # 52.0f

    const/16 v12, 0xff

    goto/16 :goto_d

    :cond_32
    :goto_17
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_33
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    div-float v0, v1, v0

    sub-float/2addr v0, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/high16 v4, 0x42f40000    # 122.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v4, 0x2

    div-int/2addr v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :cond_0
    const/4 v7, 0x6

    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, -0x1

    :cond_1
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v7, v7, -0x1

    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v7, v7, -0x1

    :cond_3
    sget-boolean v8, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v11, 0x42500000    # 52.0f

    const/4 v15, 0x4

    if-eqz v8, :cond_d

    sget-boolean v8, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v8, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, v7

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    div-int/lit8 v6, v5, 0x2

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/2addr v8, v4

    sub-int v8, v6, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v16, v16, v2

    shr-int/lit8 v2, v16, 0x1

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v8

    invoke-virtual {v10, v2, v8, v12, v13}, Landroid/view/View;->layout(IIII)V

    if-ne v7, v15, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v6, v2

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v4

    sub-int/2addr v6, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v2, v8

    shr-int/2addr v2, v3

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v2

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v8, v2, v6, v10, v12}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    :cond_5
    div-int/lit8 v2, v5, 0x2

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, v4

    sub-int v6, v2, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v8, v10

    shr-int/2addr v8, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v10, v8, v6, v12, v13}, Landroid/view/View;->layout(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, v4

    sub-int v6, v2, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v8, v10

    shr-int/2addr v8, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v10, v8, v6, v12, v13}, Landroid/view/View;->layout(IIII)V

    if-ne v7, v15, :cond_6

    move v6, v5

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v2, v6

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, v4

    sub-int/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v6, v8

    shr-int/2addr v6, v3

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v6

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v8, v6, v2, v10, v12}, Landroid/view/View;->layout(IIII)V

    :goto_3
    if-ne v7, v15, :cond_7

    mul-int/lit8 v2, v5, 0x3

    goto :goto_4

    :cond_7
    mul-int/lit8 v2, v5, 0x2

    :goto_4
    div-int/lit8 v6, v5, 0x2

    add-int/2addr v2, v6

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/2addr v8, v4

    sub-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v8, v10

    shr-int/2addr v8, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v10, v8, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    if-ne v7, v15, :cond_8

    mul-int/lit8 v2, v5, 0x2

    goto :goto_5

    :cond_8
    move v2, v5

    :goto_5
    add-int/2addr v2, v6

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/2addr v8, v4

    sub-int/2addr v2, v8

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v10, v12

    shr-int/2addr v10, v3

    const/high16 v12, 0x40c00000    # 6.0f

    if-ne v7, v1, :cond_9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v2, v13

    :cond_9
    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v10

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v13, v10, v2, v14, v12}, Landroid/view/View;->layout(IIII)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v10

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v2

    invoke-virtual {v12, v10, v2, v13, v14}, Landroid/view/View;->layout(IIII)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$6500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$6500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v10

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$6500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v2

    invoke-virtual {v12, v10, v2, v13, v14}, Landroid/view/View;->layout(IIII)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v10, v9

    int-to-float v9, v10

    div-float/2addr v2, v9

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v10

    aget-object v10, v10, v2

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    shr-int/2addr v9, v3

    if-ne v7, v15, :cond_a

    mul-int/lit8 v10, v5, 0x2

    goto :goto_7

    :cond_a
    move v10, v5

    :goto_7
    add-int v11, v6, v10

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    div-int/2addr v12, v4

    sub-int/2addr v11, v12

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    const/high16 v12, 0x40c00000    # 6.0f

    if-ne v7, v1, :cond_b

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v11, v13

    :cond_b
    int-to-float v11, v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3f2fdf3b    # 0.687f

    mul-float v13, v13, v14

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    add-float/2addr v11, v13

    float-to-int v11, v11

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v13

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v11

    add-int/2addr v10, v5

    if-le v13, v10, :cond_c

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v11, v10

    :cond_c
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v10

    aget-object v10, v10, v2

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v13

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v9

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v14

    aget-object v14, v14, v2

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v11

    invoke-virtual {v10, v9, v11, v13, v14}, Landroid/view/View;->layout(IIII)V

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v9

    aget-object v9, v9, v2

    const v10, 0x3f2fdf3b    # 0.687f

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleX(F)V

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleY(F)V

    add-int/2addr v2, v3

    goto/16 :goto_6

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v2, :cond_e

    sget-boolean v2, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v7

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v5, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    :goto_8
    const/high16 v8, 0x41d80000    # 27.0f

    if-eqz v5, :cond_11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_13

    div-int/lit8 v12, v2, 0x2

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v4

    sub-int v13, v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v14, v3

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v13

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v14

    invoke-virtual {v3, v13, v14, v8, v9}, Landroid/view/View;->layout(IIII)V

    if-ne v7, v15, :cond_12

    move v3, v2

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v12, v3

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v4

    sub-int/2addr v12, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v3, v8

    sub-int/2addr v3, v10

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v12

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v3

    invoke-virtual {v8, v12, v3, v9, v13}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_c

    :cond_13
    if-ne v7, v15, :cond_14

    move v3, v2

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    :goto_b
    div-int/lit8 v8, v2, 0x2

    add-int/2addr v3, v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v4

    sub-int/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v9, v12

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v12, v3, v9, v13, v14}, Landroid/view/View;->layout(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v4

    sub-int v3, v8, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v9, v12

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v14}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v12, v3, v9, v13, v14}, Landroid/view/View;->layout(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v4

    sub-int/2addr v8, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v3, v9

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v3

    invoke-virtual {v9, v8, v3, v12, v13}, Landroid/view/View;->layout(IIII)V

    :goto_c
    if-ne v7, v15, :cond_15

    mul-int/lit8 v1, v2, 0x3

    goto :goto_d

    :cond_15
    mul-int/lit8 v1, v2, 0x2

    :goto_d
    div-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/2addr v8, v4

    sub-int/2addr v1, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v13}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v8

    invoke-virtual {v9, v1, v8, v12, v13}, Landroid/view/View;->layout(IIII)V

    if-ne v7, v15, :cond_16

    mul-int/lit8 v1, v2, 0x2

    goto :goto_e

    :cond_16
    move v1, v2

    :goto_e
    add-int/2addr v3, v1

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v4

    sub-int/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v1, v8

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v4

    sub-int/2addr v1, v8

    sub-int/2addr v1, v10

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v8, v3, v1, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v8, v3, v1, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$6500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$6500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v8, v3, v1, v9, v10}, Landroid/view/View;->layout(IIII)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v8, 0x15e

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v4, :cond_1f

    if-ne v7, v15, :cond_17

    mul-int/lit8 v3, v2, 0x2

    goto :goto_10

    :cond_17
    move v3, v2

    :goto_10
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v2, v8

    div-int/2addr v8, v4

    add-int/2addr v3, v8

    const/high16 v8, 0x41d80000    # 27.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v6, v9

    if-eqz v5, :cond_19

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v10, :cond_18

    const/high16 v10, 0x40000000    # 2.0f

    :goto_11
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_12

    :cond_18
    const/high16 v10, 0x41c80000    # 25.0f

    goto :goto_11

    :cond_19
    :goto_12
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v10

    aget-object v10, v10, v1

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v11

    aget-object v11, v11, v1

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v12

    aget-object v12, v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v10, v3, v9, v11, v12}, Landroid/view/View;->layout(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const v9, 0x3f2fdf3b    # 0.687f

    invoke-virtual {v3, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v10, 0x15e

    invoke-virtual {v3, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v3, 0x1

    add-int/2addr v1, v3

    goto/16 :goto_f

    :cond_1a
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v5, v1

    div-int/2addr v1, v4

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v6, v3

    div-int/2addr v3, v4

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v1, v3, v8, v9}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v5, v1

    div-int/2addr v1, v4

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    :goto_13
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v6, v3

    div-int/2addr v3, v4

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v1, v3, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_16

    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v5, v1

    div-int/2addr v1, v4

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13500(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    goto :goto_13

    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_14

    :cond_1d
    const/4 v1, 0x0

    goto :goto_15

    :cond_1e
    :goto_14
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_15
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v5, v3

    div-int/2addr v3, v4

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v6, v7

    div-int/2addr v7, v4

    add-int/2addr v7, v2

    sub-int/2addr v7, v1

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v5, v3

    div-int/2addr v3, v4

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v6, v7

    div-int/2addr v7, v4

    add-int/2addr v7, v2

    sub-int/2addr v7, v1

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$13700(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v5, v3

    div-int/2addr v3, v4

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v6, v7

    div-int/2addr v7, v4

    add-int/2addr v7, v2

    add-int/2addr v7, v1

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v1

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$13400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v1, v3, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    :goto_16
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v6, v1

    div-int/2addr v1, v4

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v5

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v5, v3

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v3, v2, v1, v5, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v4

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v6, v2

    div-int/2addr v2, v4

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3, v1, v2, v5, v7}, Landroid/view/View;->layout(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3, v1, v2, v5, v7}, Landroid/view/View;->layout(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$6500(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3, v1, v2, v5, v7}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v4, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v6, v5

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v7

    aget-object v7, v7, v1

    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    iget-object v9, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v7, v3, v5, v8, v9}, Landroid/view/View;->layout(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v7, 0x15e

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v3, 0x1

    add-int/2addr v1, v3

    goto :goto_17

    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/GroupCallActivity;->animateButtonsOnNextLayout:Z

    if-eqz v1, :cond_24

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_21

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$13800(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    if-eqz v6, :cond_20

    if-eqz v7, :cond_20

    sget-object v3, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    new-array v8, v4, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v6, 0x1

    const/4 v10, 0x0

    aput v10, v8, v6

    invoke-static {v5, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v8, v6, [Landroid/animation/Animator;

    aput-object v3, v8, v9

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v3, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    new-array v8, v4, [F

    aput v7, v8, v9

    const/4 v7, 0x0

    aput v7, v8, v6

    invoke-static {v5, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v3, v5, v9

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v3, 0x1

    goto :goto_19

    :cond_20
    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_19
    add-int/2addr v2, v6

    goto :goto_18

    :cond_21
    if-eqz v3, :cond_23

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->currentButtonsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$18;->currentButtonsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_22
    iput-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->currentButtonsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lorg/telegram/ui/GroupCallActivity$18$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/GroupCallActivity$18$1;-><init>(Lorg/telegram/ui/GroupCallActivity$18;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$13800(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$13900(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/ui/GroupCallActivity;->animateButtonsOnNextLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x43e60000    # 460.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f2e147b    # 0.68f

    div-float/2addr v2, v3

    float-to-int v2, v2

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$18;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.class Lorg/telegram/ui/Components/EmbedBottomSheet$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkInlinePermissions()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->checkInlinePermissions()Z

    move-result v0

    return v0
.end method

.method public getTextureViewContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    return-object v0
.end method

.method public onInitFailed()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/Object;Ljava/lang/String;Z)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Referer"

    const-string v2, "messenger.telegram.org"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onInlineSurfaceTextureReady()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->dismissInternal()V

    :cond_0
    return-void
.end method

.method public onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V
    .locals 0

    const/16 p1, 0x80

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void
.end method

.method public onSharePressed()V
    .locals 0

    return-void
.end method

.method public onSwitchInlineMode(Landroid/view/View;ZIIIZ)Landroid/view/TextureView;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    move-object/from16 v5, p1

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    new-instance v1, Landroid/view/TextureView;

    iget-object v3, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v3

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-static {v4, v3, v1, v5, v6}, Lorg/telegram/ui/Components/PipVideoOverlay;->show(ZLandroid/app/Activity;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->setParentSheet(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    return-object v1

    :cond_0
    return-object v2

    :cond_1
    if-eqz p6, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v5, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3502(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    iget-object v5, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/WebPlayerView;->getAspectRatioView()Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v5

    aget v6, v5, v4

    iget-object v7, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v5, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v5

    aget v6, v5, v1

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v5, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v6

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v9, 0x3f800000    # 1.0f

    new-array v10, v1, [F

    aput v9, v10, v4

    invoke-static {v6, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v1, [F

    aput v9, v12, v4

    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    sget-object v13, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget-object v14, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v14}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v14

    aget v14, v14, v4

    int-to-float v14, v14

    new-array v15, v1, [F

    aput v14, v15, v4

    invoke-static {v6, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v2

    aget v2, v2, v1

    int-to-float v2, v2

    new-array v3, v1, [F

    aput v2, v3, v4

    invoke-static {v6, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    aput v9, v3, v4

    invoke-static {v5, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v6, v1, [F

    aput v9, v6, v4

    invoke-static {v5, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v8

    aget v8, v8, v4

    int-to-float v8, v8

    new-array v9, v1, [F

    aput v8, v9, v4

    invoke-static {v5, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I

    move-result-object v9

    aget v9, v9, v1

    int-to-float v9, v9

    new-array v11, v1, [F

    aput v9, v11, v4

    invoke-static {v5, v15, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v9

    new-array v11, v1, [F

    const/4 v13, 0x0

    aput v13, v11, v4

    invoke-static {v9, v15, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v11

    sget-object v13, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    const/16 v15, 0x33

    filled-new-array {v15}, [I

    move-result-object v15

    invoke-static {v11, v13, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const/16 v13, 0xa

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v10, v13, v4

    aput-object v12, v13, v1

    const/4 v1, 0x2

    aput-object v14, v13, v1

    const/4 v1, 0x3

    aput-object v2, v13, v1

    const/4 v1, 0x4

    aput-object v3, v13, v1

    const/4 v1, 0x5

    aput-object v6, v13, v1

    const/4 v1, 0x6

    aput-object v8, v13, v1

    const/4 v1, 0x7

    aput-object v5, v13, v1

    const/16 v1, 0x8

    aput-object v9, v13, v1

    const/16 v1, 0x9

    aput-object v11, v13, v1

    invoke-virtual {v7, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v7, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6$2;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$6$2;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet$6;)V

    invoke-virtual {v7, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$4000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :goto_1
    return-object v1
.end method

.method public onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;
    .locals 0

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/WebPlayerView;->getAspectRatioView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1702(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2, p5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1802(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p3

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2002(Lorg/telegram/ui/Components/EmbedBottomSheet;I)I

    if-eqz p5, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 p2, 0x404

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1802(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_3

    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2000(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onVideoSizeChanged(FI)V
    .locals 0

    return-void
.end method

.method public prepareToSwitchInlineMode(ZLjava/lang/Runnable;FZ)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p3

    const/4 v4, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_4

    iget-object v0, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2000(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v0

    const/4 v7, -0x2

    if-eq v0, v7, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    iget-object v7, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2000(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v7, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    if-eqz p4, :cond_2

    iget-object v0, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    iget-object v7, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v8

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipRect(ZF)Lorg/telegram/ui/Components/Rect;

    move-result-object v2

    iget v9, v2, Lorg/telegram/ui/Components/Rect;->width:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v4, [F

    aput v9, v12, v6

    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v4, [F

    aput v9, v14, v6

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget v3, v2, Lorg/telegram/ui/Components/Rect;->x:F

    new-array v5, v4, [F

    aput v3, v5, v6

    invoke-static {v8, v15, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 p1, v10

    iget v10, v2, Lorg/telegram/ui/Components/Rect;->y:F

    move-object/from16 p3, v3

    new-array v3, v4, [F

    aput v10, v3, v6

    invoke-static {v8, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v8, v4, [F

    aput v9, v8, v6

    invoke-static {v0, v11, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v10, v4, [F

    aput v9, v10, v6

    invoke-static {v0, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget v10, v2, Lorg/telegram/ui/Components/Rect;->x:F

    new-array v11, v4, [F

    aput v10, v11, v6

    invoke-static {v0, v15, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->y:F

    new-array v11, v4, [F

    aput v2, v11, v6

    invoke-static {v0, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v11, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v11, v13

    int-to-float v11, v11

    new-array v13, v4, [F

    aput v11, v13, v6

    invoke-static {v2, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v5, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$2900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v5

    sget-object v11, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    filled-new-array {v6}, [I

    move-result-object v13

    invoke-static {v5, v11, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v11, v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v11

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x0

    new-array v1, v4, [F

    aput v15, v1, v6

    invoke-static {v11, v13, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v11, v4, [F

    aput v15, v11, v6

    invoke-static {v7, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/16 v11, 0xc

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v12, v11, v6

    aput-object v14, v11, v4

    const/4 v4, 0x2

    aput-object p3, v11, v4

    const/4 v4, 0x3

    aput-object v3, v11, v4

    const/4 v3, 0x4

    aput-object v8, v11, v3

    const/4 v3, 0x5

    aput-object v9, v11, v3

    const/4 v3, 0x6

    aput-object v10, v11, v3

    const/4 v3, 0x7

    aput-object v0, v11, v3

    const/16 v0, 0x8

    aput-object v2, v11, v0

    const/16 v0, 0x9

    aput-object v5, v11, v0

    const/16 v0, 0xa

    aput-object v1, v11, v0

    const/16 v0, 0xb

    aput-object v7, v11, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$6$1;

    move-object/from16 v3, p0

    move-object/from16 v2, p2

    invoke-direct {v1, v3, v2}, Lorg/telegram/ui/Components/EmbedBottomSheet$6$1;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet$6;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_3

    :cond_2
    move-object/from16 v2, p2

    move-object v3, v1

    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->dismissInternal()V

    goto/16 :goto_3

    :cond_4
    move-object v3, v1

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v7, Lorg/telegram/messenger/BringAppForegroundService;

    invoke-direct {v1, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-static {v6, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->getPipRect(ZF)Lorg/telegram/ui/Components/Rect;

    move-result-object v0

    iget-object v1, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    iget-object v2, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v2

    iget v5, v0, Lorg/telegram/ui/Components/Rect;->width:F

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    iget v6, v0, Lorg/telegram/ui/Components/Rect;->x:F

    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationX(F)V

    iget v6, v0, Lorg/telegram/ui/Components/Rect;->y:F

    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->x:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss()V

    :goto_2
    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setShowWithoutAnimation(Z)V

    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    if-eqz p4, :cond_7

    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3102(Lorg/telegram/ui/Components/EmbedBottomSheet;I)I

    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v0, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, v3, Lorg/telegram/ui/Components/EmbedBottomSheet$6;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    :goto_3
    return-void
.end method

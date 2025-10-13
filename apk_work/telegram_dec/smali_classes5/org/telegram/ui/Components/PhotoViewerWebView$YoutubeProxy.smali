.class Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoViewerWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YoutubeProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;


# direct methods
.method public static synthetic $r8$lambda$--wBMh8PtTmk0PXT2f659J-DhsI(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->lambda$onPlayerStateChange$4(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$-L7ZujLweiIYoSKzRI9Fp6Ljv5M(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->lambda$onPlayerError$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0LWu1sPCgp-ZP9aMcEBDB4mi520(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->lambda$onPlayerStateChange$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$HlR0a-Bk4wXDwLYWN5pxqpHYeQ0(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->lambda$onPlayerError$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V4YoBIad235lmaYXoh4Mrz9eFxo(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->lambda$onPlayerLoaded$0()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/PhotoViewerWebView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/PhotoViewerWebView;Lorg/telegram/ui/Components/PhotoViewerWebView$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView;)V

    return-void
.end method

.method private synthetic lambda$onPlayerError$1(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1400(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onPlayerError$2(I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$900(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1000(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1100(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x96

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1100(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1100(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1100(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1200(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1200(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1200(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v6, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$1;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$200(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$200(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$200(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$2;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/16 v0, 0x96

    if-eq p1, v0, :cond_4

    const/16 v0, 0x64

    if-eq p1, v0, :cond_3

    const/16 v0, 0x65

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1300(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->YouTubeVideoErrorNotFound:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1300(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->YouTubeVideoErrorNotAvailableInApp:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$900(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->YouTubeVideoErrorOpenExternal:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$900(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$900(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1300(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->YouTubeVideoErrorHTML:I

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1300(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->YouTubeVideoErrorInvalid:I

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$onPlayerLoaded$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1200(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1500(Lorg/telegram/ui/Components/PhotoViewerWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1502(Lorg/telegram/ui/Components/PhotoViewerWebView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1600(Lorg/telegram/ui/Components/PhotoViewerWebView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->setPlaybackSpeed(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1700(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$1700(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$800(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$800(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->checkFullscreenButton()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPlayerStateChange$3()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$200(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onPlayerStateChange$4(ZI)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$800(Lorg/telegram/ui/Components/PhotoViewerWebView;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->updateWebPlayerState(ZI)V

    return-void
.end method


# virtual methods
.method public onPlayerError(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayerLoaded()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayerNotifyBufferedPosition(F)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$702(Lorg/telegram/ui/Components/PhotoViewerWebView;F)F

    return-void
.end method

.method public onPlayerNotifyCurrentPosition(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$602(Lorg/telegram/ui/Components/PhotoViewerWebView;I)I

    return-void
.end method

.method public onPlayerNotifyDuration(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$302(Lorg/telegram/ui/Components/PhotoViewerWebView;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$400(Lorg/telegram/ui/Components/PhotoViewerWebView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$400(Lorg/telegram/ui/Components/PhotoViewerWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$500(Lorg/telegram/ui/Components/PhotoViewerWebView;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$402(Lorg/telegram/ui/Components/PhotoViewerWebView;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onPlayerStateChange(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$000(Lorg/telegram/ui/Components/PhotoViewerWebView;)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v1, v5}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$002(Lorg/telegram/ui/Components/PhotoViewerWebView;Z)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$100(Lorg/telegram/ui/Components/PhotoViewerWebView;Z)V

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    const/4 v4, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x3

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x4

    :goto_3
    if-ne v4, v3, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;->this$0:Lorg/telegram/ui/Components/PhotoViewerWebView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->access$200(Lorg/telegram/ui/Components/PhotoViewerWebView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_6

    new-instance p1, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    new-instance p1, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v2, v4}, Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PhotoViewerWebView$YoutubeProxy;ZI)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

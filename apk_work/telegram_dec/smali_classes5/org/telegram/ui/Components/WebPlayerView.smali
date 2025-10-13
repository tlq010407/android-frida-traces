.class public Lorg/telegram/ui/Components/WebPlayerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;,
        Lorg/telegram/ui/Components/WebPlayerView$ControlsView;,
        Lorg/telegram/ui/Components/WebPlayerView$JavaScriptInterface;,
        Lorg/telegram/ui/Components/WebPlayerView$CallJavaResultInterface;,
        Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;,
        Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;
    }
.end annotation


# static fields
.field private static final aparatFileListPattern:Ljava/util/regex/Pattern;

.field private static final aparatIdRegex:Ljava/util/regex/Pattern;

.field private static final coubIdRegex:Ljava/util/regex/Pattern;

.field private static final exprParensPattern:Ljava/util/regex/Pattern;

.field private static final jsPattern:Ljava/util/regex/Pattern;

.field private static lastContainerId:I = 0xfa1

.field private static final playerIdPattern:Ljava/util/regex/Pattern;

.field private static final sigPattern:Ljava/util/regex/Pattern;

.field private static final sigPattern2:Ljava/util/regex/Pattern;

.field private static final stmtReturnPattern:Ljava/util/regex/Pattern;

.field private static final stmtVarPattern:Ljava/util/regex/Pattern;

.field private static final stsPattern:Ljava/util/regex/Pattern;

.field private static final twitchClipFilePattern:Ljava/util/regex/Pattern;

.field private static final twitchClipIdRegex:Ljava/util/regex/Pattern;

.field private static final twitchStreamIdRegex:Ljava/util/regex/Pattern;

.field private static final vimeoIdRegex:Ljava/util/regex/Pattern;

.field private static final youtubeIdRegex:Ljava/util/regex/Pattern;


# instance fields
.field private allowInlineAnimation:Z

.field private aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private audioFocus:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private changedTextureView:Landroid/view/TextureView;

.field private changingTextureView:Z

.field private controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

.field private currentAlpha:F

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private currentTask:Landroid/os/AsyncTask;

.field private currentYoutubeId:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

.field private drawImage:Z

.field private firstFrameRendered:Z

.field private fragment_container_id:I

.field private fullscreenButton:Landroid/widget/ImageView;

.field private hasAudioFocus:Z

.field private inFullscreen:Z

.field private initied:Z

.field private inlineButton:Landroid/widget/ImageView;

.field private interfaceName:Ljava/lang/String;

.field private isAutoplay:Z

.field private isCompleted:Z

.field private isInline:Z

.field private isLoading:Z

.field private isStream:Z

.field private lastUpdateTime:J

.field private playAudioType:Ljava/lang/String;

.field private playAudioUrl:Ljava/lang/String;

.field private playButton:Landroid/widget/ImageView;

.field private playVideoType:Ljava/lang/String;

.field private playVideoUrl:Ljava/lang/String;

.field private progressAnimation:Landroid/animation/AnimatorSet;

.field private progressRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private resumeAudioOnFocusGain:Z

.field private seekToTime:I

.field private shareButton:Landroid/widget/ImageView;

.field private surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private switchToInlineRunnable:Ljava/lang/Runnable;

.field private switchingInlineMode:Z

.field private textureImageView:Landroid/widget/ImageView;

.field private textureView:Landroid/view/TextureView;

.field private textureViewContainer:Landroid/view/ViewGroup;

.field private videoHeight:I

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoWidth:I

.field private waitingForFirstTextureUpload:I

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$3AFhZiv1RmNiy8Dcl9oWYanpAY8(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AnZJ-dEi4MV_49Wo2YQxIoyWGXg(Lorg/telegram/ui/Components/WebPlayerView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fhc0aErZzf0uDm4evY4OwZZySUU(Lorg/telegram/ui/Components/WebPlayerView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->lambda$onAudioFocusChange$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$siwQUUxdnXIhLNkBV3nb9yGkt0M(Lorg/telegram/ui/Components/WebPlayerView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tD6hV8maxsB7YUS-Kl_k2WHAQZs(Lorg/telegram/ui/Components/WebPlayerView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vPGLjKnciaWV01rF7R8Vj3TlJt4(Lorg/telegram/ui/Components/WebPlayerView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:youtube(?:-nocookie)?\\.com/(?:[^/\\n\\s]+/\\S+/|(?:v|e(?:mbed)?)/|\\S*?[?&]v=)|youtu\\.be/)([a-zA-Z0-9_-]{11})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->youtubeIdRegex:Ljava/util/regex/Pattern;

    const-string v0, "https?://(?:(?:www|(player))\\.)?vimeo(pro)?\\.com/(?!(?:channels|album)/[^/?#]+/?(?:$|[?#])|[^/]+/review/|ondemand/)(?:.*?/)?(?:(?:play_redirect_hls|moogaloop\\.swf)\\?clip_id=)?(?:videos?/)?([0-9]+)(?:/[\\da-f]+)?/?(?:[?&].*)?(?:[#].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->vimeoIdRegex:Ljava/util/regex/Pattern;

    const-string v0, "(?:coub:|https?://(?:coub\\.com/(?:view|embed|coubs)/|c-cdn\\.coub\\.com/fb-player\\.swf\\?.*\\bcoub(?:ID|id)=))([\\da-z]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->coubIdRegex:Ljava/util/regex/Pattern;

    const-string v0, "^https?://(?:www\\.)?aparat\\.com/(?:v/|video/video/embed/videohash/)([a-zA-Z0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->aparatIdRegex:Ljava/util/regex/Pattern;

    const-string v0, "https?://clips\\.twitch\\.tv/(?:[^/]+/)*([^/?#&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->twitchClipIdRegex:Ljava/util/regex/Pattern;

    const-string v0, "https?://(?:(?:www\\.)?twitch\\.tv/|player\\.twitch\\.tv/\\?.*?\\bchannel=)([^/#?]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->twitchStreamIdRegex:Ljava/util/regex/Pattern;

    const-string v0, "fileList\\s*=\\s*JSON\\.parse\\(\'([^\']+)\'\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->aparatFileListPattern:Ljava/util/regex/Pattern;

    const-string v0, "clipInfo\\s*=\\s*(\\{[^\']+\\});"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->twitchClipFilePattern:Ljava/util/regex/Pattern;

    const-string v0, "\"sts\"\\s*:\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stsPattern:Ljava/util/regex/Pattern;

    const-string v0, "\"assets\":.+?\"js\":\\s*(\"[^\"]+\")"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->jsPattern:Ljava/util/regex/Pattern;

    const-string v0, "\\.sig\\|\\|([a-zA-Z0-9$]+)\\("

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern:Ljava/util/regex/Pattern;

    const-string v0, "[\"\']signature[\"\']\\s*,\\s*([a-zA-Z0-9$]+)\\("

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern2:Ljava/util/regex/Pattern;

    const-string v0, "var\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtVarPattern:Ljava/util/regex/Pattern;

    const-string v0, "return(?:\\s+|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtReturnPattern:Ljava/util/regex/Pattern;

    const-string v0, "[()]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->exprParensPattern:Ljava/util/regex/Pattern;

    const-string v0, ".*?-([a-zA-Z0-9_-]+)(?:/watch_as3|/html5player(?:-new)?|(?:/[a-z]{2}_[A-Z]{2})?/base)?\\.([a-z]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/WebPlayerView;->playerIdPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/ui/Components/WebPlayerView;->lastContainerId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Components/WebPlayerView;->lastContainerId:I

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fragment_container_id:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$2;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$3;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchToInlineRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p4, Lorg/telegram/ui/Components/WebPlayerView$4;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$4;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v0, -0x1

    const/16 v1, 0x11

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p4, "JavaScriptInterface"

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->interfaceName:Ljava/lang/String;

    new-instance p4, Lorg/telegram/ui/Components/WebPlayerView$5;

    invoke-direct {p4, p0, p1, p1}, Lorg/telegram/ui/Components/WebPlayerView$5;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    new-instance v2, Lorg/telegram/ui/Components/WebPlayerView$JavaScriptInterface;

    new-instance v4, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/WebPlayerView$JavaScriptInterface;-><init>(Lorg/telegram/ui/Components/WebPlayerView$CallJavaResultInterface;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->interfaceName:Ljava/lang/String;

    invoke-virtual {p4, v2, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    invoke-virtual {p4, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v2, "utf-8"

    invoke-virtual {p4, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {p4}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->getTextureViewContainer()Landroid/view/ViewGroup;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    new-instance p4, Landroid/view/TextureView;

    invoke-direct {p4, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p4, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz p4, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-boolean p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    if-eqz p4, :cond_2

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz p4, :cond_2

    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/high16 v3, -0x10000

    invoke-virtual {p4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    new-instance p4, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {p4}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p4, p0}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p4, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    new-instance p4, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    new-instance p4, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {p4, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p4, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v0, 0x30

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/high16 v10, 0x40a00000    # 5.0f

    const/16 v4, 0x38

    const/high16 v5, 0x42600000    # 56.0f

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {p4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p4, 0x35

    const/16 v1, 0x38

    if-eqz p2, :cond_4

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    invoke-static {v1, v0, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p3, :cond_5

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->ic_share_video:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    invoke-static {v1, v0, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    new-instance p2, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern2:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->interfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    return p1
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isStream:Z

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isStream:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->onInitFailed()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$2200()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->aparatFileListPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->twitchClipFilePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/WebPlayerView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/WebPlayerView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->exprParensPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/WebPlayerView;Landroid/view/TextureView;)Landroid/view/TextureView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/WebPlayerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/WebPlayerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/WebPlayerView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoWidth:I

    return p0
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtVarPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/WebPlayerView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoHeight:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/WebPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->drawImage:Z

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/WebPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/WebPlayerView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    return p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/WebPlayerView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    return p1
.end method

.method static synthetic access$4724(Lorg/telegram/ui/Components/WebPlayerView;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/WebPlayerView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Components/WebPlayerView;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stmtReturnPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/WebPlayerView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->stsPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->jsPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->playerIdPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->sigPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private checkAudioFocus()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->hasAudioFocus:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->hasAudioFocus:Z

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    :cond_0
    return-void
.end method

.method private getControlView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    return-object v0
.end method

.method private getProgressView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object v0
.end method

.method public static getYouTubeVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/WebPlayerView;->youtubeIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    instance-of v1, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->access$5300(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->checkInlinePermissions()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchToInlineRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    invoke-interface {v0, p1, v1, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->prepareToSwitchInlineMode(ZLjava/lang/Runnable;FZ)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eq v0, p0, :cond_3

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    :cond_4
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eq v0, p0, :cond_8

    if-eqz v0, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    invoke-interface {p1, v1, v2, v0, v3}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->prepareToSwitchInlineMode(ZLjava/lang/Runnable;FZ)V

    :cond_9
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSharePressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAudioFocusChange$5(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->hasAudioFocus:Z

    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->resumeAudioOnFocusGain:Z

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->resumeAudioOnFocusGain:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_0

    :cond_2
    const/4 v2, -0x3

    if-ne p1, v2, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    if-ne p1, v2, :cond_4

    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->audioFocus:I

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->resumeAudioOnFocusGain:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    :cond_4
    :goto_0
    return-void
.end method

.method private onInitFailed()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onInitFailed()V

    return-void
.end method

.method private preparePlayer()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->playAudioType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isLoading:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_3
    return-void
.end method

.method private showProgress(ZZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    new-array p1, v1, [F

    aput v2, p1, v0

    const-string v2, "alpha"

    invoke-static {v4, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/WebPlayerView$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/WebPlayerView$6;-><init>(Lorg/telegram/ui/Components/WebPlayerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private updateFullscreenButton()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_gofullscreen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/high16 v7, 0x40a00000    # 5.0f

    :goto_0
    const/16 v1, 0x38

    const/high16 v2, 0x42600000    # 56.0f

    const/16 v3, 0x55

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_outfullscreen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->fullscreenButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateFullscreenState(Z)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eq v0, p0, :cond_6

    if-eqz v0, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_6
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getVideoRotation()I

    move-result v6

    move v7, p1

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5100(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    goto :goto_4

    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eq v0, p0, :cond_b

    if-eqz v0, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_b
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getVideoRotation()I

    move-result v6

    move v7, p1

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSwitchToFullscreen(Landroid/view/View;ZFIZ)Landroid/view/TextureView;

    :goto_4
    return-void
.end method

.method private updateInlineButton()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_goinline:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_outinline:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    const/16 v1, 0x35

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    const/16 v2, 0x28

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inlineButton:Landroid/widget/ImageView;

    const/16 v2, 0x38

    const/16 v3, 0x32

    invoke-static {v2, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    goto :goto_2

    :goto_3
    return-void
.end method

.method private updatePlayButton()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5100(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_againinline:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_again:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_playinline:I

    goto :goto_0

    :cond_2
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_play:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->playButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_pauseinline:I

    goto :goto_1

    :cond_4
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_pause:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->checkAudioFocus()V

    :goto_2
    return-void
.end method

.method private updateShareButton()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->shareButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public canHandleUrl(Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_c

    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lorg/telegram/ui/Components/WebPlayerView;->youtubeIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    return v1

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :try_start_1
    sget-object v2, Lorg/telegram/ui/Components/WebPlayerView;->vimeoIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    :cond_3
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_4

    return v1

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :try_start_2
    sget-object v2, Lorg/telegram/ui/Components/WebPlayerView;->aparatIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_5

    :cond_5
    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_6

    return v1

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :try_start_3
    sget-object v2, Lorg/telegram/ui/Components/WebPlayerView;->twitchClipIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_7

    :cond_7
    move-object v2, v0

    :goto_6
    if-eqz v2, :cond_8

    return v1

    :goto_7
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :try_start_4
    sget-object v2, Lorg/telegram/ui/Components/WebPlayerView;->twitchStreamIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v2

    goto :goto_9

    :cond_9
    move-object v2, v0

    :goto_8
    if-eqz v2, :cond_a

    return v1

    :goto_9
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a
    :try_start_5
    sget-object v2, Lorg/telegram/ui/Components/WebPlayerView;->coubIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_a

    :catch_5
    move-exception p1

    goto :goto_b

    :cond_b
    :goto_a
    if-eqz v0, :cond_c

    return v1

    :goto_b
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method

.method protected downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/String;
    .locals 18

    .line 0
    const-string v0, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    const-string v1, "Accept-Charset"

    const-string v2, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    const-string v3, "Accept"

    const-string v4, "en-us,en;q=0.5"

    const-string v5, "Accept-Language"

    const-string v6, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    const-string v7, "User-Agent"

    const/4 v8, 0x1

    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v12, p2

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v12, v7, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, "gzip, deflate"

    const-string v14, "Accept-Encoding"

    if-eqz p4, :cond_0

    :try_start_2
    invoke-virtual {v12, v14, v13}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {v12, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v9, v10}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v9, 0x1388

    invoke-virtual {v12, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v12, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v9, v12, Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_4

    move-object v9, v12

    check-cast v9, Ljava/net/HttpURLConnection;

    invoke-virtual {v9, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v15, 0x12e

    if-eq v10, v15, :cond_2

    const/16 v15, 0x12d

    if-eq v10, v15, :cond_2

    const/16 v15, 0x12f

    if-ne v10, v15, :cond_4

    :cond_2
    const-string v10, "Location"

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Set-Cookie"

    invoke-virtual {v9, v11}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    const-string v10, "Cookie"

    invoke-virtual {v12, v10, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v7, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    invoke-virtual {v12, v14, v13}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v12, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12, v2, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Ljava/net/URLConnection;->connect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_5

    :try_start_3
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    :try_start_4
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URLConnection;->connect()V

    :cond_5
    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    move-object v1, v0

    const/4 v0, 0x1

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v12, 0x0

    :goto_4
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_6

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_6
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ECONNRESET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_8
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_9

    :goto_5
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    const/4 v1, 0x1

    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v1

    const/4 v1, 0x0

    :goto_7
    if-eqz v0, :cond_11

    :try_start_5
    instance-of v0, v12, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    check-cast v12, Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a
    :goto_8
    if-eqz v1, :cond_f

    const v0, 0x8000

    :try_start_6
    new-array v0, v0, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v2, 0x0

    :goto_9
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_b

    const/4 v6, 0x0

    goto :goto_b

    :cond_b
    :try_start_8
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_d

    if-nez v2, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v4

    goto :goto_a

    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    goto :goto_d

    :catch_2
    move-exception v0

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    :goto_a
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v6, 0x0

    :try_start_9
    invoke-direct {v4, v0, v6, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_d
    const/4 v6, 0x0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_e

    goto :goto_e

    :cond_e
    :goto_b
    const/4 v8, 0x0

    goto :goto_e

    :goto_c
    :try_start_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_b

    :catchall_4
    move-exception v0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    const/4 v2, 0x0

    goto :goto_b

    :goto_e
    if-eqz v1, :cond_10

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_10
    :goto_f
    move v10, v8

    goto :goto_10

    :cond_11
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_12

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    :cond_12
    const/4 v9, 0x0

    :goto_11
    return-object v9
.end method

.method public enterFullscreen()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenState(Z)V

    return-void
.end method

.method public exitFullscreen()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenState(Z)V

    return-void
.end method

.method public getAspectRatioView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method public getControlsView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    return-object v0
.end method

.method public getCoubId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->coubIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    return-object p1

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method public getTextureImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public getYoutubeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentYoutubeId:Ljava/lang/String;

    return-object v0
.end method

.method public isInFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    return v0
.end method

.method public isInitied()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "m"

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Components/WebPlayerView;->getCoubId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/WebPlayerView;->getCoubId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_0
    const/4 v10, -0x1

    iput v10, v1, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I

    const/4 v10, 0x0

    if-nez v9, :cond_11

    if-eqz v2, :cond_11

    const-string v11, ".mp4"

    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v0, v2

    move-object v8, v10

    :goto_0
    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    goto/16 :goto_17

    :cond_1
    if-eqz v0, :cond_4

    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v11, "t"

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    const-string v11, "time_continue"

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v11, :cond_4

    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v8, v0, v7

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    aget-object v0, v0, v6

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v8, v0

    goto :goto_2

    :cond_3
    invoke-static {v11}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    iput v8, v1, Lorg/telegram/ui/Components/WebPlayerView;->seekToTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_4
    :goto_4
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->youtubeIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :cond_5
    move-object v0, v10

    :goto_5
    if-eqz v0, :cond_6

    move-object v8, v0

    goto :goto_7

    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    move-object v8, v10

    :goto_7
    if-nez v8, :cond_8

    :try_start_2
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->vimeoIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_9

    :cond_7
    move-object v0, v10

    :goto_8
    if-eqz v0, :cond_8

    move-object v11, v0

    goto :goto_a

    :goto_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    move-object v11, v10

    :goto_a
    if-nez v11, :cond_a

    :try_start_3
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->aparatIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_9
    move-object v0, v10

    :goto_b
    if-eqz v0, :cond_a

    move-object v12, v0

    goto :goto_d

    :goto_c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a
    move-object v12, v10

    :goto_d
    if-nez v12, :cond_c

    :try_start_4
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->twitchClipIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_f

    :cond_b
    move-object v0, v10

    :goto_e
    if-eqz v0, :cond_c

    move-object v13, v0

    goto :goto_10

    :goto_f
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_c
    move-object v13, v10

    :goto_10
    if-nez v13, :cond_e

    :try_start_5
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->twitchStreamIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_11

    :catch_5
    move-exception v0

    goto :goto_12

    :cond_d
    move-object v0, v10

    :goto_11
    if-eqz v0, :cond_e

    move-object v14, v0

    goto :goto_13

    :goto_12
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_e
    move-object v14, v10

    :goto_13
    if-nez v14, :cond_10

    :try_start_6
    sget-object v0, Lorg/telegram/ui/Components/WebPlayerView;->coubIdRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_14

    :catch_6
    move-exception v0

    goto :goto_16

    :cond_f
    move-object v0, v10

    :goto_14
    if-eqz v0, :cond_10

    move-object v9, v0

    :cond_10
    :goto_15
    move-object v0, v10

    goto :goto_17

    :goto_16
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_11
    move-object v0, v10

    move-object v8, v0

    goto/16 :goto_0

    :goto_17
    iput-boolean v7, v1, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    iput-boolean v7, v1, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    move/from16 v15, p5

    iput-boolean v15, v1, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    iput-object v10, v1, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    iput-object v10, v1, Lorg/telegram/ui/Components/WebPlayerView;->playAudioUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->destroy()V

    iput-boolean v7, v1, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    const/high16 v15, 0x3f800000    # 1.0f

    iput v15, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentAlpha:F

    iget-object v15, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v15, :cond_12

    invoke-virtual {v15, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v10, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenButton()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateShareButton()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updateInlineButton()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    if-eqz v3, :cond_13

    iget-object v15, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v4, 0x50

    invoke-static {v15, v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-object v15, v1, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {v15}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5000(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v16

    invoke-static {v4, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    const/16 v23, 0x0

    const/16 v25, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v20, "80_80_b"

    const-wide/16 v21, 0x0

    move-object/from16 v24, p3

    invoke-virtual/range {v16 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    iput-boolean v6, v1, Lorg/telegram/ui/Components/WebPlayerView;->drawImage:Z

    goto :goto_18

    :cond_13
    iput-boolean v7, v1, Lorg/telegram/ui/Components/WebPlayerView;->drawImage:Z

    :cond_14
    :goto_18
    iget-object v3, v1, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v10, v1, Lorg/telegram/ui/Components/WebPlayerView;->progressAnimation:Landroid/animation/AnimatorSet;

    :cond_15
    iput-boolean v6, v1, Lorg/telegram/ui/Components/WebPlayerView;->isLoading:Z

    iget-object v3, v1, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setProgress(I)V

    if-eqz v8, :cond_16

    iput-object v8, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentYoutubeId:Ljava/lang/String;

    move-object v8, v10

    :cond_16
    if-eqz v0, :cond_18

    iput-boolean v6, v1, Lorg/telegram/ui/Components/WebPlayerView;->initied:Z

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;

    const-string v2, "other"

    iput-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView;->playVideoType:Ljava/lang/String;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/WebPlayerView;->isAutoplay:Z

    if-eqz v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V

    :cond_17
    invoke-direct {v1, v7, v7}, Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V

    iget-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v2, v6, v6}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    goto/16 :goto_1c

    :cond_18
    if-eqz v8, :cond_19

    new-instance v2, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    invoke-direct {v2, v1, v8}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Void;

    aput-object v10, v4, v7

    aput-object v10, v4, v6

    const/4 v15, 0x2

    aput-object v10, v4, v15

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_19
    iput-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    goto/16 :goto_1b

    :cond_19
    const/4 v15, 0x2

    if-eqz v11, :cond_1a

    new-instance v2, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;

    invoke-direct {v2, v1, v11}, Lorg/telegram/ui/Components/WebPlayerView$VimeoVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Void;

    aput-object v10, v4, v7

    aput-object v10, v4, v6

    aput-object v10, v4, v15

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_19

    :cond_1a
    if-eqz v9, :cond_1b

    new-instance v2, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;

    invoke-direct {v2, v1, v9}, Lorg/telegram/ui/Components/WebPlayerView$CoubVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Void;

    aput-object v10, v4, v7

    aput-object v10, v4, v6

    aput-object v10, v4, v15

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    :goto_1a
    iput-boolean v6, v1, Lorg/telegram/ui/Components/WebPlayerView;->isStream:Z

    goto :goto_1b

    :cond_1b
    if-eqz v12, :cond_1c

    new-instance v2, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;

    invoke-direct {v2, v1, v12}, Lorg/telegram/ui/Components/WebPlayerView$AparatVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Void;

    aput-object v10, v4, v7

    aput-object v10, v4, v6

    const/4 v15, 0x2

    aput-object v10, v4, v15

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_19

    :cond_1c
    const/4 v15, 0x2

    if-eqz v13, :cond_1d

    new-instance v3, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;

    invoke-direct {v3, v1, v2, v13}, Lorg/telegram/ui/Components/WebPlayerView$TwitchClipVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Void;

    aput-object v10, v4, v7

    aput-object v10, v4, v6

    aput-object v10, v4, v15

    invoke-virtual {v3, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-object v3, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    goto :goto_1b

    :cond_1d
    if-eqz v14, :cond_1e

    new-instance v3, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;

    invoke-direct {v3, v1, v2, v14}, Lorg/telegram/ui/Components/WebPlayerView$TwitchStreamVideoTask;-><init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v5, [Ljava/lang/Void;

    aput-object v10, v4, v7

    aput-object v10, v4, v6

    aput-object v10, v4, v15

    invoke-virtual {v3, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-object v3, v1, Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;

    goto :goto_1a

    :cond_1e
    :goto_1b
    iget-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v2, v7, v7}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V

    :goto_1c
    if-nez v8, :cond_20

    if-nez v11, :cond_20

    if-nez v9, :cond_20

    if-nez v12, :cond_20

    if-nez v0, :cond_20

    if-nez v13, :cond_20

    if-eqz v14, :cond_1f

    goto :goto_1d

    :cond_1f
    iget-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return v7

    :cond_20
    :goto_1d
    iget-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    return v6
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/WebPlayerView;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->onInitFailed()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p4, p2

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p1, p4, p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p5, p3

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int p3, p5, p3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p3, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p4

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p1, p4, p5, p3, v0}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->access$5000(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p4, p2

    int-to-float p2, p4

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p3, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, p2, v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->lastUpdateTime:J

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onRenderedFirstFrame(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekFinished(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekStarted(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 5

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setDuration(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x4

    const/4 v1, 0x1

    if-eq p2, p1, :cond_2

    if-eq p2, v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v0, p0, v1}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {v2, p0, v0}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onPlayStateChanged(Lorg/telegram/ui/Components/WebPlayerView;Z)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eq p2, p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    goto :goto_2

    :cond_3
    if-ne p2, p1, :cond_4

    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->isInline:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return v2

    :cond_2
    return v1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 7

    iget p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoWidth:I

    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoHeight:I

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getVideoRotation()I

    move-result v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/WebPlayerView;->allowInlineAnimation:Z

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onSwitchInlineMode(Landroid/view/View;ZIIIZ)Landroid/view/TextureView;

    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->waitingForFirstTextureUpload:I

    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq p3, v1, :cond_1

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p2

    move p2, p1

    move p1, v2

    :cond_1
    :goto_0
    int-to-float p2, p2

    mul-float p2, p2, p4

    float-to-int p4, p2

    iput p4, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoWidth:I

    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoHeight:I

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    int-to-float p1, p1

    div-float p1, p2, p1

    :goto_1
    invoke-virtual {v0, p1, p3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    iget-boolean p2, p0, Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView;->delegate:Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    invoke-interface {p2, p1, p3}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onVideoSizeChanged(FI)V

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    return-void
.end method

.method public updateTextureImageView()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->changedTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView;->textureImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public willHandle()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView;->controlsView:Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->showProgress(ZZ)V

    return-void
.end method

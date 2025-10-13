.class public Lorg/telegram/ui/Components/EmbedBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmbedBottomSheet$YoutubeProxy;
    }
.end annotation


# static fields
.field private static instance:Lorg/telegram/ui/Components/EmbedBottomSheet;


# instance fields
.field private animationInProgress:Z

.field private containerLayout:Landroid/widget/FrameLayout;

.field private copyTextButton:Landroid/widget/TextView;

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private embedUrl:Ljava/lang/String;

.field private fullscreenVideoContainer:Landroid/widget/FrameLayout;

.field private fullscreenedByButton:Z

.field private hasDescription:Z

.field private height:I

.field private imageButtonsContainer:Landroid/widget/LinearLayout;

.field private isYouTube:Z

.field private lastOrientation:I

.field private onShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private openUrl:Ljava/lang/String;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private parentActivity:Landroid/app/Activity;

.field private pipButton:Landroid/widget/ImageView;

.field private position:[I

.field private prevOrientation:I

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressBarBlackBackground:Landroid/view/View;

.field private seekTimeOverride:I

.field private videoView:Lorg/telegram/ui/Components/WebPlayerView;

.field private waitingForDraw:I

.field private wasInLandscape:Z

.field private webView:Landroid/webkit/WebView;

.field private width:I

.field private final youtubeFrame:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$AkrgWKM0QD5pl8EDLqSwiOcknAs(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O6NVxHxtixbL3TK-8ag5-tibp1s(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S-kOR4yxcWYcfil20foExCOr_sg(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SzW7M7iXrzRHJl79CZ9ruXBP7-s(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TYGq2_Sm_y4Rvgth4JDN1AR7Az8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZkrgZlkVSzB6qtOfyLrMh7Sv2xk(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    const/4 v7, 0x2

    new-array v8, v7, [I

    iput-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    const/4 v8, -0x1

    iput v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->lastOrientation:I

    const/4 v9, -0x2

    iput v9, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I

    const-string v10, "<!DOCTYPE html><html><head><style>body { margin: 0; width:100%%; height:100%%;  background-color:#000; }html { width:100%%; height:100%%; background-color:#000; }.embed-container iframe,.embed-container object,   .embed-container embed {       position: absolute;       top: 0;       left: 0;       width: 100%% !important;       height: 100%% !important;   }   </style></head><body>   <div class=\"embed-container\">       <div id=\"player\"></div>   </div>   <script src=\"https://www.youtube.com/iframe_api\"></script>   <script>   var player;   var observer;   var videoEl;   var playing;   var posted = false;   YT.ready(function() {       player = new YT.Player(\"player\", {                              \"width\" : \"100%%\",                              \"events\" : {                              \"onReady\" : \"onReady\",                              \"onError\" : \"onError\",                              \"onStateChange\" : \"onStateChange\",                              },                              \"videoId\" : \"%1$s\",                              \"height\" : \"100%%\",                              \"playerVars\" : {                              \"start\" : %2$d,                              \"rel\" : 1,                              \"showinfo\" : 0,                              \"modestbranding\" : 0,                              \"iv_load_policy\" : 3,                              \"autohide\" : 1,                              \"autoplay\" : 1,                              \"cc_load_policy\" : 1,                              \"playsinline\" : 1,                              \"controls\" : 1                              }                            });        player.setSize(window.innerWidth, window.innerHeight);    });    function hideControls() {        playing = !videoEl.paused;       videoEl.controls = 0;       observer.observe(videoEl, {attributes: true});    }    function showControls() {        playing = !videoEl.paused;       observer.disconnect();       videoEl.controls = 1;    }    function onError(event) {       if (!posted) {            if (window.YoutubeProxy !== undefined) {                   YoutubeProxy.postEvent(\"loaded\", null);             }            posted = true;       }    }    function onStateChange(event) {       if (event.data == YT.PlayerState.PLAYING && !posted) {            if (window.YoutubeProxy !== undefined) {                   YoutubeProxy.postEvent(\"loaded\", null);             }            posted = true;       }    }    function onReady(event) {       player.playVideo();    }    window.onresize = function() {       player.setSize(window.innerWidth, window.innerHeight);       player.playVideo();    }    </script></body></html>"

    iput-object v10, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->youtubeFrame:Ljava/lang/String;

    new-instance v10, Lorg/telegram/ui/Components/EmbedBottomSheet$1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$1;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    const/4 v10, 0x1

    iput-boolean v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->fullWidth:Z

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    move/from16 v11, p8

    iput v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->seekTimeOverride:I

    instance-of v11, v1, Landroid/app/Activity;

    if-eqz v11, :cond_0

    move-object v11, v1

    check-cast v11, Landroid/app/Activity;

    iput-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;

    :cond_0
    move-object/from16 v11, p5

    iput-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->embedUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    iput-boolean v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    iput-object v3, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->openUrl:Ljava/lang/String;

    iput v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->width:I

    iput v5, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->height:I

    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    :cond_2
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iput v5, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->width:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v7

    iput v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->height:I

    :cond_3
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v10}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v4, v11, :cond_4

    iget-object v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_4
    iget-object v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    new-instance v13, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v13, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v8, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    new-instance v12, Lorg/telegram/ui/Components/EmbedBottomSheet$2;

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet$2;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    new-instance v14, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v14}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v12, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    new-instance v12, Lorg/telegram/ui/Components/EmbedBottomSheet$3;

    invoke-direct {v12, v0, v1, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet$3;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    if-lt v4, v11, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-static {v4, v6}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebSettings;I)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-static {v4, v11, v10}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/CookieManager;Landroid/webkit/WebView;Z)V

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    new-instance v11, Lorg/telegram/ui/Components/EmbedBottomSheet$4;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$4;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v4, v11}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    new-instance v11, Lorg/telegram/ui/Components/EmbedBottomSheet$5;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$5;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v4, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    iget-boolean v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    const/16 v14, 0x16

    if-eqz v12, :cond_6

    const/16 v12, 0x16

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    :goto_1
    add-int/lit8 v12, v12, 0x54

    int-to-float v12, v12

    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x33

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v12

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/WebPlayerView;

    new-instance v11, Lorg/telegram/ui/Components/EmbedBottomSheet$6;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$6;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-direct {v4, v1, v10, v6, v11}, Lorg/telegram/ui/Components/WebPlayerView;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    iget-boolean v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    if-eqz v12, :cond_7

    const/16 v12, 0x16

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    :goto_2
    add-int/lit8 v12, v12, 0x4a

    int-to-float v12, v12

    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x33

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v12

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBarBlackBackground:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBarBlackBackground:Landroid/view/View;

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBarBlackBackground:Landroid/view/View;

    iget-boolean v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    if-eqz v11, :cond_8

    const/16 v11, 0x16

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v11, v11, 0x54

    int-to-float v11, v11

    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x33

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v11

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    iget-boolean v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    if-eqz v11, :cond_9

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    :goto_4
    add-int/lit8 v14, v14, 0x54

    div-int/2addr v14, v7

    int-to-float v7, v14

    const/4 v15, -0x2

    const/high16 v16, -0x40000000    # -2.0f

    const/16 v17, 0x11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v7

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v4, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    const/high16 v5, 0x41900000    # 18.0f

    if-eqz v4, :cond_a

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v4, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v2, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    const/16 v19, 0x0

    const/high16 v20, 0x429a0000    # 77.0f

    const/4 v14, -0x1

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x53

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v7, p2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v2, v11, v6, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    const/16 v19, 0x0

    const/high16 v20, 0x42640000    # 57.0f

    const/4 v14, -0x1

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x53

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogGrayLine:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v14, 0x53

    invoke-direct {v12, v8, v10, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v11, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    const/16 v12, 0x30

    invoke-static {v8, v12, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v11, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/16 v14, 0x35

    invoke-static {v9, v8, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue4:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-static {v10, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v14, v10, v6, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v10, Lorg/telegram/messenger/R$string;->Close:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v10, 0x33

    invoke-static {v9, v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v14, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->imageButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->imageButtonsContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v8, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/messenger/R$drawable;->ic_goinline:I

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/messenger/R$string;->AccDescrPipMode:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v2, v14}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v13, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-static {v13, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->imageButtonsContainer:Landroid/widget/LinearLayout;

    iget-object v13, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    const/high16 v24, 0x40800000    # 4.0f

    const/16 v25, 0x0

    const/16 v19, 0x30

    const/high16 v20, 0x42400000    # 48.0f

    const/16 v21, 0x33

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    new-instance v13, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v12, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-direct {v12, v14, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->imageButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x30

    invoke-static {v12, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    const/4 v12, 0x1

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-static {v12, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v8, v12, v6, v13, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    const/4 v12, -0x1

    invoke-static {v9, v12, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v11, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v2, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v1, v6, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    sget v1, Lorg/telegram/messenger/R$string;->OpenInBrowser:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, -0x1

    invoke-static {v9, v1, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->embedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->canHandleUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/WebPlayerView;->canHandleUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    const/4 v12, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v12, 0x1

    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v12, :cond_d

    const/4 v2, 0x0

    goto :goto_7

    :cond_d
    const/4 v2, 0x4

    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v12, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->willHandle()V

    :cond_e
    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$8;

    invoke-direct {v1, v0, v12}, Lorg/telegram/ui/Components/EmbedBottomSheet$8;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$9;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/EmbedBottomSheet$9;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    iget-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->embedUrl:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getYouTubeVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    if-nez v12, :cond_12

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->imageButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBarBlackBackground:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    if-eqz v1, :cond_12

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->youtubePipType:Ljava/lang/String;

    const-string v2, "disabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_8

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    :goto_8
    sput-object v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBarBlackBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->isYouTube:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->isYouTube:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->imageButtonsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->copyTextButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->embedUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->wasInLandscape:Z

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->wasInLandscape:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenedByButton:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenedByButton:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/EmbedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/EmbedBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/EmbedBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->waitingForDraw:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->animationInProgress:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->openUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/EmbedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->seekTimeOverride:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/OrientationEventListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-object p0
.end method

.method static synthetic access$500()Lorg/telegram/ui/Components/EmbedBottomSheet;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/EmbedBottomSheet;
    .locals 0

    sput-object p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EmbedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->width:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EmbedBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->height:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->customView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->customView:Landroid/view/View;

    return-object p1
.end method

.method public static getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-object v0
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->isYouTube:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->youtubePipType:Ljava/lang/String;

    const-string v0, "inapp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->checkInlinePermissions()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    iget v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->width:I

    iget v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->height:I

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->show(ZLandroid/app/Activity;Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lorg/telegram/ui/Components/PipVideoOverlay;->setParentSheet(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->isYouTube:Z

    if-eqz p1, :cond_5

    const-string p1, "hideControls();"

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->runJsCode(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->dismissInternal()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 2

    :try_start_0
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v0, "label"

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->openUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;

    instance-of v0, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    new-instance v0, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LaunchActivity;->showBulletin(Landroidx/arch/core/util/Function;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->openUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private runJsCode(Ljava/lang/String;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 19

    .line 0
    move-object/from16 v1, p1

    sget-object v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->destroy()V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_1

    invoke-static/range {p6 .. p6}, Lorg/telegram/ui/Components/WebPlayerView;->getYouTubeVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p9

    move-object/from16 v10, p2

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ChatActivity;JJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    new-instance v0, Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    move-object v10, v0

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/Components/EmbedBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :goto_1
    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 11

    .line 0
    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

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

.method protected canDismissWithTouchOutside()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkInlinePermissions()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline25;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayPermissionDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->destroy()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->dismissInternal()V

    return-void
.end method

.method public dismissInternal()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

.method public exitFromPip()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/BringAppForegroundService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->isYouTube:Z

    if-eqz v0, :cond_2

    const-string v0, "showControls();"

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->runJsCode(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/16 v2, 0x16

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x54

    int-to-float v10, v2

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setShowWithoutAnimation(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInitied()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInline()Z

    move-result v0

    if-nez v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/WebPlayerView;->enterFullscreen()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onContainerDraw(Landroid/graphics/Canvas;)V
    .locals 0

    iget p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->waitingForDraw:I

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->waitingForDraw:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/WebPlayerView;->updateTextureImageView()V

    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onContainerTranslationYChanged(F)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->updateTextureViewPosition()V

    return-void
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->updateTextureViewPosition()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/WebPlayerView;->getAspectRatioView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_0
    add-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return p3
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInitied()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->pause()V

    :cond_0
    return-void
.end method

.method public updateTextureViewPosition()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getAspectRatioView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInline()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->animationInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v3, v3, v1

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v3, v3, v2

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v1, v1, v2

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

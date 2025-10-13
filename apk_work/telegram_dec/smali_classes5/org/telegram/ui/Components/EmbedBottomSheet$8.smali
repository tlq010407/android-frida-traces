.class Lorg/telegram/ui/Components/EmbedBottomSheet$8;
.super Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;
.source "SourceFile"


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

.field final synthetic val$canHandleUrl:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->val$canHandleUrl:Z

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOpenAnimationEnd()V
    .locals 11

    const/4 v0, 0x1

    const-string v1, "m"

    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->val$canHandleUrl:Z

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v5

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$4100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/Object;Ljava/lang/String;Z)Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Referer"

    const-string v5, "messenger.telegram.org"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/WebPlayerView;->getYoutubeId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1302(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v5, Lorg/telegram/ui/Components/EmbedBottomSheet$YoutubeProxy;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/telegram/ui/Components/EmbedBottomSheet$YoutubeProxy;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Lorg/telegram/ui/Components/EmbedBottomSheet$1;)V

    const-string v6, "YoutubeProxy"

    invoke-virtual {v2, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$4100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_5

    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$4100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$4300(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$4300(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    if-nez v7, :cond_3

    const-string v5, "t"

    invoke-virtual {v2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v5, "time_continue"

    invoke-virtual {v2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    if-eqz v7, :cond_5

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v3

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_3

    :cond_4
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_1
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_2
    const/4 v2, 0x0

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v5

    const-string v6, "https://messenger.telegram.org/"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<!DOCTYPE html><html><head><style>body { margin: 0; width:100%%; height:100%%;  background-color:#000; }html { width:100%%; height:100%%; background-color:#000; }.embed-container iframe,.embed-container object,   .embed-container embed {       position: absolute;       top: 0;       left: 0;       width: 100%% !important;       height: 100%% !important;   }   </style></head><body>   <div class=\"embed-container\">       <div id=\"player\"></div>   </div>   <script src=\"https://www.youtube.com/iframe_api\"></script>   <script>   var player;   var observer;   var videoEl;   var playing;   var posted = false;   YT.ready(function() {       player = new YT.Player(\"player\", {                              \"width\" : \"100%%\",                              \"events\" : {                              \"onReady\" : \"onReady\",                              \"onError\" : \"onError\",                              \"onStateChange\" : \"onStateChange\",                              },                              \"videoId\" : \"%1$s\",                              \"height\" : \"100%%\",                              \"playerVars\" : {                              \"start\" : %2$d,                              \"rel\" : 1,                              \"showinfo\" : 0,                              \"modestbranding\" : 0,                              \"iv_load_policy\" : 3,                              \"autohide\" : 1,                              \"autoplay\" : 1,                              \"cc_load_policy\" : 1,                              \"playsinline\" : 1,                              \"controls\" : 1                              }                            });        player.setSize(window.innerWidth, window.innerHeight);    });    function hideControls() {        playing = !videoEl.paused;       videoEl.controls = 0;       observer.observe(videoEl, {attributes: true});    }    function showControls() {        playing = !videoEl.paused;       observer.disconnect();       videoEl.controls = 1;    }    function onError(event) {       if (!posted) {            if (window.YoutubeProxy !== undefined) {                   YoutubeProxy.postEvent(\"loaded\", null);             }            posted = true;       }    }    function onStateChange(event) {       if (event.data == YT.PlayerState.PLAYING && !posted) {            if (window.YoutubeProxy !== undefined) {                   YoutubeProxy.postEvent(\"loaded\", null);             }            posted = true;       }    }    function onReady(event) {       player.playVideo();    }    window.onresize = function() {       player.setSize(window.innerWidth, window.innerHeight);       player.playVideo();    }    </script></body></html>"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v3

    aput-object v2, v8, v0

    invoke-static {v1, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    const-string v10, "https://youtube.com"

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$8;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

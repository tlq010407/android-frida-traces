.class Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YoutubeVideoTask"
.end annotation


# instance fields
.field private canRetry:Z

.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private result:[Ljava/lang/String;

.field private sig:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;

.field private videoId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$HyzYrTZ2X8RJqraZQpJZ0rtpJvo(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->lambda$doInBackground$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WMABY47bn-0O2GsaC-4zXNwsyn4(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->lambda$doInBackground$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->canRetry:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->videoId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->onInterfaceResult(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doInBackground$0(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->sig:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/signature/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$doInBackground$1(Ljava/lang/String;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</script>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:text/html;charset=utf-8;base64,"

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

.method private onInterfaceResult(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->sig:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/signature/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 23

    .line 0
    move-object/from16 v1, p0

    const-string v2, "UTF-8"

    iget-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.youtube.com/embed/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->videoId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return-object v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&ps=default&gl=US&hl=en"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&eurl="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://youtube.googleapis.com/v/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->videoId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v3, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$600()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    const-string v7, "&sts="

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    const-string v6, "dash"

    const/4 v7, 0x1

    aput-object v6, v0, v7

    const-string v0, "&el=detailpage"

    const-string v6, "&el=vevo"

    const-string v8, ""

    const-string v9, "&el=leanback"

    const-string v10, "&el=embedded"

    filled-new-array {v8, v9, v10, v0, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v10, v4

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_2
    const-string v11, "/s/"

    const/4 v12, 0x2

    const/4 v13, 0x5

    if-ge v9, v13, :cond_15

    iget-object v13, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "https://www.youtube.com/get_video_info?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v6, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v1, v14}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_3

    return-object v4

    :cond_3
    if-eqz v13, :cond_10

    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v4

    move-object v14, v10

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v10, v0

    :goto_3
    array-length v0, v13

    if-ge v15, v0, :cond_f

    aget-object v0, v13, v15

    const-string v4, "dashmpd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "="

    if-eqz v0, :cond_5

    aget-object v0, v13, v15

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-ne v4, v12, :cond_4

    :try_start_1
    iget-object v4, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    move-object/from16 v22, v5

    const/16 v18, 0x1

    goto/16 :goto_8

    :cond_5
    aget-object v0, v13, v15

    const-string v8, "url_encoded_fmt_stream_map"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    aget-object v0, v13, v15

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    if-ne v8, v12, :cond_a

    :try_start_2
    aget-object v0, v0, v7

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "[&,]"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    :goto_5
    array-length v7, v0

    if-ge v12, v7, :cond_a

    aget-object v7, v0, v12

    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v0

    const/16 v19, 0x0

    aget-object v0, v7, v19
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v22, v5

    :try_start_3
    const-string v5, "type"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v5, 0x1

    aget-object v0, v7, v5

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "video/mp4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v20, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_6
    const/4 v5, 0x0

    aget-object v0, v7, v5

    const-string v5, "url"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v5, 0x1

    aget-object v0, v7, v5

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    aget-object v0, v7, v5

    const-string v5, "itag"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v0, :cond_8

    const/4 v8, 0x0

    const/16 v20, 0x0

    :cond_8
    :goto_6
    if-eqz v20, :cond_9

    if-eqz v8, :cond_9

    move-object v14, v8

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v21

    move-object/from16 v5, v22

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v22, v5

    goto :goto_7

    :cond_a
    move-object/from16 v22, v5

    goto :goto_8

    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_b
    move-object/from16 v22, v5

    aget-object v0, v13, v15

    const-string v5, "use_cipher_signature"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    aget-object v0, v13, v15

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    aget-object v0, v13, v15

    const-string v5, "hlsvp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    aget-object v0, v13, v15

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    :try_start_4
    aget-object v0, v0, v4

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :cond_d
    aget-object v0, v13, v15

    const-string v5, "livestream"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    aget-object v0, v13, v15

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v17, 0x1

    :cond_e
    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v22

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x2

    goto/16 :goto_3

    :cond_f
    move-object/from16 v22, v5

    move v0, v10

    move-object v10, v14

    move-object/from16 v4, v16

    goto :goto_9

    :cond_10
    move-object/from16 v22, v5

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_9
    if-eqz v17, :cond_13

    if-eqz v4, :cond_11

    if-nez v0, :cond_11

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    const/4 v2, 0x0

    goto :goto_a

    :cond_12
    iget-object v5, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const-string v4, "hls"

    const/4 v7, 0x1

    aput-object v4, v5, v7

    goto :goto_b

    :goto_a
    return-object v2

    :cond_13
    :goto_b
    if-eqz v18, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v22

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_15
    :goto_c
    iget-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-nez v5, :cond_16

    if-eqz v10, :cond_16

    aput-object v10, v2, v4

    const-string v5, "other"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    :cond_16
    aget-object v2, v2, v4

    if-eqz v2, :cond_17

    if-nez v0, :cond_18

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_d

    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_1b

    :cond_18
    :goto_d
    if-eqz v3, :cond_17

    iget-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    aget-object v2, v2, v4

    add-int/lit8 v5, v0, 0xa

    const/16 v6, 0x2f

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v5, -0x1

    if-eq v0, v5, :cond_26

    if-ne v2, v5, :cond_19

    iget-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :cond_19
    iget-object v5, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->sig:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$700()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1a

    :try_start_5
    new-instance v2, Lorg/json/JSONTokener;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1a

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v2, v0

    goto :goto_e

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1a
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_26

    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$800()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1b
    const/4 v0, 0x0

    :goto_f
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "youtubecode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "n"

    if-eqz v0, :cond_1c

    const/4 v6, 0x0

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_10

    :cond_1c
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_10
    if-nez v7, :cond_23

    const-string v6, "//"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https:"

    :goto_11
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1d
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://www.youtube.com"

    goto :goto_11

    :cond_1e
    :goto_12
    iget-object v6, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v6, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->downloadUrlContent(Landroid/os/AsyncTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x0

    return-object v6

    :cond_1f
    const/4 v6, 0x0

    if-eqz v2, :cond_22

    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$900()Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_20

    :goto_13
    const/4 v10, 0x1

    goto :goto_14

    :cond_20
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$1000()Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_21

    goto :goto_13

    :goto_14
    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_15

    :cond_21
    const/4 v10, 0x1

    :goto_15
    if-eqz v8, :cond_24

    :try_start_6
    new-instance v9, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;

    invoke-direct {v9, v2}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->access$1100(Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz v0, :cond_24

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_17

    :catch_5
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_17

    :cond_22
    :goto_16
    const/4 v10, 0x1

    goto :goto_17

    :cond_23
    const/4 v6, 0x0

    goto :goto_16

    :cond_24
    :goto_17
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x3

    const-string v4, "(\'"

    if-lt v0, v2, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->sig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\');"

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "window."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1200(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".returnResultToJava("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->sig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'));"

    goto :goto_18

    :goto_19
    :try_start_7
    new-instance v2, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const/4 v7, 0x0

    goto :goto_1c

    :catch_6
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_26
    const/4 v6, 0x0

    const/4 v10, 0x1

    :cond_27
    :goto_1a
    const/4 v7, 0x1

    goto :goto_1c

    :goto_1b
    move v7, v0

    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz v7, :cond_28

    goto :goto_1d

    :cond_28
    iget-object v4, v1, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->result:[Ljava/lang/String;

    goto :goto_1e

    :cond_29
    :goto_1d
    move-object v4, v6

    :goto_1e
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 4

    .line 0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start play youtube video "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1302(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    aget-object v3, p1, v0

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$1402(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    aget-object p1, p1, v2

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1502(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1500(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "hls"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1602(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1700(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$1800(Lorg/telegram/ui/Components/WebPlayerView;)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1, v0, v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$1900(Lorg/telegram/ui/Components/WebPlayerView;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/WebPlayerView;->access$2000(Lorg/telegram/ui/Components/WebPlayerView;)V

    :cond_4
    :goto_0
    return-void
.end method

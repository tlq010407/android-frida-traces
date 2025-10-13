.class Lorg/telegram/ui/web/WebInstantView$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/WebInstantView;->readHTML(Ljava/lang/String;Ljava/io/InputStream;Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstLoad:Z

.field private streamLoaded:Z

.field final synthetic this$0:Lorg/telegram/ui/web/WebInstantView;

.field final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/WebInstantView;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView$2;->this$0:Lorg/telegram/ui/web/WebInstantView;

    iput-object p2, p0, Lorg/telegram/ui/web/WebInstantView$2;->val$stream:Ljava/io/InputStream;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/web/WebInstantView$2;->firstLoad:Z

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 11

    iget-boolean p1, p0, Lorg/telegram/ui/web/WebInstantView$2;->firstLoad:Z

    const/4 v0, 0x0

    const-string v1, "UTF-8"

    const-string v2, "text/html"

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebInstantView$2;->firstLoad:Z

    sget p1, Lorg/telegram/messenger/R$raw;->instant:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "$DEBUG$"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<script>\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n</script>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/webkit/WebResourceResponse;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v2, v1, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    :cond_0
    const/16 p1, 0x15

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    const-string v4, "/index.html"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean p2, p0, Lorg/telegram/ui/web/WebInstantView$2;->streamLoaded:Z

    const-string v2, "application/octet-stream"

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/web/WebInstantView$2;->this$0:Lorg/telegram/ui/web/WebInstantView;

    iget-object p2, p2, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/telegram/ui/web/MHTML;->entries:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/web/MHTML$Entry;

    goto :goto_0

    :cond_1
    move-object p2, v3

    :goto_0
    if-nez p2, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, p1, :cond_2

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v2, v1, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_2
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "text/plain"

    const-string v6, "utf-8"

    const/16 v7, 0x194

    const-string v8, "Not Found"

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object p1

    :cond_3
    :try_start_0
    invoke-virtual {p2}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, p1, :cond_4

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v2, v1, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_4
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "text/plain"

    const-string v6, "utf-8"

    const/16 v7, 0x1f7

    const-string v8, "Server error"

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object p1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/web/WebInstantView$2;->val$stream:Ljava/io/InputStream;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/web/WebInstantView$2;->streamLoaded:Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$2;->this$0:Lorg/telegram/ui/web/WebInstantView;

    iget-object v0, v0, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lorg/telegram/ui/web/MHTML;->entriesByLocation:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/web/MHTML$Entry;

    goto :goto_1

    :cond_7
    move-object p2, v3

    :goto_1
    if-nez p2, :cond_9

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, p1, :cond_8

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v2, v1, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_8
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "text/plain"

    const-string v6, "utf-8"

    const/16 v7, 0x194

    const-string v8, "Not Found"

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object p1

    :cond_9
    invoke-virtual {p2}, Lorg/telegram/ui/web/MHTML$Entry;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "text/css"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, p1, :cond_a

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v0, v1, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_a
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "text/plain"

    const-string v6, "utf-8"

    const/16 v7, 0x194

    const-string v8, "Not Found"

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object p1

    :cond_b
    :try_start_1
    invoke-virtual {p2}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    :goto_2
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-direct {p2, v2, v3, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    :catch_1
    move-exception p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, p1, :cond_c

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v0, v1, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_c
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "text/plain"

    const-string v6, "utf-8"

    const/16 v7, 0x1f7

    const-string v8, "Server error"

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object p1
.end method

.class public Lorg/telegram/ui/web/WebInstantView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/WebInstantView$WebPhoto;,
        Lorg/telegram/ui/web/WebInstantView$Loader;
    }
.end annotation


# static fields
.field public static final instants:Ljava/util/HashMap;

.field private static loadingPhotos:Ljava/util/HashMap;


# instance fields
.field public final loadedPhotos:Ljava/util/HashMap;

.field public mhtml:Lorg/telegram/ui/web/MHTML;

.field public url:Ljava/lang/String;

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public static synthetic $r8$lambda$5OKLd3KNjqeekGH8Do5VRgOXNAo([Z)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/WebInstantView;->lambda$generate$2([Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$5eCdyRlTVedsQRAWARfZXK7zwEo(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/WebInstantView;->lambda$getHTML$5(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Us0B0feOaqe1AirXDilnz7RNinI(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/WebInstantView;->lambda$getHTML$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yh_rHIiOF3DpDgaZCNIA7rZXO0Q(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/web/WebInstantView;->lambda$generate$0(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YlCjfT0mhFdTUR2hES1ATvDObGA(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/web/WebInstantView;->lambda$generate$1(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hFjnVezg1x57UM9BcT-jIWS8dlo(Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView;->lambda$loadPhotoInternal$4(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qkSjPlFAa_0-jByXyiA-FVISRM8(Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView;->lambda$loadPhotoInternal$3(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rCpmgwitTm1Voxiaw8LbPxhdPQA(Lorg/telegram/ui/web/WebInstantView;Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/WebInstantView;->lambda$getHTML$7(Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rxqU5ebZZyE1bg0cAK4TZetOirc(Lorg/telegram/ui/web/WebInstantView;Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/WebInstantView;->lambda$getHTML$8(Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/web/WebInstantView;->instants:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    return-void
.end method

.method public static addLastSpace(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->addLastSpace(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static addNewLine(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->addNewLine(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static applyAnchor(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;-><init>()V

    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static cancelLoadPhoto(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 5

    sget-object v0, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
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

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v4, p0, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public static filterRecursiveAnchorLinks(Lorg/telegram/tgnet/TLRPC$RichText;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 4

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textConcat;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v2, p1, p2}, Lorg/telegram/ui/web/WebInstantView;->filterRecursiveAnchorLinks(Lorg/telegram/tgnet/TLRPC$RichText;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$RichText;->url:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$RichText;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p0, 0x0

    :cond_5
    return-object p0
.end method

.method public static generate(Landroid/webkit/WebView;ZLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    invoke-interface {p2, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    new-instance v0, Lorg/telegram/ui/web/WebInstantView;

    invoke-direct {v0}, Lorg/telegram/ui/web/WebInstantView;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/web/WebInstantView;->url:Ljava/lang/String;

    const-string v2, "WebInstantView"

    invoke-static {v2}, Lorg/telegram/messenger/Timer;->create(Ljava/lang/String;)Lorg/telegram/messenger/Timer;

    move-result-object v5

    const-string v2, "getHTML"

    invoke-static {v5, v2}, Lorg/telegram/messenger/Timer;->start(Lorg/telegram/messenger/Timer;Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;

    move-result-object v3

    new-instance v8, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda0;

    move-object v2, v8

    move-object v4, v1

    move-object v6, v0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, p0, p1, v8}, Lorg/telegram/ui/web/WebInstantView;->getHTML(Landroid/webkit/WebView;ZLorg/telegram/messenger/Utilities$Callback;)V

    new-instance p0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda1;

    invoke-direct {p0, v1}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda1;-><init>([Z)V

    return-object p0
.end method

.method private static synthetic lambda$generate$0(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/Timer;->done(Lorg/telegram/messenger/Timer$Task;)V

    const/4 p0, 0x0

    aget-boolean p0, p1, p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "parseJSON"

    invoke-static {p2, p0}, Lorg/telegram/messenger/Timer;->start(Lorg/telegram/messenger/Timer;Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;

    move-result-object p0

    :try_start_0
    iget-object p1, p3, Lorg/telegram/ui/web/WebInstantView;->url:Ljava/lang/String;

    invoke-virtual {p3, p1, p5}, Lorg/telegram/ui/web/WebInstantView;->parseJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$TL_webPage;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Lorg/telegram/messenger/Timer;->log(Lorg/telegram/messenger/Timer;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/Timer;->done(Lorg/telegram/messenger/Timer$Task;)V

    invoke-interface {p4, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    iget-object p0, p3, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p0, :cond_1

    sget-object p1, Lorg/telegram/ui/web/WebInstantView;->instants:Ljava/util/HashMap;

    invoke-virtual {p1, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/Timer;->finish(Lorg/telegram/messenger/Timer;)V

    return-void
.end method

.method private static synthetic lambda$generate$1(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;Ljava/io/InputStream;)V
    .locals 7

    invoke-static {p0}, Lorg/telegram/messenger/Timer;->done(Lorg/telegram/messenger/Timer$Task;)V

    const/4 p0, 0x0

    aget-boolean p0, p1, p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "readHTML"

    invoke-static {p2, p0}, Lorg/telegram/messenger/Timer;->start(Lorg/telegram/messenger/Timer;Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;

    move-result-object v1

    iget-object p0, p3, Lorg/telegram/ui/web/WebInstantView;->url:Ljava/lang/String;

    new-instance v6, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda4;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Timer$Task;[ZLorg/telegram/messenger/Timer;Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p3, p0, p5, v6}, Lorg/telegram/ui/web/WebInstantView;->readHTML(Ljava/lang/String;Ljava/io/InputStream;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private static synthetic lambda$generate$2([Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    return-void
.end method

.method private static synthetic lambda$getHTML$5(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/JsonReader;->setLenient(Z)V

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$getHTML$6(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$getHTML$7(Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 2

    sget p4, Lorg/telegram/messenger/R$raw;->open_collapsed:I

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "$OPEN$"

    const-string v1, "false"

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, p4, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :try_start_0
    new-instance p1, Lorg/telegram/ui/web/MHTML;

    invoke-direct {p1, p2}, Lorg/telegram/ui/web/MHTML;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    iget-object p1, p1, Lorg/telegram/ui/web/MHTML;->entries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    iget-object p1, p1, Lorg/telegram/ui/web/MHTML;->entries:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/web/MHTML$Entry;

    invoke-virtual {p1}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getHTML$8(Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/web/WebInstantView;Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2, v0}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method private synthetic lambda$loadPhotoInternal$3(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v0, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-nez v1, :cond_3

    iget v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_1
    iput v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    goto :goto_2

    :cond_4
    iget v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez v1, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->inlineImage:Lorg/telegram/tgnet/TLRPC$TL_textImage;

    if-eqz v1, :cond_6

    iget v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    iget v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    :cond_6
    sget-object v1, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_8

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_9
    return-void
.end method

.method private synthetic lambda$loadPhotoInternal$4(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/ui/web/WebInstantView$WebPhoto;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadPhoto(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->instantView:Lorg/telegram/ui/web/WebInstantView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView;->loadPhotoInternal(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadPhotoInternal(Lorg/telegram/ui/web/WebInstantView$WebPhoto;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/Runnable;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->urls:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/web/WebInstantView;->mhtml:Lorg/telegram/ui/web/MHTML;

    iget-object v3, v3, Lorg/telegram/ui/web/MHTML;->entriesByLocation:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/web/MHTML$Entry;

    if-eqz v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    move-object v2, v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lorg/telegram/ui/web/MHTML$Entry;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "svg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget p3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-lez p3, :cond_4

    iget p3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-gtz p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iget v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p3, v1, p1, v0}, Lorg/telegram/messenger/SvgHelper;->getBitmap(Ljava/io/InputStream;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_4

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-lez v0, :cond_6

    iget v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-gtz v0, :cond_b

    :cond_6
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-nez v1, :cond_7

    iget v3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez v3, :cond_7

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    goto :goto_3

    :cond_8
    iget v3, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez v3, :cond_9

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v1

    mul-float v3, v3, v0

    float-to-int v0, v3

    :goto_2
    iput v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    :cond_9
    :goto_3
    iget-object v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->inlineImage:Lorg/telegram/tgnet/TLRPC$TL_textImage;

    if-eqz v0, :cond_a

    iget v1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    iget p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    :cond_a
    if-eqz p3, :cond_b

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_b
    invoke-virtual {v2}, Lorg/telegram/ui/web/MHTML$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_4
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p3, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_d
    sget-object v1, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    :cond_e
    sget-object v1, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_10

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p1, p2, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    return-void

    :cond_11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sget-object p3, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/telegram/ui/web/HttpGetBitmapTask;

    new-instance p3, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/web/WebInstantView;Lorg/telegram/ui/web/WebInstantView$WebPhoto;)V

    invoke-direct {p2, p3}, Lorg/telegram/ui/web/HttpGetBitmapTask;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method

.method public static parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/web/WebInstantView;->instants:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/web/WebInstantView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebInstantView;->recycle()V

    :cond_0
    return-void
.end method

.method public static trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trimStart(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trimEnd(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_1

    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static trimEnd(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 4

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trimEnd(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "\\s+$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static trimStart(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 4

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trimStart(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "^\\s+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method public getHTML(Landroid/webkit/WebView;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance p2, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    const-string p3, "document.documentElement.outerHTML"

    invoke-virtual {p1, p3, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "archive.mht"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget v0, Lorg/telegram/messenger/R$raw;->open_collapsed:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$OPEN$"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/web/WebInstantView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/WebInstantView;Landroid/webkit/WebView;Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public isInline(Lorg/json/JSONArray;)Z
    .locals 11

    const-string v9, "sub"

    const-string v10, "sup"

    const-string v0, "b"

    const-string v1, "strong"

    const-string v2, "span"

    const-string v3, "img"

    const-string v4, "i"

    const-string v5, "s"

    const-string v6, "a"

    const-string v7, "code"

    const-string v8, "mark"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "tag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "div"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "span"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "content"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/WebInstantView;->isInline(Lorg/json/JSONArray;)Z

    :cond_3
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public parseDetails(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;
    .locals 6

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;-><init>()V

    const-string v1, "content"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "tag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "summary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1, p3}, Lorg/telegram/ui/web/WebInstantView;->parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p1, "open"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    return-object v0
.end method

.method public parseFigure(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;
    .locals 10

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_5

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lorg/json/JSONObject;

    if-eqz v7, :cond_4

    check-cast v6, Lorg/json/JSONObject;

    const-string v7, "tag"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "figurecaption"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "caption"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    const-string v8, "img"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v6, p2}, Lorg/telegram/ui/web/WebInstantView;->parseImage(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v4

    goto :goto_3

    :cond_1
    const-string v8, "source"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "src"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    const-string v7, "srcset"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_4

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0, v6, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    if-nez v4, :cond_6

    return-object v1

    :cond_6
    if-eqz v5, :cond_7

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;-><init>()V

    iput-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;-><init>()V

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    :cond_7
    :goto_4
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_9

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    if-eqz p1, :cond_8

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    cmp-long p1, v5, v7

    if-nez p1, :cond_8

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    iget-object p1, v1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->urls:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_a
    return-object v4
.end method

.method public parseImage(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;
    .locals 5

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    const-string v1, "alt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-static {v1}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    const-string v2, ""

    invoke-static {v2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    :cond_0
    const-string v1, "src"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/WebInstantView$WebPhoto;-><init>(Lorg/telegram/ui/web/WebInstantView;)V

    iput-object p0, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->instantView:Lorg/telegram/ui/web/WebInstantView;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rsub-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-object v1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    iget-object v3, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->urls:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v3, "width"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v3, "height"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    :goto_0
    iget p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-nez p1, :cond_2

    iget p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    iput p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    :cond_2
    iget p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez p1, :cond_3

    iget p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    iput p1, v2, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    :cond_3
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->url:Ljava/lang/String;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public parseInlineImage(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_textImage;
    .locals 7

    const-string v0, "height"

    const-string v1, "width"

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_textImage;-><init>()V

    const-string v3, "src"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    invoke-direct {v4, p0}, Lorg/telegram/ui/web/WebInstantView$WebPhoto;-><init>(Lorg/telegram/ui/web/WebInstantView;)V

    iput-object p0, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->instantView:Lorg/telegram/ui/web/WebInstantView;

    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rsub-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-object v3, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    iget-object v5, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->urls:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    :goto_0
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$RichText;->url:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    if-nez p2, :cond_1

    iget p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    iput p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    :cond_1
    iget p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    if-nez p2, :cond_2

    iget p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->w:I

    iput p2, v4, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->h:I

    :cond_2
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    nop

    :goto_1
    iget p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    if-nez p1, :cond_3

    iget p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    iput p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    :cond_3
    iget p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    if-nez p1, :cond_4

    iget p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    iput p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    :cond_4
    iget-wide p1, v4, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide p1, v2, Lorg/telegram/tgnet/TLRPC$TL_textImage;->photo_id:J

    return-object v2
.end method

.method public parseJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$TL_webPage;
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->display_url:Ljava/lang/String;

    const-string v1, "siteName"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    :cond_0
    const-string v1, "title"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    :cond_1
    const-string v1, "byline"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "by"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->author:Ljava/lang/String;

    :cond_2
    const-string v1, "excerpt"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    :cond_3
    const-string v1, "content"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/WebInstantView;->parsePage(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$TL_page;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    :cond_4
    return-object v0
.end method

.method public parseList(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 8

    const-string v0, "tag"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ol"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "li"

    const/4 v3, 0x0

    const-string v4, "content"

    if-eqz v1, :cond_4

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;-><init>()V

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/json/JSONObject;

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/web/WebInstantView;->isInline(Lorg/json/JSONArray;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;-><init>()V

    invoke-virtual {p0, v5, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :goto_1
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;-><init>()V

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v5, p3}, Lorg/telegram/ui/web/WebInstantView;->parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;-><init>()V

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/json/JSONObject;

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/web/WebInstantView;->isInline(Lorg/json/JSONArray;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;-><init>()V

    invoke-virtual {p0, v5, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :goto_4
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;-><init>()V

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v5, p3}, Lorg/telegram/ui/web/WebInstantView;->parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-object v1
.end method

.method public parsePage(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$TL_page;
    .locals 3

    const-string v0, "title"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v2, "publishedTime"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v1, "content"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_page;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_page;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Page;->web:Z

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/ui/web/WebInstantView;->parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez p1, :cond_2

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    :goto_1
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_0
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1c

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "tag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v6, "details"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v7, 0x1a

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "blockquote"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v7, 0x19

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "table"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    :cond_3
    const/16 v7, 0x18

    goto/16 :goto_3

    :sswitch_3
    const-string v6, "span"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v7, 0x17

    goto/16 :goto_3

    :sswitch_4
    const-string v6, "mark"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v7, 0x16

    goto/16 :goto_3

    :sswitch_5
    const-string v6, "code"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v7, 0x15

    goto/16 :goto_3

    :sswitch_6
    const-string v6, "sup"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v7, 0x14

    goto/16 :goto_3

    :sswitch_7
    const-string v6, "sub"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v7, 0x13

    goto/16 :goto_3

    :sswitch_8
    const-string v6, "pre"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v7, 0x12

    goto/16 :goto_3

    :sswitch_9
    const-string v6, "img"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v7, 0x11

    goto/16 :goto_3

    :sswitch_a
    const-string v6, "ul"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v7, 0x10

    goto/16 :goto_3

    :sswitch_b
    const-string v6, "ol"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_3

    :cond_c
    const/16 v7, 0xf

    goto/16 :goto_3

    :sswitch_c
    const-string v6, "hr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_3

    :cond_d
    const/16 v7, 0xe

    goto/16 :goto_3

    :sswitch_d
    const-string v6, "h6"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_3

    :cond_e
    const/16 v7, 0xd

    goto/16 :goto_3

    :sswitch_e
    const-string v6, "h5"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_3

    :cond_f
    const/16 v7, 0xc

    goto/16 :goto_3

    :sswitch_f
    const-string v6, "h4"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_3

    :cond_10
    const/16 v7, 0xb

    goto/16 :goto_3

    :sswitch_10
    const-string v6, "h3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_3

    :cond_11
    const/16 v7, 0xa

    goto/16 :goto_3

    :sswitch_11
    const-string v6, "h2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_3

    :cond_12
    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_12
    const-string v6, "h1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_3

    :cond_13
    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_13
    const-string v6, "s"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_3

    :cond_14
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_14
    const-string v6, "p"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_3

    :cond_15
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_15
    const-string v6, "i"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_3

    :cond_16
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_16
    const-string v6, "b"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_3

    :cond_17
    const/4 v7, 0x4

    goto :goto_3

    :sswitch_17
    const-string v6, "a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_3

    :cond_18
    const/4 v7, 0x3

    goto :goto_3

    :sswitch_18
    const-string v6, "picture"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_3

    :cond_19
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_19
    const-string v6, "strong"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_3

    :cond_1a
    const/4 v7, 0x1

    goto :goto_3

    :sswitch_1a
    const-string v6, "figure"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_3

    :cond_1b
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_0

    if-eqz v5, :cond_1c

    invoke-virtual {p0, p1, v5, p3}, Lorg/telegram/ui/web/WebInstantView;->parsePageBlocks(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0, p1, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseDetails(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    move-result-object v3

    if-eqz v3, :cond_1c

    goto/16 :goto_5

    :pswitch_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;-><init>()V

    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_textItalic;-><init>()V

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, p1, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseTable(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    move-result-object v3

    :goto_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_3
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;-><init>()V

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textFixed;-><init>()V

    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const-string v3, ""

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;->language:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseImage(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v3

    if-eqz v3, :cond_1c

    goto :goto_5

    :pswitch_5
    invoke-virtual {p0, p1, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseList(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    goto :goto_4

    :pswitch_6
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;-><init>()V

    goto :goto_4

    :pswitch_7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;-><init>()V

    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto/16 :goto_2

    :pswitch_8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;-><init>()V

    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto/16 :goto_2

    :pswitch_9
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_a
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    invoke-virtual {p0, v4, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_4

    :pswitch_b
    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseFigure(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v3

    if-eqz v3, :cond_1c

    :goto_5
    goto :goto_4

    :cond_1c
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1d
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bf9751c -> :sswitch_1a
        -0x352a8969 -> :sswitch_19
        -0x226fa302 -> :sswitch_18
        0x61 -> :sswitch_17
        0x62 -> :sswitch_16
        0x69 -> :sswitch_15
        0x70 -> :sswitch_14
        0x73 -> :sswitch_13
        0xcc9 -> :sswitch_12
        0xcca -> :sswitch_11
        0xccb -> :sswitch_10
        0xccc -> :sswitch_f
        0xccd -> :sswitch_e
        0xcce -> :sswitch_d
        0xd0a -> :sswitch_c
        0xddd -> :sswitch_b
        0xe97 -> :sswitch_a
        0x197c3 -> :sswitch_9
        0x1b2a3 -> :sswitch_8
        0x1be40 -> :sswitch_7
        0x1be4e -> :sswitch_6
        0x2eaded -> :sswitch_5
        0x3306cd -> :sswitch_4
        0x35f74a -> :sswitch_3
        0x6903bce -> :sswitch_2
        0x4dad4a0f -> :sswitch_1
        0x5cd8f242 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 10

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_15

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_0
    check-cast v3, Lorg/json/JSONObject;

    const-string v5, "tag"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v6, "mark"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v9, 0xc

    goto/16 :goto_2

    :sswitch_1
    const-string v6, "code"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v9, 0xb

    goto/16 :goto_2

    :sswitch_2
    const-string v6, "sup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v9, 0xa

    goto/16 :goto_2

    :sswitch_3
    const-string v6, "sub"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v9, 0x9

    goto/16 :goto_2

    :sswitch_4
    const-string v6, "pre"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v9, 0x8

    goto/16 :goto_2

    :sswitch_5
    const-string v6, "img"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x7

    goto :goto_2

    :sswitch_6
    const-string v6, "br"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v9, 0x6

    goto :goto_2

    :sswitch_7
    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    const/4 v9, 0x5

    goto :goto_2

    :sswitch_8
    const-string v6, "p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    const/4 v9, 0x4

    goto :goto_2

    :sswitch_9
    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_2

    :cond_a
    const/4 v9, 0x3

    goto :goto_2

    :sswitch_a
    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_2

    :cond_b
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_b
    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_2

    :cond_c
    const/4 v9, 0x1

    goto :goto_2

    :sswitch_c
    const-string v6, "strong"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_2

    :cond_d
    const/4 v9, 0x0

    :goto_2
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textMarked;-><init>()V

    :goto_3
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    goto/16 :goto_6

    :pswitch_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;-><init>()V

    goto :goto_3

    :pswitch_2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;-><init>()V

    goto :goto_3

    :pswitch_3
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textFixed;-><init>()V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4}, Lorg/telegram/ui/web/WebInstantView;->addLastSpace(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    :cond_e
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseInlineImage(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_textImage;

    move-result-object v4

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4}, Lorg/telegram/ui/web/WebInstantView;->addNewLine(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_6

    :pswitch_6
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textStrike;-><init>()V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v4}, Lorg/telegram/ui/web/WebInstantView;->addNewLine(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_4

    :pswitch_8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textItalic;-><init>()V

    goto :goto_3

    :pswitch_9
    const-string v4, "href"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    :cond_10
    :goto_4
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    goto :goto_6

    :cond_11
    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textPhone;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_textPhone;->phone:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object v4, v5

    goto :goto_6

    :cond_12
    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textEmail;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$RichText;->email:Ljava/lang/String;

    goto :goto_5

    :cond_13
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textUrl;-><init>()V

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$RichText;->url:Ljava/lang/String;

    goto :goto_5

    :pswitch_a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_textBold;-><init>()V

    goto/16 :goto_3

    :goto_6
    if-eqz v4, :cond_14

    invoke-static {v4, v3}, Lorg/telegram/ui/web/WebInstantView;->applyAnchor(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    goto/16 :goto_1

    :cond_14
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;-><init>()V

    return-object p1

    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v4, :cond_17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_17
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_textConcat;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x352a8969 -> :sswitch_c
        0x61 -> :sswitch_b
        0x62 -> :sswitch_a
        0x69 -> :sswitch_9
        0x70 -> :sswitch_8
        0x73 -> :sswitch_7
        0xc50 -> :sswitch_6
        0x197c3 -> :sswitch_5
        0x1b2a3 -> :sswitch_4
        0x1be40 -> :sswitch_3
        0x1be4e -> :sswitch_2
        0x2eaded -> :sswitch_1
        0x3306cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public parseRichText(Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 1

    .line 0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/telegram/ui/web/WebInstantView;->applyAnchor(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p2

    const-string v0, "bold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textBold;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object p2, v0

    :cond_0
    const-string v0, "italic"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_textItalic;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object p2, p1

    :cond_1
    return-object p2
.end method

.method public parseTable(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;
    .locals 2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->bordered:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->striped:Z

    const-string v1, "title"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/telegram/ui/web/WebInstantView;->applyAnchor(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/json/JSONObject;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    const-string v1, "content"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/web/WebInstantView;->parseTableRows(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public parseTableRow(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;
    .locals 6

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;-><init>()V

    const-string v0, "content"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "tag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "td"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "th"

    if-nez v4, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->header:Z

    :try_start_0
    const-string v3, "colspan"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->colspan:I

    iget v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v3, "rowspan"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    iget v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lorg/telegram/ui/web/WebInstantView;->parseRichText(Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/WebInstantView;->trim(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const-string v3, "bold"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->header:Z

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_textBold;-><init>()V

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :cond_3
    const-string v3, "italic"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_textItalic;-><init>()V

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$RichText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :cond_4
    const-string v3, "xcenter"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_center:Z

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;->cells:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-object p1
.end method

.method public parseTableRows(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "tag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v2, p3}, Lorg/telegram/ui/web/WebInstantView;->parseTableRow(Ljava/lang/String;Lorg/json/JSONObject;Lorg/telegram/tgnet/TLRPC$TL_page;)Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v2, p3}, Lorg/telegram/ui/web/WebInstantView;->parseTableRows(Ljava/lang/String;Lorg/json/JSONArray;Lorg/telegram/tgnet/TLRPC$TL_page;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public readHTML(Ljava/lang/String;Ljava/io/InputStream;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    invoke-interface {p3, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v3, :cond_2

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-interface {p3, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_3
    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-nez v5, :cond_4

    invoke-interface {p3, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_4
    check-cast v4, Landroid/view/ViewGroup;

    new-instance v9, Lorg/telegram/ui/web/WebInstantView$1;

    invoke-direct {v9, p0, v3}, Lorg/telegram/ui/web/WebInstantView$1;-><init>(Lorg/telegram/ui/web/WebInstantView;Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    new-instance v3, Lorg/telegram/ui/web/WebInstantView$2;

    invoke-direct {v3, p0, p2}, Lorg/telegram/ui/web/WebInstantView$2;-><init>(Lorg/telegram/ui/web/WebInstantView;Ljava/io/InputStream;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p2, Lorg/telegram/ui/web/WebInstantView$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/web/WebInstantView$3;-><init>(Lorg/telegram/ui/web/WebInstantView;)V

    invoke-virtual {v2, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 p2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v9, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array v7, v0, [Z

    aput-boolean v1, v7, v1

    new-instance p2, Lorg/telegram/ui/web/WebInstantView$4;

    move-object v5, p2

    move-object v6, p0

    move-object v8, v2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/web/WebInstantView$4;-><init>(Lorg/telegram/ui/web/WebInstantView;[ZLandroid/webkit/WebView;Landroid/widget/FrameLayout;Lorg/telegram/messenger/Utilities$Callback;)V

    const-string p3, "Instant"

    invoke-virtual {v2, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public recycle()V
    .locals 3

    .line 0
    sget-object v0, Lorg/telegram/ui/web/WebInstantView;->instants:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView;->loadedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/web/WebInstantView;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v2, v1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;

    sget-object v2, Lorg/telegram/ui/web/WebInstantView;->loadingPhotos:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/web/WebInstantView$WebPhoto;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

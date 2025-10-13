.class public Lorg/telegram/messenger/chromecast/ChromecastMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;
    }
.end annotation


# instance fields
.field public final externalPath:Ljava/lang/String;

.field public final height:I

.field public final internalUri:Landroid/net/Uri;

.field public final mediaMetadata:Lcom/google/android/gms/cast/MediaMetadata;

.field public final mimeType:Ljava/lang/String;

.field public final width:I


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->access$000(Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->mimeType:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->access$100(Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;)Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->mediaMetadata:Lcom/google/android/gms/cast/MediaMetadata;

    invoke-static {p1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->access$200(Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->internalUri:Landroid/net/Uri;

    invoke-static {p1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->access$300(Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->externalPath:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->access$400(Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->width:I

    invoke-static {p1}, Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;->access$500(Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->height:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;Lorg/telegram/messenger/chromecast/ChromecastMedia$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/chromecast/ChromecastMedia;-><init>(Lorg/telegram/messenger/chromecast/ChromecastMedia$Builder;)V

    return-void
.end method


# virtual methods
.method public buildMediaInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/MediaInfo$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/chromecast/ChromecastMedia;->getExternalUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->mediaMetadata:Lcom/google/android/gms/cast/MediaMetadata;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo$Builder;->build()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    return-object p1
.end method

.method public getExternalUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/chromecast/ChromecastMedia;->externalPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/chromecast/ChromecastFileServer;->getUrlToSource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

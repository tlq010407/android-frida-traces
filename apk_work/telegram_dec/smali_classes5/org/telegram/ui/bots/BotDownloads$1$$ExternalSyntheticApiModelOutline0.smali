.class public abstract synthetic Lorg/telegram/ui/bots/BotDownloads$1$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Ljava/net/HttpURLConnection;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

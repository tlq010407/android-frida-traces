.class Lorg/telegram/messenger/voip/VoIPService$4;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/VoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$4;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    check-cast p4, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService$4;->entryRemoved(ZLjava/lang/String;Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$4;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->access$1900(Lorg/telegram/messenger/voip/VoIPService;)[Lorg/telegram/messenger/voip/NativeInstance;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p3}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->access$1800(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/voip/NativeInstance;->removeIncomingVideoOutput(J)V

    return-void
.end method

.class Lorg/telegram/messenger/voip/VoIPService$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->onConnectionStateChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$11;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$11;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$1900(Lorg/telegram/messenger/voip/VoIPService;)[Lorg/telegram/messenger/voip/NativeInstance;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$11;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$3000(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$11;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$3200(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/StatsController;->incrementTotalCallsTime(II)V

    const-wide/16 v0, 0x1388

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

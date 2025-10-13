.class public final synthetic Lorg/telegram/messenger/HuaweiPushListenerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/huawei/hms/push/RemoteMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiPushListenerService$$ExternalSyntheticLambda1;->f$0:Lcom/huawei/hms/push/RemoteMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiPushListenerService$$ExternalSyntheticLambda1;->f$0:Lcom/huawei/hms/push/RemoteMessage;

    invoke-static {v0}, Lorg/telegram/messenger/HuaweiPushListenerService;->$r8$lambda$TgQ1w8Iit_lZw8ofj0l9fWot-AM(Lcom/huawei/hms/push/RemoteMessage;)V

    return-void
.end method

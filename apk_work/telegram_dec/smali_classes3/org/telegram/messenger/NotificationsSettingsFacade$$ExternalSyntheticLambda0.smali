.class public final synthetic Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/NotificationsSettingsFacade;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/NotificationsSettingsFacade;JJLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/NotificationsSettingsFacade;

    iput-wide p2, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;->f$1:J

    iput-wide p4, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;->f$2:J

    iput-object p6, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/NotificationsSettingsFacade;

    iget-wide v1, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v3, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;->f$2:J

    iget-object v5, p0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/NotificationsSettingsFacade;->$r8$lambda$Dyc1-qFf1nfrov3gU38IqpW2W9I(Lorg/telegram/messenger/NotificationsSettingsFacade;JJLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    return-void
.end method

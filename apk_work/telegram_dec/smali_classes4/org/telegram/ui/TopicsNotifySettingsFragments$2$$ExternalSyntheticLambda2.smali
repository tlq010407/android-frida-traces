.class public final synthetic Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TopicsNotifySettingsFragments$2;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TopicsNotifySettingsFragments$2;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/TopicsNotifySettingsFragments$2;

    iput-object p2, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    return-void
.end method


# virtual methods
.method public final didCreateNewException(Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/TopicsNotifySettingsFragments$2;

    iget-object v1, p0, Lorg/telegram/ui/TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/TopicsNotifySettingsFragments$2;->$r8$lambda$bny6dTXjOK9S6LdP0PrfrGXMDdk(Lorg/telegram/ui/TopicsNotifySettingsFragments$2;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V

    return-void
.end method

.method public synthetic didRemoveException(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate$-CC;->$default$didRemoveException(Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;J)V

    return-void
.end method

.class Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;->executeBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;

.field final synthetic val$localIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger$1;->this$0:Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger$1;->val$localIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger$1;->val$localIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

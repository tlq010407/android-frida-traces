.class public Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationBadge$Badger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZukHomeBadger"
.end annotation


# instance fields
.field private final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$JnVD7bxT6f5ElDaXZepApuuApAg(Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;->lambda$executeBadge$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.android.badge/badge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private synthetic lambda$executeBadge$0(Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "setAppBadgeCount"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public executeBadge(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_badge_count"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;Landroid/os/Bundle;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.zui.launcher"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

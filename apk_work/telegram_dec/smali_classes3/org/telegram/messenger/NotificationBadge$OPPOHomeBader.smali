.class public Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;
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
    name = "OPPOHomeBader"
.end annotation


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.oppo.unsettledevent"

.field private static final INTENT_EXTRA_BADGEUPGRADE_COUNT:Ljava/lang/String; = "app_badge_count"

.field private static final INTENT_EXTRA_BADGE_COUNT:Ljava/lang/String; = "number"

.field private static final INTENT_EXTRA_BADGE_UPGRADENUMBER:Ljava/lang/String; = "upgradeNumber"

.field private static final INTENT_EXTRA_PACKAGENAME:Ljava/lang/String; = "pakeageName"

.field private static final PROVIDER_CONTENT_URI:Ljava/lang/String; = "content://com.android.badge/badge"


# instance fields
.field private mCurrentTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->mCurrentTotalCount:I

    return-void
.end method

.method private executeBadgeByContentProvider(I)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_badge_count"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.android.badge/badge"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "setAppBadgeCount"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public executeBadge(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->mCurrentTotalCount:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->mCurrentTotalCount:I

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;->executeBadgeByContentProvider(I)V

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

    const-string v0, "com.oppo.launcher"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

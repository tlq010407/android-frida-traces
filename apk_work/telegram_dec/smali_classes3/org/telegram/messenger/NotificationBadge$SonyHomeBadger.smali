.class public Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;
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
    name = "SonyHomeBadger"
.end annotation


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.sonyericsson.home.action.UPDATE_BADGE"

.field private static final INTENT_EXTRA_ACTIVITY_NAME:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

.field private static final INTENT_EXTRA_MESSAGE:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.MESSAGE"

.field private static final INTENT_EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

.field private static final INTENT_EXTRA_SHOW_MESSAGE:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

.field private static final PROVIDER_COLUMNS_ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field private static final PROVIDER_COLUMNS_BADGE_COUNT:Ljava/lang/String; = "badge_count"

.field private static final PROVIDER_COLUMNS_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final PROVIDER_CONTENT_URI:Ljava/lang/String; = "content://com.sonymobile.home.resourceprovider/badge"

.field private static final SONY_HOME_PROVIDER_NAME:Ljava/lang/String; = "com.sonymobile.home.resourceprovider"

.field private static mQueryHandler:Landroid/content/AsyncQueryHandler;


# instance fields
.field private final BADGE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$H_yhqBO15iA4akNgr5hWbs4v-s0(Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->lambda$executeBadgeByBroadcast$0(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.sonymobile.home.resourceprovider/badge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->BADGE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private static executeBadgeByBroadcast(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeBadgeByContentProvider(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger$1;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger$1;-><init>(Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;Landroid/content/ContentResolver;)V

    sput-object v0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->insertBadgeAsync(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private insertBadgeAsync(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "badge_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "package_name"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "activity_name"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget-object p2, p0, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->BADGE_CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1, p2, v0}, Landroid/content/AsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static synthetic lambda$executeBadgeByBroadcast$0(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static sonyBadgeContentProviderExists()Z
    .locals 3

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sonymobile.home.resourceprovider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public executeBadge(I)V
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->sonyBadgeContentProviderExists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->executeBadgeByContentProvider(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;->executeBadgeByBroadcast(I)V

    :goto_0
    return-void
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.sonyericsson.home"

    const-string v1, "com.sonymobile.home"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

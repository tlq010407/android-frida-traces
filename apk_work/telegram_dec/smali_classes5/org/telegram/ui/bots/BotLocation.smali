.class public Lorg/telegram/ui/bots/BotLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotLocation$BotUserLocationDrawable;
    }
.end annotation


# static fields
.field private static final instances:Ljava/util/HashMap;


# instance fields
.field public final botId:J

.field public final context:Landroid/content/Context;

.field public final currentAccount:I

.field public granted:Z

.field private final listeners:Ljava/util/HashSet;

.field public requested:Z


# direct methods
.method public static synthetic $r8$lambda$86tC1-8Cxj1Ix_h60feMuwSKkCw(Lorg/telegram/ui/bots/BotLocation;[ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotLocation;->lambda$request$8([ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Xj70piI7CK4FZg3bmehdrwtO2k(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/BotLocation;->lambda$setGranted$0(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NrUSfLmt5mpXY0LtaVefOUiGIzk(Landroid/app/Activity;[ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/bots/BotLocation;->lambda$request$4(Landroid/app/Activity;[ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OSXabPKY6hS60qVVoINgOdUYRvM(Lorg/telegram/ui/bots/BotLocation;Lorg/telegram/messenger/Utilities$Callback2;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotLocation;->lambda$request$5(Lorg/telegram/messenger/Utilities$Callback2;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dPKSAzIc5cAAoA-4U3kWQAcxDF4(Lorg/telegram/ui/bots/BotLocation;[ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/bots/BotLocation;->lambda$request$6([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$efYrp1OxLO4ejzk5W_UfIccrpK8(Lorg/telegram/ui/bots/BotLocation;Ljava/lang/Runnable;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotLocation;->lambda$setGranted$1(Ljava/lang/Runnable;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wR4ZnsLyWlK0zsOB-zQJ7tCxYKg(Lorg/telegram/ui/bots/BotLocation;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotLocation;->lambda$setGranted$3(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xMdacKvXihdvFUeezED7uvxOYbE(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/BotLocation;->lambda$requestObject$9(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xW3cdApB4WxZutddt_BLoC-7ADU(Lorg/telegram/ui/bots/BotLocation;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotLocation;->lambda$setGranted$2(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yd5-wcj5HHxuYpqhG8PFHvmFjeI(Lorg/telegram/ui/bots/BotLocation;[ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/bots/BotLocation;->lambda$request$7([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/bots/BotLocation;->instances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    iput-object p1, p0, Lorg/telegram/ui/bots/BotLocation;->context:Landroid/content/Context;

    iput p2, p0, Lorg/telegram/ui/bots/BotLocation;->currentAccount:I

    iput-wide p3, p0, Lorg/telegram/ui/bots/BotLocation;->botId:J

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotLocation;->load()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/bots/BotLocation;Landroid/location/Location;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotLocation;->locationObject(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private appHasPermission()Z
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    if-eqz v0, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static clear()V
    .locals 5

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "botlocation_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/ui/bots/BotLocation;->instances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private deviceHasLocation()Z
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotLocation;
    .locals 3

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lorg/telegram/ui/bots/BotLocation;->instances:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/bots/BotLocation;

    if-nez v2, :cond_0

    new-instance v2, Lorg/telegram/ui/bots/BotLocation;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotLocation;-><init>(Landroid/content/Context;IJ)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotLocation;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static synthetic lambda$request$4(Landroid/app/Activity;[ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    :try_start_0
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    const/4 p3, 0x1

    aput-boolean p3, p1, p0

    if-eqz p2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, p0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$request$5(Lorg/telegram/messenger/Utilities$Callback2;[I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    aget v2, p2, v0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    iput-boolean v3, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotLocation;->save()V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$request$6([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p3, 0x0

    const/4 p4, 0x1

    aput-boolean p4, p1, p3

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->appHasPermission()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/bots/BotLocation;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/PermissionRequest;->requestPermissions([Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    iput-boolean p4, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotLocation;->save()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$request$7([ZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p3, 0x0

    aget-boolean p4, p1, p3

    if-eqz p4, :cond_0

    return-void

    :cond_0
    const/4 p4, 0x1

    aput-boolean p4, p1, p3

    iput-boolean p4, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    iput-boolean p3, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotLocation;->save()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$request$8([ZLorg/telegram/messenger/Utilities$Callback2;Landroid/content/DialogInterface;)V
    .locals 3

    const/4 p3, 0x0

    aget-boolean v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    iput-boolean p3, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotLocation;->save()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    aput-boolean v0, p1, p3

    if-eqz p2, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$requestObject$9(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic lambda$setGranted$0(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setGranted$1(Ljava/lang/Runnable;[I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget v2, p2, v0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotLocation;->save()V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$setGranted$2(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->appHasPermission()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/bots/BotLocation;Ljava/lang/Runnable;)V

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/PermissionRequest;->requestPermissions([Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotLocation;->save()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$setGranted$3(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotLocation;->save()V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Runnable;

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private locationObject(Landroid/location/Location;)Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "available"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "horizontal_accuracy"

    const/4 v3, 0x0

    const/16 v4, 0x1a

    if-lt v1, v4, :cond_2

    :try_start_1
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v2, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "vertical_accuracy"

    if-lt v1, v4, :cond_3

    :try_start_2
    invoke-static {p1}, Lcom/huawei/hms/locationSdk/a1$$ExternalSyntheticApiModelOutline0;->m(Landroid/location/Location;)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    const-string v2, "course"

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "course_accuracy"

    if-lt v1, v4, :cond_4

    :try_start_3
    invoke-static {p1}, Lcom/huawei/hms/locationSdk/a1$$ExternalSyntheticApiModelOutline2;->m(Landroid/location/Location;)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    const-string v2, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "speed_accuracy"

    if-lt v1, v4, :cond_5

    :try_start_4
    invoke-static {p1}, Lcom/huawei/hms/locationSdk/a1$$ExternalSyntheticApiModelOutline1;->m(Landroid/location/Location;)F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    return-object v0
.end method

.method private needToOpenSettings()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method


# virtual methods
.method public asked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    return v0
.end method

.method public checkObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "available"

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->deviceHasLocation()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->deviceHasLocation()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "access_requested"

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    if-eqz v1, :cond_1

    const-string v1, "access_granted"

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->appHasPermission()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-object v0
.end method

.method public granted()Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->appHasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listen(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public load()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotLocation;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "botlocation_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/bots/BotLocation;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotLocation;->botId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_requested"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotLocation;->botId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_granted"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->appHasPermission()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotLocation;->save()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public request(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 10

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->deviceHasLocation()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->appHasPermission()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-array v2, v0, [Z

    iget v3, p0, Lorg/telegram/ui/bots/BotLocation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotLocation;->botId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v5, Lorg/telegram/messenger/R$string;->BotLocationPermissionRequest:I

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aput-object v7, v8, v0

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v0, Lorg/telegram/ui/bots/BotLocation$BotUserLocationDrawable;

    iget-object v5, p0, Lorg/telegram/ui/bots/BotLocation;->context:Landroid/content/Context;

    iget v6, p0, Lorg/telegram/ui/bots/BotLocation;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    invoke-direct {v0, v5, v6, v3}, Lorg/telegram/ui/bots/BotLocation$BotUserLocationDrawable;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopImage(Landroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->appHasPermission()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->needToOpenSettings()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/messenger/R$string;->BotLocationPermissionSettings:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, v2, p1}, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda5;-><init>(Landroid/app/Activity;[ZLorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->BotLocationPermissionAllow:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v2, p1}, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/bots/BotLocation;[ZLorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :goto_1
    sget v0, Lorg/telegram/messenger/R$string;->BotLocationPermissionDecline:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v2, p1}, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/bots/BotLocation;[ZLorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v0, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, v2, p1}, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/bots/BotLocation;[ZLorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public requestObject(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->appHasPermission()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->deviceHasLocation()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/location/LocationManager;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    const/4 v9, 0x0

    move-object v5, v9

    :goto_0
    if-ltz v4, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v5, :cond_5

    const-string v1, "gps"

    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_3

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :cond_3
    if-eqz v0, :cond_4

    :try_start_0
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/16 v5, 0x48

    invoke-virtual {v1, v3, v5, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->GpsDisabledAlertText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->Enable:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    invoke-direct {p0, v9}, Lorg/telegram/ui/bots/BotLocation;->locationObject(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_3
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_5
    if-eqz v5, :cond_6

    invoke-direct {p0, v5}, Lorg/telegram/ui/bots/BotLocation;->locationObject(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_3

    :cond_6
    :try_start_1
    new-array v0, v0, [Landroid/location/LocationListener;

    new-instance v8, Lorg/telegram/ui/bots/BotLocation$1;

    invoke-direct {v8, p0, v3, v0, p1}, Lorg/telegram/ui/bots/BotLocation$1;-><init>(Lorg/telegram/ui/bots/BotLocation;Landroid/location/LocationManager;[Landroid/location/LocationListener;Lorg/telegram/messenger/Utilities$Callback;)V

    aput-object v8, v0, v2

    const-string v4, "gps"

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-direct {p0, v9}, Lorg/telegram/ui/bots/BotLocation;->locationObject(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :goto_4
    return-void

    :cond_7
    :try_start_2
    const-string v1, "available"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public save()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotLocation;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "botlocation_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/bots/BotLocation;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotLocation;->botId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_granted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotLocation;->botId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_requested"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setGranted(ZLjava/lang/Runnable;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotLocation;->requested:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->appHasPermission()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/bots/BotLocation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotLocation;->botId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v3, Lorg/telegram/messenger/R$string;->BotLocationPermissionRequest:I

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    aput-object v5, v6, v0

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v0, Lorg/telegram/ui/bots/BotLocation$BotUserLocationDrawable;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotLocation;->context:Landroid/content/Context;

    iget v4, p0, Lorg/telegram/ui/bots/BotLocation;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lorg/telegram/ui/bots/BotLocation$BotUserLocationDrawable;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopImage(Landroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotLocation;->needToOpenSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->BotLocationPermissionSettings:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->BotLocationPermissionAllow:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/bots/BotLocation;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :goto_0
    sget p1, Lorg/telegram/messenger/R$string;->BotLocationPermissionDecline:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/bots/BotLocation$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/bots/BotLocation;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_2

    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotLocation;->granted:Z

    iget-object p1, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotLocation;->save()V

    return-void
.end method

.method public unlisten(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotLocation;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

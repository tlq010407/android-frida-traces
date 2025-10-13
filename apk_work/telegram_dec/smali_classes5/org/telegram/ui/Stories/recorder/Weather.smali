.class public abstract Lorg/telegram/ui/Stories/recorder/Weather;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/Weather$State;
    }
.end annotation


# static fields
.field private static cacheKey:Ljava/lang/String;

.field private static cacheValue:Lorg/telegram/ui/Stories/recorder/Weather$State;


# direct methods
.method public static synthetic $r8$lambda$HwMgRd6w3M2ltU9sea8qMCkMyMY([Landroid/location/LocationListener;Landroid/location/LocationManager;[Lorg/telegram/messenger/Utilities$Callback;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$getUserLocation$10([Landroid/location/LocationListener;Landroid/location/LocationManager;[Lorg/telegram/messenger/Utilities$Callback;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LvmGAQ8vOYYmiQ2WX2rhP3dwbfw([ILorg/telegram/messenger/Utilities$Callback;DDLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$fetch$4([ILorg/telegram/messenger/Utilities$Callback;DDLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MSQlLJDRqje0yOIZU1OwptyEMUs(Lorg/telegram/messenger/Utilities$Callback;ZLjava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$getUserLocation$11(Lorg/telegram/messenger/Utilities$Callback;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NGJfm7qRetQAhAZKkKa7PMjVHvs([ILorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$fetch$7([ILorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TughEvwce160l2o9BDiKqi5wbPE(Lorg/telegram/messenger/Utilities$Callback;ZLandroid/location/Location;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$fetch$2(Lorg/telegram/messenger/Utilities$Callback;ZLandroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VkVcr5mKlXTTbz3fVX0BPcw6qek([ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;DDLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$fetch$3([ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;DDLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hUhBhSJ8m8V563yHFnm1jsY1csg([ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$fetch$6([ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nAYqXtfjarswOfmTAi71qhvF14s(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$fetch$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pVz-5ZF43ADALZvvq5I3OLcOx2I([ILorg/telegram/tgnet/ConnectionsManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$fetch$8([ILorg/telegram/tgnet/ConnectionsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ubN9jkSqwNZ09lyaxiX-Hqabp-o(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$fetch$0(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/recorder/Weather$State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y8ccj1gKyF4KhB6_9XJnM5jUfdo(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$getUserLocation$9(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zc5k0-Ozww0-sdCSMlUOJeTQzUs(Lorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;DD[ILorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/Stories/recorder/Weather;->lambda$fetch$5(Lorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;DD[ILorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static fetch(DDLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 19

    .line 0
    move-object/from16 v11, p4

    const/4 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez v11, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "UTC"

    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v7, p0, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-double v5, v5, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "at"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lorg/telegram/ui/Stories/recorder/Weather;->cacheValue:Lorg/telegram/ui/Stories/recorder/Weather$State;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/telegram/ui/Stories/recorder/Weather;->cacheKey:Ljava/lang/String;

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lorg/telegram/ui/Stories/recorder/Weather;->cacheValue:Lorg/telegram/ui/Stories/recorder/Weather$State;

    invoke-interface {v11, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-array v13, v0, [I

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    iget-object v9, v14, Lorg/telegram/messenger/MessagesController;->weatherSearchUsername:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    new-array v8, v0, [Lorg/telegram/tgnet/TLRPC$User;

    aput-object v1, v8, v12

    new-instance v16, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda7;

    move-object/from16 v0, v16

    move-object v1, v14

    move-object v2, v8

    move-wide/from16 v3, p0

    move-wide/from16 v5, p2

    move-object v7, v13

    move-object/from16 v17, v8

    move-object v8, v15

    move-object/from16 v18, v9

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;DD[ILorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    aget-object v0, v17, v12

    if-nez v0, :cond_2

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    new-instance v7, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda8;

    move-object v0, v7

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda8;-><init>([ILorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v15, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    aput v0, v13, v12

    goto :goto_0

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    :goto_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda9;

    invoke-direct {v0, v13, v15}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda9;-><init>([ILorg/telegram/tgnet/ConnectionsManager;)V

    return-object v0
.end method

.method public static fetch(ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p0}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback;Z)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Stories/recorder/Weather;->getUserLocation(ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static getCached()Lorg/telegram/ui/Stories/recorder/Weather$State;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Stories/recorder/Weather;->cacheValue:Lorg/telegram/ui/Stories/recorder/Weather$State;

    return-object v0
.end method

.method public static getUserLocation(ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    sget v1, Lorg/telegram/messenger/R$string;->PermissionNoLocationStory:I

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda6;

    invoke-direct {v4, p1, p0}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/Utilities$Callback;Z)V

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/PermissionRequest;->ensureEitherPermission(II[Ljava/lang/String;[Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static isDefaultCelsius()Z
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "America/Nassau"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "America/Belize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "America/Cayman"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Pacific/Palau"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$fetch$0(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 2

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    :cond_0
    invoke-interface {p2, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$fetch$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$fetch$2(Lorg/telegram/messenger/Utilities$Callback;ZLandroid/location/Location;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v2, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_3
    if-eqz p1, :cond_4

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    :cond_4
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    new-instance p2, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1, v0, p0}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda4;-><init>(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v1, v2, v3, v4, p2}, Lorg/telegram/ui/Stories/recorder/Weather;->fetch(DDLorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    new-instance p1, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$fetch$3([ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;DDLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    aput v0, p0, v0

    instance-of p0, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    :try_start_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/telegram/ui/Stories/recorder/Weather$State;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/Weather$State;-><init>()V

    iput-wide p3, v0, Lorg/telegram/ui/Stories/recorder/Weather$State;->lat:D

    iput-wide p5, v0, Lorg/telegram/ui/Stories/recorder/Weather$State;->lng:D

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/Weather$State;->emoji:Ljava/lang/String;

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/Weather$State;->temperature:F

    sput-object p7, Lorg/telegram/ui/Stories/recorder/Weather;->cacheKey:Ljava/lang/String;

    sput-object v0, Lorg/telegram/ui/Stories/recorder/Weather;->cacheValue:Lorg/telegram/ui/Stories/recorder/Weather$State;

    invoke-interface {p2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :catch_0
    invoke-interface {p2, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p2, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$fetch$4([ILorg/telegram/messenger/Utilities$Callback;DDLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    new-instance v9, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda2;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda2;-><init>([ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;DDLjava/lang/String;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$fetch$5(Lorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;DD[ILorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p1, v1

    move-object v3, p0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const-string v2, ""

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->flags:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-wide v6, p2

    iput-wide v6, v2, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    move-wide v8, p4

    iput-wide v8, v2, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda1;

    move-object v3, v2

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda1;-><init>([ILorg/telegram/messenger/Utilities$Callback;DDLjava/lang/String;)V

    move-object/from16 v3, p7

    invoke-virtual {v3, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    aput v0, p6, v1

    return-void
.end method

.method private static synthetic lambda$fetch$6([ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    aput v0, p0, v0

    instance-of p0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, p0, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, p0, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    aput-object p0, p3, v0

    if-eqz p0, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p5, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$fetch$7([ILorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p6, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda0;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda0;-><init>([ILorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;[Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$fetch$8([ILorg/telegram/tgnet/ConnectionsManager;)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    aput v0, p0, v0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getUserLocation$10([Landroid/location/LocationListener;Landroid/location/LocationManager;[Lorg/telegram/messenger/Utilities$Callback;Landroid/location/Location;)V
    .locals 3

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    aput-object v2, p0, v0

    :cond_0
    aget-object p0, p2, v0

    if-eqz p0, :cond_1

    invoke-interface {p0, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    aput-object v2, p2, v0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$getUserLocation$11(Lorg/telegram/messenger/Utilities$Callback;ZLjava/lang/Boolean;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-interface {p0, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/location/LocationManager;

    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    move-object v5, v2

    :goto_0
    if-ltz v4, :cond_2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz p1, :cond_5

    const-string p1, "gps"

    invoke-virtual {v3, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez p1, :cond_3

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :cond_3
    if-eqz p1, :cond_5

    :try_start_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/16 v4, 0x48

    invoke-virtual {p2, v1, v4, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->GpsDisabledAlertText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v0, Lorg/telegram/messenger/R$string;->Enable:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    :try_start_1
    new-array p1, v1, [Lorg/telegram/messenger/Utilities$Callback;

    aput-object p0, p1, v0

    new-array p2, v1, [Landroid/location/LocationListener;

    aput-object v2, p2, v0

    new-instance v8, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda11;

    invoke-direct {v8, p2, v3, p1}, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda11;-><init>([Landroid/location/LocationListener;Landroid/location/LocationManager;[Lorg/telegram/messenger/Utilities$Callback;)V

    aput-object v8, p2, v0

    const-string v4, "gps"

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-interface {p0, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    invoke-interface {p0, v5}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getUserLocation$9(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
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

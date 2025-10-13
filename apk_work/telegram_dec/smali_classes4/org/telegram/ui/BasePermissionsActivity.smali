.class public abstract Lorg/telegram/ui/BasePermissionsActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field protected currentAccount:I


# direct methods
.method public static synthetic $r8$lambda$av5tuPIMEAh1SiRL4GoJpadsOOM(Lorg/telegram/ui/BasePermissionsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->lambda$createPermissionErrorAlert$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    return-void
.end method

.method private synthetic lambda$createPermissionErrorAlert$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
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

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private showPermissionErrorAlert(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->createPermissionErrorAlert(ILjava/lang/String;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected checkPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    new-array p3, v1, [I

    :cond_0
    if-nez p2, :cond_1

    new-array p2, v1, [Ljava/lang/String;

    :cond_1
    array-length v2, p3

    if-lez v2, :cond_2

    aget v2, p3, v1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x68

    if-ne p1, v3, :cond_4

    if-eqz v2, :cond_3

    sget-object p1, Lorg/telegram/ui/GroupCallActivity;->groupCallInstance:Lorg/telegram/ui/GroupCallActivity;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->enableCamera()V

    goto/16 :goto_c

    :cond_3
    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget p2, Lorg/telegram/messenger/R$string;->VoipNeedCameraPermission:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->showPermissionErrorAlert(ILjava/lang/String;)V

    goto/16 :goto_c

    :cond_4
    const/4 v3, 0x4

    const/16 v4, 0x97

    if-eq p1, v3, :cond_19

    if-ne p1, v4, :cond_5

    goto/16 :goto_9

    :cond_5
    const/4 v3, 0x5

    if-ne p1, v3, :cond_7

    if-nez v2, :cond_6

    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_contacts:I

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoContactsSharing:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/BasePermissionsActivity;->showPermissionErrorAlert(ILjava/lang/String;)V

    return v1

    :cond_6
    iget p1, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    goto/16 :goto_c

    :cond_7
    const/4 v3, 0x3

    const/16 v4, 0x96

    if-eq p1, v3, :cond_e

    if-ne p1, v4, :cond_8

    goto :goto_5

    :cond_8
    const/16 p2, 0x12

    if-eq p1, p2, :cond_d

    const/16 p2, 0x13

    if-eq p1, p2, :cond_d

    const/16 p2, 0x14

    if-eq p1, p2, :cond_d

    const/16 p2, 0x16

    if-ne p1, p2, :cond_9

    goto :goto_4

    :cond_9
    const/4 p2, 0x2

    if-ne p1, p2, :cond_b

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    if-eqz v2, :cond_a

    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    goto :goto_2

    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    :goto_2
    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_b
    const/16 p2, 0xd3

    if-ne p1, p2, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    if-eqz v2, :cond_c

    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    goto :goto_3

    :cond_c
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_d
    :goto_4
    if-nez v2, :cond_1c

    goto :goto_8

    :cond_e
    :goto_5
    array-length v2, p2

    array-length v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_6
    if-ge v3, v2, :cond_13

    aget-object v7, p2, v3

    const-string v8, "android.permission.RECORD_AUDIO"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    aget v5, p3, v3

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    goto :goto_7

    :cond_10
    aget-object v7, p2, v3

    const-string v8, "android.permission.CAMERA"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    aget v6, p3, v3

    if-nez v6, :cond_11

    const/4 v6, 0x1

    goto :goto_7

    :cond_11
    const/4 v6, 0x0

    :cond_12
    :goto_7
    add-int/2addr v3, v0

    goto :goto_6

    :cond_13
    if-ne p1, v4, :cond_15

    if-eqz v5, :cond_14

    if-nez v6, :cond_15

    :cond_14
    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoCameraMicVideo:I

    goto/16 :goto_1

    :cond_15
    if-nez v5, :cond_16

    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_microphone:I

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoAudioWithHint:I

    goto/16 :goto_1

    :cond_16
    if-nez v6, :cond_17

    :goto_8
    sget p1, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoCameraWithHint:I

    goto/16 :goto_1

    :cond_17
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    if-eqz p1, :cond_18

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    :cond_18
    return v1

    :cond_19
    :goto_9
    if-nez v2, :cond_1b

    sget p2, Lorg/telegram/messenger/R$raw;->permission_request_folder:I

    if-ne p1, v4, :cond_1a

    sget p1, Lorg/telegram/messenger/R$string;->PermissionNoStorageAvatar:I

    :goto_a
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_1a
    sget p1, Lorg/telegram/messenger/R$string;->PermissionStorageWithHint:I

    goto :goto_a

    :goto_b
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/BasePermissionsActivity;->showPermissionErrorAlert(ILjava/lang/String;)V

    goto :goto_c

    :cond_1b
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    :cond_1c
    :goto_c
    return v0
.end method

.method protected createPermissionErrorAlert(ILjava/lang/String;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 4

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/16 v2, 0x48

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/BasePermissionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/BasePermissionsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/BasePermissionsActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    return-object p1
.end method

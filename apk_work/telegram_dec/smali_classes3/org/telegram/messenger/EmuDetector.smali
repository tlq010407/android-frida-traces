.class public Lorg/telegram/messenger/EmuDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/EmuDetector$EmulatorTypes;,
        Lorg/telegram/messenger/EmuDetector$Property;,
        Lorg/telegram/messenger/EmuDetector$OnEmulatorDetectorListener;
    }
.end annotation


# static fields
.field private static final ANDY_FILES:[Ljava/lang/String;

.field private static final BLUE_FILES:[Ljava/lang/String;

.field private static final DEVICE_IDS:[Ljava/lang/String;

.field private static final GENY_FILES:[Ljava/lang/String;

.field private static final IMSI_IDS:[Ljava/lang/String;

.field private static final IP:Ljava/lang/String; = "10.0.2.15"

.field private static final MIN_PROPERTIES_THRESHOLD:I = 0x5

.field private static final NOX_FILES:[Ljava/lang/String;

.field private static final PHONE_NUMBERS:[Ljava/lang/String;

.field private static final PIPES:[Ljava/lang/String;

.field private static final PROPERTIES:[Lorg/telegram/messenger/EmuDetector$Property;

.field private static final QEMU_DRIVERS:[Ljava/lang/String;

.field private static final X86_FILES:[Ljava/lang/String;

.field private static mEmulatorDetector:Lorg/telegram/messenger/EmuDetector;


# instance fields
.field private detectResult:Z

.field private detected:Z

.field private isCheckPackage:Z

.field private isTelephony:Z

.field private final mContext:Landroid/content/Context;

.field private mListPackageName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v14, "15555215582"

    const-string v15, "15555215584"

    const-string v0, "15555215554"

    const-string v1, "15555215556"

    const-string v2, "15555215558"

    const-string v3, "15555215560"

    const-string v4, "15555215562"

    const-string v5, "15555215564"

    const-string v6, "15555215566"

    const-string v7, "15555215568"

    const-string v8, "15555215570"

    const-string v9, "15555215572"

    const-string v10, "15555215574"

    const-string v11, "15555215576"

    const-string v12, "15555215578"

    const-string v13, "15555215580"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/EmuDetector;->PHONE_NUMBERS:[Ljava/lang/String;

    const-string v0, "e21833235b6eef10"

    const-string v1, "012345678912345"

    const-string v2, "000000000000000"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/EmuDetector;->DEVICE_IDS:[Ljava/lang/String;

    const-string v0, "310260000000000"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/EmuDetector;->IMSI_IDS:[Ljava/lang/String;

    const-string v0, "/dev/socket/genyd"

    const-string v1, "/dev/socket/baseband_genyd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/EmuDetector;->GENY_FILES:[Ljava/lang/String;

    const-string v0, "goldfish"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/EmuDetector;->QEMU_DRIVERS:[Ljava/lang/String;

    const-string v1, "/dev/socket/qemud"

    const-string v2, "/dev/qemu_pipe"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/EmuDetector;->PIPES:[Ljava/lang/String;

    const-string v8, "init.vbox86.rc"

    const-string v9, "ueventd.vbox86.rc"

    const-string v2, "ueventd.android_x86.rc"

    const-string/jumbo v3, "x86.prop"

    const-string v4, "ueventd.ttVM_x86.rc"

    const-string v5, "init.ttVM_x86.rc"

    const-string v6, "fstab.ttVM_x86"

    const-string v7, "fstab.vbox86"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/EmuDetector;->X86_FILES:[Ljava/lang/String;

    const-string v1, "fstab.andy"

    const-string v2, "ueventd.andy.rc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/EmuDetector;->ANDY_FILES:[Ljava/lang/String;

    const-string v1, "/BigNoxGameHD"

    const-string v2, "/YSLauncher"

    const-string v3, "fstab.nox"

    const-string v4, "init.nox.rc"

    const-string v5, "ueventd.nox.rc"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/EmuDetector;->NOX_FILES:[Ljava/lang/String;

    const-string v1, "/Android/data/com.bluestacks.home"

    const-string v2, "/Android/data/com.bluestacks.settings"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/EmuDetector;->BLUE_FILES:[Ljava/lang/String;

    new-instance v1, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v2, "init.svc.qemud"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v4, "init.svc.qemu-props"

    invoke-direct {v2, v4, v3}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v5, "qemu.hw.mainkeys"

    invoke-direct {v4, v5, v3}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v6, "qemu.sf.fake_camera"

    invoke-direct {v5, v6, v3}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v7, "qemu.sf.lcd_density"

    invoke-direct {v6, v7, v3}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v8, "ro.bootloader"

    const-string v9, "unknown"

    invoke-direct {v7, v8, v9}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v10, "ro.bootmode"

    invoke-direct {v8, v10, v9}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v10, "ro.hardware"

    invoke-direct {v9, v10, v0}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v10, "ro.kernel.android.qemud"

    invoke-direct {v0, v10, v3}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v11, "ro.kernel.qemu.gles"

    invoke-direct {v10, v11, v3}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v12, "ro.kernel.qemu"

    const-string v13, "1"

    invoke-direct {v11, v12, v13}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v13, "ro.product.device"

    const-string v14, "generic"

    invoke-direct {v12, v13, v14}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v14, "ro.product.model"

    const-string v15, "sdk"

    invoke-direct {v13, v14, v15}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v3, "ro.product.name"

    invoke-direct {v14, v3, v15}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/messenger/EmuDetector$Property;

    const-string v15, "ro.serialno"

    move-object/from16 v16, v14

    const/4 v14, 0x0

    invoke-direct {v3, v15, v14}, Lorg/telegram/messenger/EmuDetector$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0xf

    new-array v14, v14, [Lorg/telegram/messenger/EmuDetector$Property;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v1, 0x1

    aput-object v2, v14, v1

    const/4 v1, 0x2

    aput-object v4, v14, v1

    const/4 v1, 0x3

    aput-object v5, v14, v1

    const/4 v1, 0x4

    aput-object v6, v14, v1

    const/4 v1, 0x5

    aput-object v7, v14, v1

    const/4 v1, 0x6

    aput-object v8, v14, v1

    const/4 v1, 0x7

    aput-object v9, v14, v1

    const/16 v1, 0x8

    aput-object v0, v14, v1

    const/16 v0, 0x9

    aput-object v10, v14, v0

    const/16 v0, 0xa

    aput-object v11, v14, v0

    const/16 v0, 0xb

    aput-object v12, v14, v0

    const/16 v0, 0xc

    aput-object v13, v14, v0

    const/16 v0, 0xd

    aput-object v16, v14, v0

    const/16 v0, 0xe

    aput-object v3, v14, v0

    sput-object v14, Lorg/telegram/messenger/EmuDetector;->PROPERTIES:[Lorg/telegram/messenger/EmuDetector$Property;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->isTelephony:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->isCheckPackage:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mListPackageName:Ljava/util/List;

    iput-object p1, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    const-string p1, "com.google.android.launcher.layouts.genymotion"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/messenger/EmuDetector;->mListPackageName:Ljava/util/List;

    const-string v0, "com.bluestacks"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/messenger/EmuDetector;->mListPackageName:Ljava/util/List;

    const-string v0, "com.bignox.app"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/messenger/EmuDetector;->mListPackageName:Ljava/util/List;

    const-string v0, "com.vphone.launcher"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkAdvanced()Z
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkTelephony()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/EmuDetector;->GENY_FILES:[Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->GENY:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/EmuDetector;->checkFiles([Ljava/lang/String;Lorg/telegram/messenger/EmuDetector$EmulatorTypes;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/EmuDetector;->ANDY_FILES:[Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->ANDY:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/EmuDetector;->checkFiles([Ljava/lang/String;Lorg/telegram/messenger/EmuDetector$EmulatorTypes;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/EmuDetector;->NOX_FILES:[Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->NOX:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/EmuDetector;->checkFiles([Ljava/lang/String;Lorg/telegram/messenger/EmuDetector$EmulatorTypes;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/EmuDetector;->BLUE_FILES:[Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->BLUE:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/EmuDetector;->checkFiles([Ljava/lang/String;Lorg/telegram/messenger/EmuDetector$EmulatorTypes;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkQEmuDrivers()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/EmuDetector;->PIPES:[Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->PIPES:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/EmuDetector;->checkFiles([Ljava/lang/String;Lorg/telegram/messenger/EmuDetector$EmulatorTypes;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkIp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkQEmuProps()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/EmuDetector;->X86_FILES:[Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->X86:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/EmuDetector;->checkFiles([Ljava/lang/String;Lorg/telegram/messenger/EmuDetector$EmulatorTypes;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private checkBasic()Z
    .locals 8

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "google_sdk"

    const-string v4, "generic"

    const/4 v5, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "droid4x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "emulator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Android SDK built for x86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "genymotion"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "goldfish"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "vbox86"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android_x86"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ranchu"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "sdk"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "sdk_x86"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "vbox86p"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v5

    :cond_2
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    or-int/2addr v0, v2

    if-eqz v0, :cond_4

    return v5

    :cond_4
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private checkDeviceId()Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/EmuDetector;->DEVICE_IDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private checkFiles([Ljava/lang/String;Lorg/telegram/messenger/EmuDetector$EmulatorTypes;)Z
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->NOX:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    if-eq p2, v4, :cond_1

    :cond_0
    sget-object v4, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->BLUE:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    if-ne p2, v4, :cond_2

    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private checkImsi()Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/EmuDetector;->IMSI_IDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private checkIp()Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "/system/bin/netcfg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/lang/ProcessBuilder;

    invoke-direct {v4, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v5, "/system/bin/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    const-string v6, "wlan0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "tunl0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "eth0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-string v6, "10.0.2.15"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return v1
.end method

.method private checkOperatorNameAndroid()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkPackageName()Z
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->isCheckPackage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mListPackageName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/EmuDetector;->mListPackageName:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private checkPhoneNumber()Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/EmuDetector;->PHONE_NUMBERS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private checkQEmuDrivers()Z
    .locals 10

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/tty/drivers"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x400

    new-array v6, v6, [B

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    sget-object v6, Lorg/telegram/messenger/EmuDetector;->QEMU_DRIVERS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    return v0

    :cond_0
    add-int/2addr v8, v0

    goto :goto_2

    :cond_1
    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return v4
.end method

.method private checkQEmuProps()Z
    .locals 8

    sget-object v0, Lorg/telegram/messenger/EmuDetector;->PROPERTIES:[Lorg/telegram/messenger/EmuDetector$Property;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    iget-object v6, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    iget-object v7, v5, Lorg/telegram/messenger/EmuDetector$Property;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/EmuDetector;->getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lorg/telegram/messenger/EmuDetector$Property;->seek_value:Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-lt v4, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private checkTelephony()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->isTelephony:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->isSupportTelePhony()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkPhoneNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkDeviceId()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkImsi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkOperatorNameAndroid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "android.os.SystemProperties"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "get"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isSupportTelePhony()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static with(Landroid/content/Context;)Lorg/telegram/messenger/EmuDetector;
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lorg/telegram/messenger/EmuDetector;->mEmulatorDetector:Lorg/telegram/messenger/EmuDetector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/EmuDetector;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/telegram/messenger/EmuDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/telegram/messenger/EmuDetector;->mEmulatorDetector:Lorg/telegram/messenger/EmuDetector;

    :cond_0
    sget-object p0, Lorg/telegram/messenger/EmuDetector;->mEmulatorDetector:Lorg/telegram/messenger/EmuDetector;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addPackageName(Ljava/lang/String;)Lorg/telegram/messenger/EmuDetector;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mListPackageName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPackageName(Ljava/util/List;)Lorg/telegram/messenger/EmuDetector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/telegram/messenger/EmuDetector;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/EmuDetector;->mListPackageName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public detect()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detectResult:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detected:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detectResult:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkBasic()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detectResult:Z

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detectResult:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkAdvanced()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detectResult:Z

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detectResult:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/messenger/EmuDetector;->checkPackageName()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detectResult:Z

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detectResult:Z

    if-nez v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/EmuInputDevicesDetector;->detect()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detectResult:Z

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->detectResult:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckPackage()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->isCheckPackage:Z

    return v0
.end method

.method public isCheckTelephony()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/EmuDetector;->isTelephony:Z

    return v0
.end method

.method public setCheckPackage(Z)Lorg/telegram/messenger/EmuDetector;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/EmuDetector;->isCheckPackage:Z

    return-object p0
.end method

.method public setCheckTelephony(Z)Lorg/telegram/messenger/EmuDetector;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/EmuDetector;->isTelephony:Z

    return-object p0
.end method

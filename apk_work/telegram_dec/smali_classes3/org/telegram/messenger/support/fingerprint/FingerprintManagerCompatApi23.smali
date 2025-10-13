.class public abstract Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    return-object p0
.end method

.method public static hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$$ExternalSyntheticApiModelOutline1;->m(Landroid/hardware/fingerprint/FingerprintManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static isHardwareDetected(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

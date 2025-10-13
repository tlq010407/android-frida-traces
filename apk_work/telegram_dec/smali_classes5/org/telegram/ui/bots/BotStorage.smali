.class public Lorg/telegram/ui/bots/BotStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotStorage$StorageConfig;
    }
.end annotation


# instance fields
.field public final account:I

.field public final bot_id:J

.field public final context:Landroid/content/Context;

.field public final secured:Z

.field public storage_id:Ljava/lang/String;

.field public final user_id:J


# direct methods
.method public static synthetic $r8$lambda$1QeqdZGUGcNLkOPCyxkRxBxR_Dk([ZLorg/telegram/messenger/Utilities$Callback;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/bots/BotStorage;->lambda$showChooseStorage$3([ZLorg/telegram/messenger/Utilities$Callback;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Tr-ejV4DZFTKINv8zN0Fm9U-Nc(Ljava/util/HashSet;Lorg/telegram/ui/bots/BotStorage$StorageConfig;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotStorage;->lambda$getKey$0(Ljava/util/HashSet;Lorg/telegram/ui/bots/BotStorage$StorageConfig;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$F0LUj9F8WXBbvF1WTUfplcMfhfg([Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage$StorageConfig;Ljava/util/ArrayList;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/bots/BotStorage;->lambda$showChooseStorage$2([Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage$StorageConfig;Ljava/util/ArrayList;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WR9erIHrU4gsykerJmxz-H3I8b0(Ljava/util/HashSet;Lorg/telegram/ui/bots/BotStorage$StorageConfig;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotStorage;->lambda$getStoragesWithKey$1(Ljava/util/HashSet;Lorg/telegram/ui/bots/BotStorage$StorageConfig;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_XiV6ygf3hnFTc2t7ybF1Gj-LJQ([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/BotStorage;->lambda$showChooseStorage$4([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotStorage;->context:Landroid/content/Context;

    iput p2, p0, Lorg/telegram/ui/bots/BotStorage;->account:I

    iput-wide p5, p0, Lorg/telegram/ui/bots/BotStorage;->bot_id:J

    iput-wide p3, p0, Lorg/telegram/ui/bots/BotStorage;->user_id:J

    iput-boolean p7, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    return-void
.end method

.method private getBytes(Ljava/io/File;)[B
    .locals 5

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    new-array v3, v1, [B

    sub-int/2addr v2, v1

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-array v1, v2, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v2, v4, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string v0, "{}"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/bots/BotStorage;->setBytes(Ljava/io/File;[B)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "UNKNOWN_ERROR"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "QUOTA_EXCEEDED"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getConfigFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/ui/bots/BotStorage;->getDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "secure_config.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDir()Ljava/io/File;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "apps_storage/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v1

    :catch_0
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .line 0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/ui/bots/BotStorage;->getDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lorg/telegram/ui/bots/BotStorage;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotStorage;->bot_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    const-string v4, ""

    const-string v5, "_s"

    if-eqz v3, :cond_1

    move-object v3, v5

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/ui/bots/BotStorage;->getDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lorg/telegram/ui/bots/BotStorage;->bot_id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz v6, :cond_2

    move-object v4, v5

    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/ui/bots/BotStorage;->getDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lorg/telegram/ui/bots/BotStorage;->user_id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/telegram/ui/bots/BotStorage;->bot_id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_4
    return-object v0
.end method

.method private getJSON()Lorg/json/JSONObject;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotStorage;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/BotStorage;->getJSON(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getJSON(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 5

    .line 0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotStorage;->getBytes(Ljava/io/File;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private getRawBytes(Ljava/io/File;)[B
    .locals 3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    :try_start_0
    new-array p1, p1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "QUOTA_EXCEEDED"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSecretKey()Ljavax/crypto/SecretKey;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v3, "MiniAppsKey"

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "AES"

    invoke-static {v4, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v5, "GCM"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/secure/android/common/encrypt/keystore/aes/AesGcmKS$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;[Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string v5, "NoPadding"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/secure/android/common/encrypt/keystore/aes/AesGcmKS$$ExternalSyntheticApiModelOutline1;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;[Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/messenger/FingerprintController$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/secure/android/common/encrypt/keystore/aes/AesGcmKS$$ExternalSyntheticApiModelOutline3;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    :cond_0
    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UNSUPPORTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSecuredSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$getKey$0(Ljava/util/HashSet;Lorg/telegram/ui/bots/BotStorage$StorageConfig;)Z
    .locals 2

    iget-wide v0, p1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getStoragesWithKey$1(Ljava/util/HashSet;Lorg/telegram/ui/bots/BotStorage$StorageConfig;)Z
    .locals 2

    iget-wide v0, p1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$showChooseStorage$2([Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage$StorageConfig;Ljava/util/ArrayList;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/view/View;)V
    .locals 2

    iget-object p1, p1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->storage_id:Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p1, p0, p4

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/bots/BotStorage$1StorageCell;

    invoke-static {p2}, Lorg/telegram/ui/bots/BotStorage$1StorageCell;->access$000(Lorg/telegram/ui/bots/BotStorage$1StorageCell;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p0, p4

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/bots/BotStorage$1StorageCell;->setChecked(Z)V

    goto :goto_0

    :cond_0
    aget-object p0, p0, p4

    if-eqz p0, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    return-void
.end method

.method private static synthetic lambda$showChooseStorage$3([ZLorg/telegram/messenger/Utilities$Callback;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 1

    const/4 p4, 0x0

    aget-boolean v0, p0, p4

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    aput-boolean v0, p0, p4

    aget-object p0, p2, p4

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showChooseStorage$4([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, 0x0

    aget-boolean v0, p0, p2

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    aput-boolean v0, p0, p2

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private readConfig()Ljava/util/HashMap;
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->getConfigFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/bots/BotStorage;->getRawBytes(Ljava/io/File;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    invoke-direct {v5}, Lorg/telegram/ui/bots/BotStorage$StorageConfig;-><init>()V

    iput-object v3, v5, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->storage_id:Ljava/lang/String;

    const-string v6, "user_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_id:J

    const-string v6, "user_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_name:Ljava/lang/String;

    const-string v6, "created_at"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->created_at:J

    const-string v6, "edited_at"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->edited_at:J

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method private saveConfig(Ljava/util/HashMap;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "user_id"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    iget-wide v4, v4, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_id:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "user_name"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    iget-object v4, v4, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "created_at"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    iget-wide v4, v4, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->created_at:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "edited_at"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    iget-wide v4, v4, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->edited_at:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->getConfigFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/bots/BotStorage;->saveRawBytes(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private saveRawBytes(Ljava/io/File;[B)V
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method private setBytes(Ljava/io/File;[B)V
    .locals 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "AES/GCM/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "UNKNOWN_ERROR"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method private setJSON(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "QUOTA_EXCEEDED"

    const-string v1, "UNKNOWN_ERROR"

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    array-length v2, p1

    const/high16 v3, 0x500000

    if-gt v2, v3, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotStorage;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/bots/BotStorage;->setBytes(Ljava/io/File;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/BotStorage;->setJSON(Lorg/json/JSONObject;)V

    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 8

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotStorage;->storage_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->readConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    iget-wide v3, v3, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_id:J

    iget-wide v5, p0, Lorg/telegram/ui/bots/BotStorage;->user_id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/bots/BotStorage;->storage_id:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/bots/BotStorage;->storage_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/bots/BotStorage;->storage_id:Ljava/lang/String;

    new-instance v1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    invoke-direct {v1}, Lorg/telegram/ui/bots/BotStorage$StorageConfig;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/bots/BotStorage;->storage_id:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->storage_id:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotStorage;->user_id:J

    iput-wide v2, v1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_id:J

    iget v2, p0, Lorg/telegram/ui/bots/BotStorage;->account:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->edited_at:J

    iput-wide v2, v1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->created_at:J

    iget-object v2, p0, Lorg/telegram/ui/bots/BotStorage;->storage_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/BotStorage;->saveConfig(Ljava/util/HashMap;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotStorage;->storage_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/BotStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/bots/BotStorage;->isSecuredSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "UNSUPPORTED"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v2, v4, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->readConfig()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    :try_start_0
    iget-object v2, v2, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->storage_id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/telegram/ui/bots/BotStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v2}, Lorg/telegram/ui/bots/BotStorage;->getJSON(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    :goto_3
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getStoragesWithKey(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/bots/BotStorage;->isSecuredSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "UNSUPPORTED"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->readConfig()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashSet;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    :try_start_0
    iget-object v3, v2, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->storage_id:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/telegram/ui/bots/BotStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lorg/telegram/ui/bots/BotStorage;->getJSON(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    return-object v0

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "STORAGE_NOT_EMPTY"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public restoreFrom(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/bots/BotStorage;->isSecuredSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "UNSUPPORTED"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->readConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    if-eqz p1, :cond_4

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotStorage;->user_id:J

    iput-wide v1, p1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_id:J

    iget v1, p0, Lorg/telegram/ui/bots/BotStorage;->account:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->user_name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->edited_at:J

    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/BotStorage;->saveConfig(Ljava/util/HashMap;)V

    iget-object p1, p1, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->storage_id:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/bots/BotStorage;->storage_id:Ljava/lang/String;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "STORAGE_NOT_FOUND"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "STORAGE_NOT_EMPTY"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public setKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/bots/BotStorage;->isSecuredSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "UNSUPPORTED"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x500000

    const-string v2, "QUOTA_EXCEEDED"

    if-gt v0, v1, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/BotStorage;->setJSON(Lorg/json/JSONObject;)V

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz p1, :cond_4

    :try_start_1
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotStorage;->readConfig()Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/bots/BotStorage;->storage_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    if-eqz p2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lorg/telegram/ui/bots/BotStorage$StorageConfig;->edited_at:J

    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotStorage;->saveConfig(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "UNKNOWN_ERROR"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showChooseStorage(Landroid/content/Context;Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-array v6, v4, [Ljava/lang/String;

    new-array v7, v4, [Z

    new-instance v8, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v8, v1, v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iget v11, v0, Lorg/telegram/ui/bots/BotStorage;->account:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-wide v12, v0, Lorg/telegram/ui/bots/BotStorage;->bot_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v12}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/16 v18, 0x0

    const/16 v19, 0xd

    const/16 v13, 0x50

    const/16 v14, 0x50

    const/16 v15, 0x31

    const/16 v16, 0x0

    const/16 v17, 0x15

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v1, v12, v10, v4}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$string;->BotRestoreStorageTitle:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v19, 0x20

    const/16 v20, 0xa

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x7

    const/16 v17, 0x20

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v9, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v1, v12, v10, v3}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v10

    sget v12, Lorg/telegram/messenger/R$string;->BotRestoreStorageText:I

    invoke-static {v11}, Lorg/telegram/messenger/DialogObject;->getDialogTitle(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v11

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v11, v14, v3

    invoke-static {v12, v14}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v20, 0x13

    const/4 v14, -0x1

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v10, v1, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v11, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v13, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sget v13, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1, v13, v14, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    const/16 v17, 0x0

    const/4 v12, -0x1

    const/16 v13, 0xc

    const/4 v14, 0x7

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v10, v1, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v11, Lorg/telegram/messenger/R$string;->BotRestoreStorageHeader:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, -0x2

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v10, v1, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    move-object/from16 v13, p2

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/bots/BotStorage$StorageConfig;

    new-instance v15, Lorg/telegram/ui/bots/BotStorage$1StorageCell;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v3, v16, -0x1

    if-ge v12, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-direct {v15, v0, v14, v3, v1}, Lorg/telegram/ui/bots/BotStorage$1StorageCell;-><init>(Lorg/telegram/ui/bots/BotStorage;Lorg/telegram/ui/bots/BotStorage$StorageConfig;ZLandroid/content/Context;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda2;

    invoke-direct {v3, v6, v14, v11, v10}, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage$StorageConfig;Ljava/util/ArrayList;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v15, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, -0x1

    const/16 v4, 0x38

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    add-int/2addr v12, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    sget v1, Lorg/telegram/messenger/R$string;->BotRestoreStorageButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    aget-object v1, v6, v4

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    const/16 v16, 0x8

    const/16 v17, 0x4

    const/4 v11, -0x1

    const/16 v12, 0x30

    const/4 v13, 0x7

    const/16 v14, 0x8

    const/16 v15, 0x8

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    new-instance v3, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda3;

    invoke-direct {v3, v7, v2, v6, v1}, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda3;-><init>([ZLorg/telegram/messenger/Utilities$Callback;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda4;

    invoke-direct {v3, v7, v2}, Lorg/telegram/ui/bots/BotStorage$$ExternalSyntheticLambda4;-><init>([ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

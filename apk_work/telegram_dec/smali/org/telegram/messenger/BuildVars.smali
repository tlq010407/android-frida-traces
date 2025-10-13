.class public Lorg/telegram/messenger/BuildVars;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static APP_HASH:Ljava/lang/String; = null

.field public static APP_ID:I = 0x0

.field public static BUILD_VERSION_STRING:Ljava/lang/String; = null

.field public static CHECK_UPDATES:Z = true

.field public static DEBUG_PRIVATE_VERSION:Z = false

.field public static DEBUG_VERSION:Z = false

.field public static GOOGLE_AUTH_CLIENT_ID:Ljava/lang/String; = null

.field public static HUAWEI_APP_ID:Ljava/lang/String; = null

.field public static HUAWEI_STORE_URL:Ljava/lang/String; = null

.field public static IS_BILLING_UNAVAILABLE:Z = false

.field public static LOGS_ENABLED:Z = false

.field public static NO_SCOPED_STORAGE:Z = false

.field public static PLAYSTORE_APP_URL:Ljava/lang/String; = null

.field public static SAFETYNET_KEY:Ljava/lang/String; = null

.field public static USE_CLOUD_STRINGS:Z = true

.field private static betaApp:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$8fLp805Q7pNFu8Bc11LDPpNHh7A(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/BuildVars;->lambda$static$0(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    const-string v0, "11.13.1"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    const/4 v0, 0x4

    sput v0, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    const-string v0, "014b35b6184100b085b0d0572f9b5103"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    const-string v0, "AIzaSyDqt8P-7F7CPCseMkOiVRgb1LY8RN1bvH8"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->SAFETYNET_KEY:Ljava/lang/String;

    const-string v0, "https://play.google.com/store/apps/details?id=org.telegram.messenger"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    const-string v0, "https://appgallery.huawei.com/app/C101184875"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HUAWEI_STORE_URL:Ljava/lang/String;

    const-string v0, "760348033671-81kmi3pi84p11ub8hp9a1funsv0rn2p9.apps.googleusercontent.com"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->GOOGLE_AUTH_CLIENT_ID:Ljava/lang/String;

    const-string v0, "101184875"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HUAWEI_APP_ID:Ljava/lang/String;

    sput-boolean v3, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "systemConfig"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v1, :cond_2

    const-string v4, "logsEnabled"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    sput-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/BuildVars$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/BuildVars$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmsHash()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isStandaloneBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "w0lkcmTZkKh"

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    const-string v0, "O2P2z+/jBpJ"

    goto :goto_0

    :cond_1
    const-string v0, "oLeq9AcOZkT"

    :goto_0
    return-object v0
.end method

.method private static hasDirectCurrency()Z
    .locals 7

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/telegram/messenger/BillingController;->PREMIUM_PRODUCT_DETAILS:Lcom/android/billingclient/api/ProductDetails;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->directPaymentsCurrency:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public static isBetaApp()Z
    .locals 2

    sget-object v0, Lorg/telegram/messenger/BuildVars;->betaApp:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.telegram.messenger.beta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/BuildVars;->betaApp:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lorg/telegram/messenger/BuildVars;->betaApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isHuaweiStoreApp()Z
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isHuaweiStoreBuild()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/messenger/FileLog;->fatal(Ljava/lang/Throwable;Z)V

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static useInvoiceBilling()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/BillingController;->billingClientEmpty:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isStandaloneBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isBetaApp()Z

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isHuaweiStoreApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->hasDirectCurrency()Z

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

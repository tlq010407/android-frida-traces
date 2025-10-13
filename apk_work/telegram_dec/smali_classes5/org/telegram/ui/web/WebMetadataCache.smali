.class public Lorg/telegram/ui/web/WebMetadataCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;,
        Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy;,
        Lorg/telegram/ui/web/WebMetadataCache$MetadataFile;
    }
.end annotation


# static fields
.field private static instance:Lorg/telegram/ui/web/WebMetadataCache;


# instance fields
.field private cache:Ljava/util/HashMap;

.field private loaded:Z

.field private loading:Z

.field private saving:Z


# direct methods
.method public static synthetic $r8$lambda$0jzBBAgSj89vS1Cu70FDhgSMQos([Z[Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/web/WebMetadataCache;->lambda$retrieveFaviconAndSitename$4([Z[Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CsmZOWDhKlQxZyztb136wDlH1Ck(Landroid/webkit/WebView;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/WebMetadataCache;->lambda$retrieveFaviconAndSitename$6(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GPcF8HnHTI7svLi0lIMiiPOg2Vw(Lorg/telegram/ui/web/WebMetadataCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/WebMetadataCache;->lambda$load$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$H3EQHYJeoOx_crV4S6AyLGEM7fA(Lorg/telegram/ui/web/WebMetadataCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/WebMetadataCache;->lambda$save$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZoyHLRb3wsdEQOnB-35Kd28P3WY([Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/web/WebMetadataCache;->lambda$retrieveFaviconAndSitename$7([Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g46RWQrFUs2ijBAvU24OJzuEsls(Lorg/telegram/ui/web/WebMetadataCache;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebMetadataCache;->lambda$save$3(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hGKEBwZ-3Lbre7Hy0YG0iTwqWDs(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/WebMetadataCache;->lambda$retrieveFaviconAndSitename$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l0FONWJBX8JCrvPr-mw8g1-upaU(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/WebMetadataCache;->lambda$retrieveFaviconAndSitename$8(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zspukuyN0kEK8HOwNUHx6E_10zA(Lorg/telegram/ui/web/WebMetadataCache;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebMetadataCache;->lambda$load$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/telegram/ui/web/WebMetadataCache;
    .locals 1

    sget-object v0, Lorg/telegram/ui/web/WebMetadataCache;->instance:Lorg/telegram/ui/web/WebMetadataCache;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/web/WebMetadataCache;

    invoke-direct {v0}, Lorg/telegram/ui/web/WebMetadataCache;-><init>()V

    sput-object v0, Lorg/telegram/ui/web/WebMetadataCache;->instance:Lorg/telegram/ui/web/WebMetadataCache;

    :cond_0
    sget-object v0, Lorg/telegram/ui/web/WebMetadataCache;->instance:Lorg/telegram/ui/web/WebMetadataCache;

    return-object v0
.end method

.method private synthetic lambda$load$0(Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    iget-object v3, p0, Lorg/telegram/ui/web/WebMetadataCache;->cache:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/web/WebMetadataCache;->loaded:Z

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->loading:Z

    return-void
.end method

.method private synthetic lambda$load$1()V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebMetadataCache;->getCacheFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/web/WebMetadataCache;->loaded:Z

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v3, v0}, Lorg/telegram/tgnet/SerializedData;-><init>(Ljava/io/File;)V

    new-instance v0, Lorg/telegram/ui/web/WebMetadataCache$MetadataFile;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lorg/telegram/ui/web/WebMetadataCache$MetadataFile;-><init>(Lorg/telegram/ui/web/WebMetadataCache$1;)V

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/web/WebMetadataCache$MetadataFile;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    iget-object v0, v0, Lorg/telegram/ui/web/WebMetadataCache$MetadataFile;->array:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/WebMetadataCache;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$retrieveFaviconAndSitename$4([Z[Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Boolean;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-nez p7, :cond_1

    aget-object p7, p1, v1

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-nez p7, :cond_3

    aget-object p7, p2, v1

    if-eqz p7, :cond_3

    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p7

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le p7, v3, :cond_3

    aget-object p7, p2, v1

    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le p7, v2, :cond_3

    :cond_1
    aput-boolean v0, p0, v1

    new-instance p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    invoke-direct {p0}, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;-><init>()V

    invoke-static {p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->domain:Ljava/lang/String;

    aget-object p7, p1, v1

    iput-object p7, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    aget-object p7, p2, v1

    if-eqz p7, :cond_2

    invoke-static {p7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p7

    iput-object p7, p0, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    :cond_2
    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object p7

    invoke-virtual {p7, p0}, Lorg/telegram/ui/web/WebMetadataCache;->save(Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;)V

    invoke-virtual {p4}, Landroid/webkit/WebView;->destroy()V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    aget-object p0, p1, v1

    aget-object p1, p2, v1

    invoke-interface {p6, p0, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->webViewResolved:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static synthetic lambda$retrieveFaviconAndSitename$5(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$retrieveFaviconAndSitename$6(Landroid/webkit/WebView;)V
    .locals 3

    sget v0, Lorg/telegram/messenger/R$raw;->webview_ext:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$DEBUG$"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static synthetic lambda$retrieveFaviconAndSitename$7([Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    aput-object p2, p0, v0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$retrieveFaviconAndSitename$8(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$save$2()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->saving:Z

    return-void
.end method

.method private synthetic lambda$save$3(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebMetadataCache;->getCacheFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/web/WebMetadataCache;->saving:Z

    return-void

    :cond_0
    :goto_0
    new-instance v1, Lorg/telegram/ui/web/WebMetadataCache$MetadataFile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/web/WebMetadataCache$MetadataFile;-><init>(Lorg/telegram/ui/web/WebMetadataCache$1;)V

    iget-object v2, v1, Lorg/telegram/ui/web/WebMetadataCache$MetadataFile;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p1

    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, p1}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/web/WebMetadataCache$MetadataFile;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    new-instance p1, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/web/WebMetadataCache;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static retrieveFaviconAndSitename(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-interface {p1, v4, v4}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    const v5, 0x1020002

    invoke-virtual {v3, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Landroid/view/ViewGroup;

    if-nez v5, :cond_3

    invoke-interface {p1, v4, v4}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    check-cast v3, Landroid/view/ViewGroup;

    new-instance v13, Lorg/telegram/ui/web/WebMetadataCache$1;

    invoke-direct {v13, v2}, Lorg/telegram/ui/web/WebMetadataCache$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    :try_start_0
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "; wv)"

    const-string v7, ")"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    new-array v6, v1, [Z

    aput-boolean v0, v6, v0

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Landroid/graphics/Bitmap;

    aput-object v4, v1, v0

    new-instance v0, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda5;

    move-object v5, v0

    move-object v7, v2

    move-object v8, v1

    move-object v9, p0

    move-object v10, v3

    move-object v11, v13

    move-object v12, p1

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda5;-><init>([Z[Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Lorg/telegram/messenger/Utilities$Callback2;)V

    new-instance p1, Lorg/telegram/ui/web/WebMetadataCache$2;

    invoke-direct {p1, v1, v0}, Lorg/telegram/ui/web/WebMetadataCache$2;-><init>([Landroid/graphics/Bitmap;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda6;

    invoke-direct {p1, v3}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda6;-><init>(Landroid/webkit/WebView;)V

    new-instance v1, Lorg/telegram/ui/web/WebMetadataCache$3;

    invoke-direct {v1, p1}, Lorg/telegram/ui/web/WebMetadataCache$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy;

    new-instance v4, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2, v0}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda7;-><init>([Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-direct {v1, v4}, Lorg/telegram/ui/web/WebMetadataCache$SitenameProxy;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    const-string v2, "TelegramWebview"

    invoke-virtual {v3, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    new-instance p0, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda8;

    invoke-direct {p0, v0}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    const-wide/16 v0, 0x2710

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->cache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->loading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->loaded:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->cache:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/web/WebMetadataCache;->scheduleSave()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebMetadataCache;->load()V

    iget-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-wide v0, p1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->time:J

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebMetadataCache;->scheduleSave()V

    return-object p1
.end method

.method public getCacheFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "webmetacache.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public load()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->loaded:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->loading:Z

    iget-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->cache:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->cache:Ljava/util/HashMap;

    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/WebMetadataCache;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public save()V
    .locals 10

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->saving:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/web/WebMetadataCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    iget-object v5, v4, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->domain:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-wide v5, v4, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->time:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x240c8400

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1

    :cond_3
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/WebMetadataCache;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public save(Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;)V
    .locals 2

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->cache:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->cache:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->domain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->cache:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebMetadataCache;->load()V

    invoke-virtual {p0}, Lorg/telegram/ui/web/WebMetadataCache;->scheduleSave()V

    return-void
.end method

.method public scheduleSave()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/WebMetadataCache;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/ui/web/WebMetadataCache;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/WebMetadataCache$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/WebMetadataCache;)V

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x3e8

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

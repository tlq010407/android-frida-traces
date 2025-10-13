.class public Lorg/telegram/ui/web/WebBrowserSettings;
.super Lorg/telegram/ui/Components/UniversalFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;
    }
.end annotation


# instance fields
.field private addIcon:Landroid/graphics/drawable/Drawable;

.field private cacheSize:J

.field private cookiesSize:J

.field private historySize:J

.field private whenHistoryClicked:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public static synthetic $r8$lambda$-4cXdBhfJxlXcc150MTcRMne2X4(Lorg/telegram/ui/web/WebBrowserSettings;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0qHT-7kAEUsZGJ6V01506mbk6dY(Lorg/telegram/ui/web/WebBrowserSettings;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$9([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1QFZFYTQK5c6YQ97NrrM-u56oCE(Lorg/telegram/ui/web/WebBrowserSettings;[Lorg/telegram/ui/web/HistoryFragment;Lorg/telegram/ui/web/BrowserHistory$Entry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$6([Lorg/telegram/ui/web/HistoryFragment;Lorg/telegram/ui/web/BrowserHistory$Entry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4_bnm7-nv_IlzPly8S5gOyPazIM(Lorg/telegram/ui/web/WebBrowserSettings;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ZXuj-1IWvMVOF94z4lGAmnIrqU(Lorg/telegram/ui/web/WebBrowserSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$loadSizes$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$FGZh9CsE5KdIm2lhgFznM7nJ4Eo(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$loadSizes$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K9tdQH_xvKQ0zi5kIrnfhiowxv8(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$10(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KNQL-2cEuU62evixanHgZxY7HpQ(Lorg/telegram/ui/web/WebBrowserSettings;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$11(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RTpnujINkXf3xoAr5TqC5WEAaQs(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$15(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z28ZjmkyEHBUw_CR8OIm9ZoJz9g(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$7(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bkn4AKR21laSr-08IBSt5cP7zeA(Lorg/telegram/ui/web/WebBrowserSettings;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$loadSizes$1(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$dR4lhSdKjeYFGa1PQdp2leuX6FQ(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$14(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j8lKl-_im6VnUMjGwoAtcQ4sg9Y(ILandroid/view/View;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$8(ILandroid/view/View;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ks02oTqC8cuwSm1GwDVt99sxl3A(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$13(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQ17F-8WGwfx1djKxEAjvx0xSu4(Lorg/telegram/ui/web/WebBrowserSettings;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wVgT-xCm0LTcNQz3KLhOyo8Tp5I(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->lambda$onClick$12(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalFragment;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->whenHistoryClicked:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;Ljava/lang/Boolean;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, "Cookies"

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v7, v1, v5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eq v8, v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v7, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->deleteDirectory(Ljava/io/File;Ljava/lang/Boolean;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v6, 0x0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    :cond_4
    if-eqz v6, :cond_7

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq p1, v1, :cond_6

    return v0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_7
    return v3

    :cond_8
    :goto_3
    return v0
.end method

.method private static getDirectorySize(Ljava/io/File;Ljava/lang/Boolean;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    invoke-static {v4, p1}, Lorg/telegram/ui/web/WebBrowserSettings;->getDirectorySize(Ljava/io/File;Ljava/lang/Boolean;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cookies"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq p1, v2, :cond_2

    return-wide v0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method private synthetic lambda$loadSizes$0(Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historySize:J

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadSizes$1(JJ)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->cacheSize:J

    iput-wide p3, p0, Lorg/telegram/ui/web/WebBrowserSettings;->cookiesSize:J

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadSizes$2()V
    .locals 13

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "webview.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "webviewCache.db"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "app_webview"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lorg/telegram/ui/web/WebBrowserSettings;->getDirectorySize(Ljava/io/File;Ljava/lang/Boolean;)J

    move-result-wide v7

    add-long/2addr v3, v7

    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v7, "cache/WebView"

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lorg/telegram/ui/web/WebBrowserSettings;->getDirectorySize(Ljava/io/File;Ljava/lang/Boolean;)J

    move-result-wide v7

    add-long/2addr v3, v7

    :cond_3
    move-wide v9, v3

    new-instance v0, Ljava/io/File;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lorg/telegram/ui/web/WebBrowserSettings;->getDirectorySize(Ljava/io/File;Ljava/lang/Boolean;)J

    move-result-wide v1

    :cond_4
    move-wide v11, v1

    new-instance v0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda2;

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;JJ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClick$10(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const-wide/16 p4, 0x320

    invoke-virtual {p2, p4, p5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/web/WebMetadataCache;->get(Ljava/lang/String;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClick$11(Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "https://"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "www."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/web/RestrictedDomainsList;->setRestricted(Z[Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/web/WebMetadataCache;->get(Ljava/lang/String;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v3, v1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, v1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    aget-object p1, p2, p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_0

    :cond_5
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, p2, v1}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    const-wide/16 v4, 0x1388

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, v3, v1, p1}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/web/WebMetadataCache;->retrieveFaviconAndSitename(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    :goto_0
    return-void

    :cond_6
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onClick$12(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$onClick$13(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$onClick$14(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onClick$15(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$onClick$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "webview.db"

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "webviewCache.db"

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebStorage;->deleteAllData()V

    :try_start_0
    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    new-instance p1, Ljava/io/File;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v0, "app_webview"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->deleteDirectory(Ljava/io/File;Ljava/lang/Boolean;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :try_start_2
    new-instance p1, Ljava/io/File;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v0, "cache/WebView"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->deleteDirectory(Ljava/io/File;Ljava/lang/Boolean;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/WebMetadataCache;->clear()V

    invoke-direct {p0}, Lorg/telegram/ui/web/WebBrowserSettings;->loadSizes()V

    return-void
.end method

.method private synthetic lambda$onClick$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity$15$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/CookieManager;Landroid/webkit/ValueCallback;)V

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity$15$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/CookieManager;)V

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/File;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v0, "app_webview"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lorg/telegram/ui/web/WebBrowserSettings;->deleteDirectory(Ljava/io/File;Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/web/WebBrowserSettings;->loadSizes()V

    return-void
.end method

.method private synthetic lambda$onClick$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->clearHistory()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historySize:J

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$6([Lorg/telegram/ui/web/HistoryFragment;Lorg/telegram/ui/web/BrowserHistory$Entry;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    iget-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->whenHistoryClicked:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    iget-object p1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->whenHistoryClicked:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/ui/web/BrowserHistory$Entry;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onClick$7(Ljava/util/ArrayList;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/web/RestrictedDomainsList;->setRestricted(Z[Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private static synthetic lambda$onClick$8(ILandroid/view/View;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSearchEngineType(I)V

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getCurrent()Lorg/telegram/ui/web/SearchEngine;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/web/SearchEngine;->name:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p1, p0, p3}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onClick$9([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const-wide/16 v0, 0x320

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private loadSizes()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;)V

    invoke-static {v0}, Lorg/telegram/ui/web/BrowserHistory;->getHistory(Lorg/telegram/messenger/Utilities$Callback;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historySize:J

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Lorg/telegram/ui/web/WebBrowserSettings$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/web/WebBrowserSettings$1;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->addIcon:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResolved:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 8

    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsEnable:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRippleCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsEnableInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$drawable;->menu_clear_cookies:I

    sget v1, Lorg/telegram/messenger/R$string;->BrowserSettingsCookiesClear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->cookiesSize:J

    const-string v4, ""

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/4 v3, 0x3

    invoke-static {v3, p2, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$drawable;->menu_clear_cache:I

    sget v1, Lorg/telegram/messenger/R$string;->BrowserSettingsCacheClear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->cacheSize:J

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    const/4 v3, 0x2

    invoke-static {v3, p2, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lorg/telegram/messenger/R$string;->BrowserSettingsCookiesInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historySize:J

    const/4 v3, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_2

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_clear_recent:I

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsHistoryShow:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    invoke-static {v5, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lorg/telegram/messenger/R$string;->BrowserSettingsHistoryClear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v5, p0, Lorg/telegram/ui/web/WebBrowserSettings;->historySize:J

    long-to-int v2, v5

    const-string v5, "BrowserSettingsHistoryPages"

    const/16 v6, 0x2c

    invoke-static {v5, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x7

    invoke-static {v5, p2, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsNeverOpenInTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/web/WebBrowserSettings;->addIcon:Landroid/graphics/drawable/Drawable;

    sget v1, Lorg/telegram/messenger/R$string;->BrowserSettingsNeverOpenInAdd:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/web/RestrictedDomainsList;->load()V

    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/telegram/ui/web/WebMetadataCache;->get(Ljava/lang/String;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    move-result-object v6

    if-eqz v6, :cond_3

    :cond_4
    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, v6, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v6, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_3
    move-object v5, v4

    goto :goto_4

    :cond_6
    iget-object v5, v6, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object v5, v6, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    :goto_4
    if-nez v6, :cond_8

    move-object v6, v3

    goto :goto_5

    :cond_8
    iget-object v6, v6, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    :goto_5
    invoke-static {v2, v5, v6}, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$Factory;->as(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_clearcache:I

    sget v1, Lorg/telegram/messenger/R$string;->BrowserSettingsNeverOpenInClearList:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->red()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsNeverOpenInInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_search:I

    sget v1, Lorg/telegram/messenger/R$string;->SearchEngine:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getCurrent()Lorg/telegram/ui/web/SearchEngine;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/web/SearchEngine;->name:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v3, p2, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsSearchEngineInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    if-nez p2, :cond_b

    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsCustomTabsTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsCustomTabs:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRadio(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsNoCustomTabs:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xb

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRadio(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->BrowserSettingsNoCustomTabsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p2, :cond_c

    const/16 p2, 0xc

    const-string v0, "adaptable colors"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, 0xd

    const-string v0, "only local IV"

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->BrowserSettingsTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    return v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, v1, Lorg/telegram/ui/Components/UItem;->id:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleBrowserAdaptableColors()V

    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_9

    :cond_0
    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleLocalInstantView()V

    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    goto :goto_0

    :cond_1
    if-ne v5, v4, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleInappBrowser()V

    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    if-eqz v2, :cond_2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_1

    :cond_2
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto/16 :goto_9

    :cond_3
    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->toggleCustomTabs(Z)V

    goto :goto_2

    :cond_4
    const/16 v6, 0xb

    if-ne v5, v6, :cond_5

    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->toggleCustomTabs(Z)V

    goto :goto_2

    :cond_5
    const-string v6, ")"

    const-string v7, " ("

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    const-string v12, ""

    const/4 v13, 0x0

    if-ne v5, v10, :cond_7

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsCacheClear:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsCacheClearText:I

    iget-wide v14, v0, Lorg/telegram/ui/web/WebBrowserSettings;->cacheSize:J

    cmp-long v5, v14, v8

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lorg/telegram/ui/web/WebBrowserSettings;->cacheSize:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v12, v4, v3

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;)V

    :goto_4
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_9

    :cond_7
    const/4 v14, 0x3

    if-ne v5, v14, :cond_9

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsCookiesClear:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsCookiesClearText:I

    iget-wide v14, v0, Lorg/telegram/ui/web/WebBrowserSettings;->cookiesSize:J

    cmp-long v5, v14, v8

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lorg/telegram/ui/web/WebBrowserSettings;->cookiesSize:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v12, v4, v3

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;)V

    goto :goto_4

    :cond_9
    const/4 v6, 0x7

    if-ne v5, v6, :cond_b

    invoke-static {}, Lorg/telegram/ui/web/BrowserHistory;->getHistory()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v5, 0x7fffffffffffffffL

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/web/BrowserHistory$Entry;

    iget-wide v7, v2, Lorg/telegram/ui/web/BrowserHistory$Entry;->time:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    goto :goto_6

    :cond_a
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsHistoryClear:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->BrowserSettingsHistoryClearText:I

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;)V

    goto/16 :goto_4

    :cond_b
    const/16 v6, 0x9

    if-ne v5, v6, :cond_c

    new-array v1, v4, [Lorg/telegram/ui/web/HistoryFragment;

    aput-object v13, v1, v3

    new-instance v2, Lorg/telegram/ui/web/HistoryFragment;

    new-instance v4, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;[Lorg/telegram/ui/web/HistoryFragment;)V

    invoke-direct {v2, v13, v4}, Lorg/telegram/ui/web/HistoryFragment;-><init>(Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_9

    :cond_c
    const/4 v6, 0x5

    if-ne v5, v6, :cond_d

    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/web/RestrictedDomainsList;->restrictedDomains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lorg/telegram/ui/web/RestrictedDomainsList;->getInstance()Lorg/telegram/ui/web/RestrictedDomainsList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/RestrictedDomainsList;->scheduleSave()V

    goto/16 :goto_2

    :cond_d
    const-class v5, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView$Factory;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;

    invoke-static {v1}, Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;->access$000(Lorg/telegram/ui/web/WebBrowserSettings$WebsiteView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_delete_old:I

    sget v4, Lorg/telegram/messenger/R$string;->Remove:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    goto/16 :goto_9

    :cond_e
    iget v1, v1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v5, 0x6

    if-ne v1, v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getSearchEngines()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v8, v7, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v7, :cond_11

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/web/SearchEngine;

    iget-object v11, v11, Lorg/telegram/ui/web/SearchEngine;->name:Ljava/lang/String;

    aput-object v11, v8, v9

    new-instance v11, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v11, v14, v3, v12, v3}, Landroid/view/View;->setPadding(IIII)V

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v11, v12, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    aget-object v12, v8, v9

    sget v14, Lorg/telegram/messenger/SharedConfig;->searchEngineType:I

    if-ne v9, v14, :cond_10

    const/4 v14, 0x1

    goto :goto_8

    :cond_10
    const/4 v14, 0x0

    :goto_8
    invoke-virtual {v11, v12, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-static {v12, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v12, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda9;

    invoke-direct {v12, v9, v2, v1}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda9;-><init>(ILandroid/view/View;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/2addr v9, v4

    goto :goto_7

    :cond_11
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$string;->SearchEngine:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_9

    :cond_12
    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    new-array v1, v4, [Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v6, Lorg/telegram/messenger/R$string;->BrowserSettingsAddTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v7, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v9, Lorg/telegram/messenger/R$string;->BrowserSettingsAddText:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v18, 0x41c00000    # 24.0f

    const/high16 v19, 0x41400000    # 12.0f

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v17, 0x40a00000    # 5.0f

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/web/WebBrowserSettings$2;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lorg/telegram/ui/web/WebBrowserSettings$2;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Landroid/content/Context;)V

    new-instance v9, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda10;

    invoke-direct {v9, v0, v7, v1}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Lorg/telegram/ui/Components/EditTextBoldCursor;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    new-instance v10, Lorg/telegram/ui/web/WebBrowserSettings$3;

    invoke-direct {v10, v0, v9}, Lorg/telegram/ui/web/WebBrowserSettings$3;-><init>(Lorg/telegram/ui/web/WebBrowserSettings;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v7, v4, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    sget v8, Lorg/telegram/messenger/R$string;->BrowserSettingsAddHint:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setFocusable(Z)V

    const/16 v4, 0x4000

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setInputType(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v7, v4, v8, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {v7, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v7, v3, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41200000    # 10.0f

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/high16 v12, 0x41c00000    # 24.0f

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 v4, 0x43920000    # 292.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setWidth(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda11;

    invoke-direct {v5, v9}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda12;

    invoke-direct {v5}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v4, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda13;

    invoke-direct {v4, v7}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    aget-object v2, v1, v3

    new-instance v4, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda4;

    invoke-direct {v4, v7}, Lorg/telegram/ui/web/WebBrowserSettings$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    aget-object v2, v1, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_13
    :goto_9
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/web/WebBrowserSettings;->loadSizes()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webViewResolved:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webViewResolved:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.class public Lorg/telegram/ui/bots/BotDownloads;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotDownloads$FileDownload;,
        Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;
    }
.end annotation


# static fields
.field private static cachedMimeAndSizes:Ljava/util/HashMap;

.field private static final instances:Ljava/util/HashMap;


# instance fields
.field public final botId:J

.field public final context:Landroid/content/Context;

.field public final currentAccount:I

.field private currentFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

.field public final downloadManager:Landroid/app/DownloadManager;

.field private final files:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$0V5vVA5p02uOzaqNbeUDV-Eoiqw([ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotDownloads;->lambda$showAlert$2([ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hqq6I3GomsJ5IjmnhzIfOGWibtc(Lorg/telegram/ui/Components/AnimatedTextView;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/BotDownloads;->lambda$showAlert$0(Lorg/telegram/ui/Components/AnimatedTextView;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OQh7ybzxESYhklG32SuXfFcyUBY([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/BotDownloads;->lambda$showAlert$3([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SvY6Nau02KUegIqZhFcTpXoUtaQ([ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotDownloads;->lambda$showAlert$1([ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/bots/BotDownloads;->instances:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/bots/BotDownloads;->cachedMimeAndSizes:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->files:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/bots/BotDownloads;->context:Landroid/content/Context;

    iput p2, p0, Lorg/telegram/ui/bots/BotDownloads;->currentAccount:I

    iput-wide p3, p0, Lorg/telegram/ui/bots/BotDownloads;->botId:J

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->downloadManager:Landroid/app/DownloadManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "botdownloads_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :try_start_0
    new-instance p3, Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p0, p4}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;-><init>(Lorg/telegram/ui/bots/BotDownloads;Lorg/json/JSONObject;)V

    iget-object p2, p3, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file:Ljava/io/File;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/bots/BotDownloads;->files:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/bots/BotDownloads;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotDownloads;->postNotify()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lorg/telegram/ui/bots/BotDownloads;->cachedMimeAndSizes:Ljava/util/HashMap;

    return-object v0
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

    const-string v4, "botdownloads_"

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
    sget-object v0, Lorg/telegram/ui/bots/BotDownloads;->instances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotDownloads;
    .locals 3

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lorg/telegram/ui/bots/BotDownloads;->instances:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/bots/BotDownloads;

    if-nez v2, :cond_0

    new-instance v2, Lorg/telegram/ui/bots/BotDownloads;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotDownloads;-><init>(Landroid/content/Context;IJ)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method public static getExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "text/javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x27

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "application/java-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "application/vnd.amazon.ebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "image/vnd.microsoft.icon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "application/vnd.rar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "audio/mpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "audio/3gpp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "application/x-freearc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "application/x-7z-compressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "application/x-bzip2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "application/octet-stream"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "application/x-gzip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "application/x-bzip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "application/msword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "application/ld+json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "application/x-abiword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "audio/ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "application/x-sh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "application/gzip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "video/3gpp2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "application/vnd.ms-excel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "application/vnd.apple.installer+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "audio/3gpp2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "application/x-httpd-php"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "text/calendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "audio/x-midi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_21
    const-string v0, "video/x-msvideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_0

    :cond_22
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_22
    const-string v0, "application/x-csh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_0

    :cond_23
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_23
    const-string v0, "application/x-cdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_0

    :cond_24
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_24
    const-string v0, "application/vnd.ms-fontobject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_0

    :cond_25
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_25
    const-string v0, "video/3gpp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_26
    const-string v0, "application/vnd.oasis.opendocument.text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_0

    :cond_27
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_27
    const-string v0, "application/epub+zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_0

    :cond_28
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_29
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2a
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "js"

    return-object p0

    :pswitch_1
    const-string p0, "jar"

    return-object p0

    :pswitch_2
    const-string p0, "xlsx"

    return-object p0

    :pswitch_3
    const-string p0, "azw"

    return-object p0

    :pswitch_4
    const-string p0, "ods"

    return-object p0

    :pswitch_5
    const-string p0, "ico"

    return-object p0

    :pswitch_6
    const-string p0, "rar"

    return-object p0

    :pswitch_7
    const-string p0, "mp3"

    return-object p0

    :pswitch_8
    const-string p0, "arc"

    return-object p0

    :pswitch_9
    const-string p0, "7z"

    return-object p0

    :pswitch_a
    const-string p0, "odp"

    return-object p0

    :pswitch_b
    const-string p0, "bz2"

    return-object p0

    :pswitch_c
    const-string p0, "bin"

    return-object p0

    :pswitch_d
    const-string p0, "bz"

    return-object p0

    :pswitch_e
    const-string p0, "doc"

    return-object p0

    :pswitch_f
    const-string p0, "jsonld"

    return-object p0

    :pswitch_10
    const-string p0, "abw"

    return-object p0

    :pswitch_11
    const-string p0, "txt"

    return-object p0

    :pswitch_12
    const-string p0, "opus"

    return-object p0

    :pswitch_13
    const-string p0, "sh"

    return-object p0

    :pswitch_14
    const-string p0, "gz"

    return-object p0

    :pswitch_15
    const-string p0, "xls"

    return-object p0

    :pswitch_16
    const-string p0, "mpkg"

    return-object p0

    :pswitch_17
    const-string p0, "3g2"

    return-object p0

    :pswitch_18
    const-string p0, "php"

    return-object p0

    :pswitch_19
    const-string p0, "ics"

    return-object p0

    :pswitch_1a
    const-string p0, "midi"

    return-object p0

    :pswitch_1b
    const-string p0, "docx"

    return-object p0

    :pswitch_1c
    const-string p0, "ppt"

    return-object p0

    :pswitch_1d
    const-string p0, "pptx"

    return-object p0

    :pswitch_1e
    const-string p0, "avi"

    return-object p0

    :pswitch_1f
    const-string p0, "csh"

    return-object p0

    :pswitch_20
    const-string p0, "cda"

    return-object p0

    :pswitch_21
    const-string p0, "eot"

    return-object p0

    :pswitch_22
    const-string p0, "3gp"

    return-object p0

    :pswitch_23
    const-string p0, "odt"

    return-object p0

    :pswitch_24
    const-string p0, "epub"

    return-object p0

    :cond_2c
    :goto_1
    const-string p0, ""

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77b8a693 -> :sswitch_27
        -0x667e94ce -> :sswitch_26
        -0x63306f58 -> :sswitch_25
        -0x5e1451ec -> :sswitch_24
        -0x505c782f -> :sswitch_23
        -0x505c765c -> :sswitch_22
        -0x405dba54 -> :sswitch_21
        -0x3ffe58cb -> :sswitch_20
        -0x3fe2a28f -> :sswitch_1f
        -0x3ea35d2d -> :sswitch_1e
        -0x3c0ec851 -> :sswitch_1d
        -0x39206620 -> :sswitch_1c
        -0x30b1084d -> :sswitch_1b
        -0x26aa245b -> :sswitch_1a
        -0x19d10801 -> :sswitch_19
        -0x15d566cf -> :sswitch_18
        -0x2dd7b76 -> :sswitch_17
        -0x29e3947 -> :sswitch_16
        -0x2979ed7 -> :sswitch_15
        0xb26cbd6 -> :sswitch_14
        0x30b78e68 -> :sswitch_13
        0x33351d1e -> :sswitch_12
        0x34de6f5c -> :sswitch_11
        0x35ebd34f -> :sswitch_10
        0x44cd5153 -> :sswitch_f
        0x44cf972e -> :sswitch_e
        0x463e3f9d -> :sswitch_d
        0x54dcd93f -> :sswitch_c
        0x55a6501f -> :sswitch_b
        0x56aaa917 -> :sswitch_a
        0x56c10e12 -> :sswitch_9
        0x59976a2d -> :sswitch_8
        0x59b1e81e -> :sswitch_7
        0x59f52622 -> :sswitch_6
        0x5e13e82f -> :sswitch_5
        0x61f85627 -> :sswitch_4
        0x63abc145 -> :sswitch_3
        0x76d7a0a2 -> :sswitch_2
        0x7a257a76 -> :sswitch_1
        0x7f17578f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_14
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_22
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMimeAndSize(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/bots/BotDownloads;->cachedMimeAndSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/bots/BotDownloads;->cachedMimeAndSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-interface {p1, v0, p0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/bots/BotDownloads$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/bots/BotDownloads$1;-><init>(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static synthetic lambda$showAlert$0(Lorg/telegram/ui/Components/AnimatedTextView;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/bots/BotDownloads;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gtz p1, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$showAlert$1([ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    aget-boolean p3, p0, p2

    if-nez p3, :cond_0

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-boolean p1, p0, p2

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showAlert$2([ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    aget-boolean p3, p0, p2

    if-nez p3, :cond_0

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-boolean p1, p0, p2

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showAlert$3([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, 0x0

    aget-boolean v0, p0, p2

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-boolean p1, p0, p2

    :cond_0
    return-void
.end method

.method private postNotify()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/bots/BotDownloads;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botDownloadsUpdate:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;JLjava/lang/String;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 15

    .line 0
    move-object v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/messenger/R$string;->BotDownloadFileTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v5, Lorg/telegram/messenger/R$string;->BotDownloadFileText:I

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p3, v6, v2

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v7, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_round_file_s:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v13, 0xa

    const/4 v14, 0x0

    const/16 v8, 0x2c

    const/16 v9, 0x2c

    const/16 v10, 0x13

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v8, p2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v13, 0x0

    const/high16 v14, 0x40400000    # 3.0f

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v7, p0, v3, v3, v3}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v8, "l"

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Lorg/telegram/ui/Components/LoadingSpan;

    const/high16 v9, 0x425c0000    # 55.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-direct {v8, v7, v9}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileInfoText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    const v11, 0x3eb33333    # 0.35f

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    const v12, 0x3d99999a    # 0.075f

    invoke-static {v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lorg/telegram/ui/Components/LoadingSpan;->setColors(II)V

    const/16 v10, 0x21

    invoke-virtual {v0, v8, v2, v3, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/bots/BotDownloads$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lorg/telegram/ui/bots/BotDownloads$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedTextView;)V

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lorg/telegram/ui/bots/BotDownloads;->getMimeAndSize(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/4 v0, -0x1

    const/16 v2, 0xf

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/16 v10, 0x17

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-array v0, v3, [Z

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/BotDownloads$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/bots/BotDownloads$$ExternalSyntheticLambda1;-><init>([ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v2, Lorg/telegram/messenger/R$string;->BotDownloadFileDownload:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/BotDownloads$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/bots/BotDownloads$$ExternalSyntheticLambda2;-><init>([ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/BotDownloads$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/bots/BotDownloads$$ExternalSyntheticLambda3;-><init>([ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-object v2
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    .line 0
    if-nez p4, :cond_0

    return-void

    :cond_0
    const-wide/16 v5, 0x0

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/bots/BotDownloads;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;JLjava/lang/String;)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method


# virtual methods
.method public cancel(Lorg/telegram/ui/bots/BotDownloads$FileDownload;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancelled:Z

    iget-object v1, p1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->id:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/bots/BotDownloads;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->remove([J)I

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->id:Ljava/lang/Long;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotDownloads;->postNotify()V

    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/bots/BotDownloads$FileDownload;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/bots/BotDownloads;->getCached(Ljava/lang/String;)Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->currentFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->resaved:Z

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotDownloads;->postNotify()V

    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;-><init>(Lorg/telegram/ui/bots/BotDownloads;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->currentFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->shown:Z

    iget-object p1, p0, Lorg/telegram/ui/bots/BotDownloads;->files:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotDownloads;->save()V

    goto :goto_0
.end method

.method public getCached(Ljava/lang/String;)Lorg/telegram/ui/bots/BotDownloads$FileDownload;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    iget-object v2, v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->url:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->done:Z

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrent()Lorg/telegram/ui/bots/BotDownloads$FileDownload;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->currentFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    return-object v0
.end method

.method public getFiles()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasFiles()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDownloading()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public save()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "botdownloads_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/bots/BotDownloads;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/bots/BotDownloads;->files:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    invoke-virtual {v3}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotDownloads;->botId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.class public Lorg/telegram/ui/bots/BotDownloads$FileDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/BotDownloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileDownload"
.end annotation


# instance fields
.field public cancelled:Z

.field public done:Z

.field public file:Ljava/io/File;

.field public file_name:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public last_progress_time:J

.field public loaded_size:J

.field public mime:Ljava/lang/String;

.field public resaved:Z

.field public shown:Z

.field public size:J

.field final synthetic this$0:Lorg/telegram/ui/bots/BotDownloads;

.field private final updateProgressRunnable:Ljava/lang/Runnable;

.field public url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ao8NSZ7IBULiTz27-xl7dXo3nlM(Lorg/telegram/ui/bots/BotDownloads$FileDownload;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->updateProgress()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/bots/BotDownloads;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->this$0:Lorg/telegram/ui/bots/BotDownloads;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/bots/BotDownloads$FileDownload$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotDownloads$FileDownload$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotDownloads$FileDownload;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->updateProgressRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->url:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file_name:Ljava/lang/String;

    iget v0, p1, Lorg/telegram/ui/bots/BotDownloads;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/ui/bots/BotDownloads;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Downloading file..."

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Downloading "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    sget-object p2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    iget-object p1, p1, Lorg/telegram/ui/bots/BotDownloads;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p1, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->id:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/bots/BotDownloads;Lorg/json/JSONObject;)V
    .locals 2

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->this$0:Lorg/telegram/ui/bots/BotDownloads;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/telegram/ui/bots/BotDownloads$FileDownload$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/bots/BotDownloads$FileDownload$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotDownloads$FileDownload;)V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->updateProgressRunnable:Ljava/lang/Runnable;

    const-string p1, "url"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->url:Ljava/lang/String;

    const-string p1, "file_name"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file_name:Ljava/lang/String;

    const-string p1, "size"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    const-string p1, "done"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->done:Z

    const-string p1, "mime"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->mime:Ljava/lang/String;

    const-string p1, "path"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file:Ljava/io/File;

    :cond_0
    return-void
.end method

.method private updateProgress()V
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->done:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancelled:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->last_progress_time:J

    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-array v4, v0, [J

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    invoke-virtual {v1, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->this$0:Lorg/telegram/ui/bots/BotDownloads;

    iget-object v3, v3, Lorg/telegram/ui/bots/BotDownloads;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "status"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    const-string v1, "local_uri"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file:Ljava/io/File;

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->done:Z

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->this$0:Lorg/telegram/ui/bots/BotDownloads;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotDownloads;->save()V

    goto :goto_2

    :cond_2
    const/16 v0, 0x10

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3
    :try_start_1
    const-string v0, "bytes_so_far"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->loaded_size:J

    const-string v0, "total_size"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->updateProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xa0

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->done:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_6

    :cond_5
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->this$0:Lorg/telegram/ui/bots/BotDownloads;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotDownloads;->access$000(Lorg/telegram/ui/bots/BotDownloads;)V

    return-void

    :goto_3
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->this$0:Lorg/telegram/ui/bots/BotDownloads;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/bots/BotDownloads;->cancel(Lorg/telegram/ui/bots/BotDownloads$FileDownload;)V

    return-void
.end method

.method public getProgress()Landroid/util/Pair;
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->done:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->id:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancelled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->last_progress_time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    new-instance v0, Landroid/util/Pair;

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->loaded_size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->updateProgress()V

    new-instance v0, Landroid/util/Pair;

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->loaded_size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    :goto_0
    new-instance v0, Landroid/util/Pair;

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->loaded_size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public isDownloading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z

    :cond_0
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "url"

    iget-object v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_name"

    iget-object v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "path"

    iget-object v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "done"

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->done:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mime"

    iget-object v2, p0, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

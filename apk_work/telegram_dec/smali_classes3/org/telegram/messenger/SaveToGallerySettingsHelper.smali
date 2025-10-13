.class public Lorg/telegram/messenger/SaveToGallerySettingsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;,
        Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;,
        Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;
    }
.end annotation


# static fields
.field public static CHANNELS_PREF_NAME:Ljava/lang/String; = "channels_save_gallery_exceptions"

.field public static final DEFAULT_VIDEO_LIMIT:J = 0x6400000L

.field public static GROUPS_PREF_NAME:Ljava/lang/String; = "groups_save_gallery_exceptions"

.field public static final MAX_VIDEO_LIMIT:J = 0xfa000000L

.field public static USERS_PREF_NAME:Ljava/lang/String; = "users_save_gallery_exceptions"

.field public static channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

.field public static groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

.field public static user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettings(I)Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static load(Landroid/content/SharedPreferences;)V
    .locals 11

    const-string v0, "save_gallery"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x1

    const-string v4, "save_gallery_flags"

    if-eqz v2, :cond_0

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    const-string v5, "channels"

    const/4 v6, 0x4

    const-string v7, "groups"

    const-string v8, "user"

    const/4 v9, 0x1

    if-eq v2, v3, :cond_4

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-direct {v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    iput-boolean v3, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->savePhoto:Z

    const-wide/32 v3, 0x6400000

    iput-wide v3, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->limitVideo:J

    invoke-static {v0, v8, p0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$000(Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    new-instance v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-direct {v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    sget-object v8, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    and-int/lit8 v10, v2, 0x2

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    iput-boolean v10, v8, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    iput-boolean v10, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->savePhoto:Z

    iput-wide v3, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->limitVideo:J

    invoke-static {v0, v7, p0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$000(Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    new-instance v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-direct {v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    and-int/2addr v2, v6

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->savePhoto:Z

    iput-wide v3, v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->limitVideo:J

    invoke-static {v0, v5, p0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$000(Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_3

    :cond_4
    invoke-static {v8, p0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$100(Ljava/lang/String;Landroid/content/SharedPreferences;)Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-static {v7, p0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$100(Ljava/lang/String;Landroid/content/SharedPreferences;)Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-static {v5, p0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$100(Ljava/lang/String;Landroid/content/SharedPreferences;)Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    :goto_3
    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-static {p0, v9}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$202(Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;I)I

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$202(Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;I)I

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-static {p0, v6}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$202(Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;I)I

    return-void
.end method

.method public static loadExceptions(Landroid/content/SharedPreferences;)Landroid/util/LongSparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    new-instance v4, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    invoke-direct {v4}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_dialog_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface {p0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v4, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_photo"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->savePhoto:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_video"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_limitVideo"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/32 v8, 0x6400000

    invoke-interface {p0, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v4, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->limitVideo:J

    iget-wide v8, v4, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_0

    invoke-virtual {v0, v8, v9, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static needSave(ILorg/telegram/messenger/FilePathDatabase$FileMeta;Lorg/telegram/messenger/MessageObject;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$300(Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;Lorg/telegram/messenger/FilePathDatabase$FileMeta;Lorg/telegram/messenger/MessageObject;I)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static saveExceptions(Landroid/content/SharedPreferences;Landroid/util/LongSparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const-string v1, "count"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_dialog_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$DialogException;->dialogId:J

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->savePhoto:Z

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->saveVideo:Z

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_limitVideo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->limitVideo:J

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveSettings(I)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    const-string v1, "user"

    :goto_0
    invoke-static {p0, v1, v0}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->access$000(Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    const-string v1, "groups"

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    sget-object p0, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    const-string v1, "channels"

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

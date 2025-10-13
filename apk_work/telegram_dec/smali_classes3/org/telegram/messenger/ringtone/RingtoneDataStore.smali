.class public Lorg/telegram/messenger/ringtone/RingtoneDataStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;
    }
.end annotation


# static fields
.field private static volatile lastReloadTimeMs:J

.field private static volatile queryHash:J

.field public static final ringtoneSupportedMimeType:Ljava/util/HashSet;


# instance fields
.field private final clientUserId:J

.field private final currentAccount:I

.field private loaded:Z

.field private localIds:I

.field prefName:Ljava/lang/String;

.field public final userRingtones:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$-UW3TH3Cj3AxRqiLcUXllVBnSvc(Lorg/telegram/messenger/ringtone/RingtoneDataStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$2wD42q7GAU2CEYVFqLeIf8bJ4Z0(Lorg/telegram/messenger/ringtone/RingtoneDataStore;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->lambda$checkRingtoneSoundsLoaded$4(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mdg5w4rlsxg-qwUCTRRhNBwi42A(Lorg/telegram/messenger/ringtone/RingtoneDataStore;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->lambda$checkRingtoneSoundsLoaded$5(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QGU0yATPwsS7uQdYgvyA74WZIfw(Lorg/telegram/messenger/ringtone/RingtoneDataStore;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->lambda$loadUserRingtones$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y5GG--OuoqgRGLg0zqG4hJ_naJ0(Lorg/telegram/messenger/ringtone/RingtoneDataStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->lambda$loadFromPrefs$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$bpPC8_j31AJsfapIFY8p3AgihY0(Lorg/telegram/messenger/ringtone/RingtoneDataStore;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->lambda$loadUserRingtones$1(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "audio/ogg"

    const-string v2, "audio/m4a"

    const-string v3, "audio/mpeg3"

    const-string v4, "audio/mpeg"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->ringtoneSupportedMimeType:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->prefName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->clientUserId:J

    invoke-direct {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    :try_start_0
    const-string v0, "hash"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->queryHash:J

    const-string v0, "lastReload"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->lastReloadTimeMs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    new-instance p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ringtone/RingtoneDataStore;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->prefName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ringtones_pref_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->prefName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->prefName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$checkRingtoneSoundsLoaded$4(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    return-void
.end method

.method private synthetic lambda$checkRingtoneSoundsLoaded$5(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_3

    iget v2, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/ringtone/RingtoneDataStore;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadFromPrefs$3()V
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadUserRingtones$1(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    if-eqz p1, :cond_2

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_savedRingtonesNotModified;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loadFromPrefs(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_savedRingtones;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$TL_savedRingtones;

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_account$TL_savedRingtones;->ringtones:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->saveTones(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_account$TL_savedRingtones;->hash:J

    sput-wide v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->queryHash:J

    const-string p1, "hash"

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->lastReloadTimeMs:J

    const-string v2, "lastReload"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->checkRingtoneSoundsLoaded()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadUserRingtones$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ringtone/RingtoneDataStore;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loadUserRingtones(Z)V

    return-void
.end method

.method private loadFromPrefs(Z)V
    .locals 7

    invoke-direct {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-ge v2, v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tone_document"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tone_local_path"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v5, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {v5, v6, v3}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    new-instance v5, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;-><init>(Lorg/telegram/messenger/ringtone/RingtoneDataStore;)V

    iput-object v3, v5, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v4, v5, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->localIds:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->localIds:I

    iput v3, v5, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localId:I

    iget-object v3, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v4, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    throw v3

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ringtone/RingtoneDataStore;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private saveTones(Ljava/util/ArrayList;)V
    .locals 9

    .line 0
    iget-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loadFromPrefs(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object v4, v3, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_1

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v3, v3, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "count"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v7

    invoke-direct {v6, v7}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    invoke-virtual {v4, v6}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tone_document"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tone_local_path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    new-instance v6, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;-><init>(Lorg/telegram/messenger/ringtone/RingtoneDataStore;)V

    iput-object v4, v6, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v5, v6, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    iget v4, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->localIds:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->localIds:I

    iput v4, v6, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localId:I

    iget-object v4, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addTone(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;-><init>(Lorg/telegram/messenger/ringtone/RingtoneDataStore;)V

    iput-object p1, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->localIds:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->localIds:I

    iput p1, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localId:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->uploading:Z

    iget-object p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->saveTones()V

    :cond_1
    :goto_0
    return-void
.end method

.method public addUploadingTone(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;-><init>(Lorg/telegram/messenger/ringtone/RingtoneDataStore;)V

    iput-object p1, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    iget p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->localIds:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->localIds:I

    iput p1, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localId:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->uploading:Z

    iget-object p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkRingtoneSoundsLoaded()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loadFromPrefs(Z)V

    iput-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ringtone/RingtoneDataStore;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public contains(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getDocument(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDocument(J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loadFromPrefs(Z)V

    iput-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object v1, v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object v1, v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object p1, p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSoundPath(J)Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loadFromPrefs(Z)V

    iput-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object v1, v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object v1, v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object p1, p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object p1, p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    return-object p1

    :cond_1
    iget p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object p2, p2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "NoSound"

    return-object p1
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    return v0
.end method

.method public loadUserRingtones(Z)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->lastReloadTimeMs:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$getSavedRingtones;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$getSavedRingtones;-><init>()V

    sget-wide v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->queryHash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/tl/TL_account$getSavedRingtones;->hash:J

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ringtone/RingtoneDataStore;)V

    invoke-virtual {p1, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loadFromPrefs(Z)V

    iput-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->checkRingtoneSoundsLoaded()V

    :goto_2
    return-void
.end method

.method public onRingtoneUploaded(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-boolean p3, p3, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->uploading:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object p3, p3, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-boolean v2, v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->uploading:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object v2, v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iput-boolean v1, p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->uploading:Z

    iget-object p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iput-object p2, p1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->saveTones()V

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    iget p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public remove(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loadFromPrefs(Z)V

    iput-boolean v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->loaded:Z

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object v1, v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object v1, v1, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public saveTones()V
    .locals 8

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-boolean v4, v4, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->uploading:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object v4, v4, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->userRingtones:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;

    iget-object v5, v5, Lorg/telegram/messenger/ringtone/RingtoneDataStore$CachedTone;->localUri:Ljava/lang/String;

    new-instance v6, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v7

    invoke-direct {v6, v7}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    invoke-virtual {v4, v6}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tone_document"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tone_local_path"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "count"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v0, p0, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

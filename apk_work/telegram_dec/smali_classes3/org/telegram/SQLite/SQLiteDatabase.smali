.class public Lorg/telegram/SQLite/SQLiteDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private inTransaction:Z

.field private isOpen:Z

.field private final sqliteHandle:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->opendb(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string v1, "database already in transaction"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    iget-wide v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction(J)V

    return-void
.end method

.method native beginTransaction(J)V
.end method

.method checkOpened()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string v1, "Database closed"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    iget-wide v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->closedb(J)V
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    :cond_1
    return-void
.end method

.method native closedb(J)V
.end method

.method public commitTransaction()V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    iget-wide v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction(J)V

    return-void
.end method

.method native commitTransaction(J)V
.end method

.method public executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    .locals 1

    new-instance v0, Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-direct {v0, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;-><init>(Lorg/telegram/SQLite/SQLiteDatabase;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->checkOpened()V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    throw p2
.end method

.method public varargs explainQuery(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->checkOpened()V

    new-instance v0, Lorg/telegram/SQLite/SQLitePreparedStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXPLAIN QUERY PLAN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;-><init>(Lorg/telegram/SQLite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->query([Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->getColumnCount()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getSQLiteHandle()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:J

    return-wide v0
.end method

.method native opendb(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public varargs queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->checkOpened()V

    new-instance v0, Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-direct {v0, p0, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;-><init>(Lorg/telegram/SQLite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->query([Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p1

    return-object p1
.end method

.method public tableExists(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->checkOpened()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "SELECT rowid FROM sqlite_master WHERE type=\'table\' AND name=?;"

    invoke-virtual {p0, p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

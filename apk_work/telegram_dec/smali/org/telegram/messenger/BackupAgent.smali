.class public Lorg/telegram/messenger/BackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SourceFile"


# static fields
.field private static backupManager:Landroid/app/backup/BackupManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method public static requestBackup(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lorg/telegram/messenger/BackupAgent;->backupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/telegram/messenger/BackupAgent;->backupManager:Landroid/app/backup/BackupManager;

    :cond_0
    sget-object p0, Lorg/telegram/messenger/BackupAgent;->backupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    const-string v1, "saved_tokens"

    const-string v2, "saved_tokens_login"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string v1, "prefs"

    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method

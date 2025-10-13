.class public abstract synthetic Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m()Z
    .locals 1

    .line 0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    return v0
.end method

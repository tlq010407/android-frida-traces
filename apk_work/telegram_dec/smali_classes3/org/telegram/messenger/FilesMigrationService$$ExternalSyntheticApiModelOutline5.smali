.class public abstract synthetic Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

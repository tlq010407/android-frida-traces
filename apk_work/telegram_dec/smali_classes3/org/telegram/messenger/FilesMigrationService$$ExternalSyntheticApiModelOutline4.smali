.class public abstract synthetic Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Ljava/nio/file/Path;)Ljava/io/File;
    .locals 0

    .line 0
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

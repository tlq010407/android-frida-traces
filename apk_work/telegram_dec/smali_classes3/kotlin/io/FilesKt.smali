.class public abstract Lkotlin/io/FilesKt;
.super Lkotlin/io/FilesKt__UtilsKt;
.source "SourceFile"


# direct methods
.method public static bridge synthetic readBytes(Ljava/io/File;)[B
    .locals 0

    .line 0
    invoke-static {p0}, Lkotlin/io/FilesKt__FileReadWriteKt;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic writeBytes(Ljava/io/File;[B)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lkotlin/io/FilesKt__FileReadWriteKt;->writeBytes(Ljava/io/File;[B)V

    return-void
.end method

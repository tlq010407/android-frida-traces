.class public abstract Lcom/huawei/secure/android/common/util/IOUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static closeSecure(Ljava/io/Closeable;)V
    .locals 1

    .line 0
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "IOUtil"

    const-string v0, "closeSecure IOException"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static closeSecure(Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeSecure(Ljava/io/OutputStream;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/huawei/secure/android/common/util/IOUtil;->closeSecure(Ljava/io/Closeable;)V

    return-void
.end method

.method public static deleteSecure(Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "IOUtil"

    const-string v0, "deleteSecure exception"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

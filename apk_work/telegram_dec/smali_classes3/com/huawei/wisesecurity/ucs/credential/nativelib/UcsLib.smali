.class public Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;
    }
.end annotation


# static fields
.field public static final CA_LOCK:Ljava/lang/Object;

.field public static volatile FLAG:Z = false

.field public static final LIB_NAME:Ljava/lang/String; = "ucs-credential"

.field public static final NATIVE_VERIFY_SIGNATURE_FAIL:J = 0xea60L

.field public static final TAG:Ljava/lang/String; = "UcsLib"

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field public static volatile updateRootKeyFlag:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->CA_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNativeLibrary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;
        }
    .end annotation

    sget-boolean v0, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->FLAG:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->loadLibrary()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->FLAG:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCS load library error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x3ec

    invoke-direct {v1, v2, v3, v0}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkPkgNameCertFP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->nativeCheckPkgNameCertFP(Landroid/content/Context;[B[B)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p2, p0, v2

    if-nez p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static decryptKek([BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;
        }
    .end annotation

    invoke-static {}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->newOutputParam()Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->nativeDecryptKek([BILcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    iget-object p0, v0, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;->bytes:[B

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to decryptKek\uff0c result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/huawei/wisesecurity/ucs/common/log/LogUcs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    invoke-direct {v1, p0, p1, v0}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw v1
.end method

.method public static genReqJws(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-wide/16 v0, 0x3e9

    if-eqz p0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->newOutputParam()Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;

    move-result-object v7

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    int-to-long v3, p3

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v0, p0

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->nativeGenReqJws(Landroid/content/Context;[B[BJ[BLcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p4, p0, p2

    if-nez p4, :cond_1

    iget-object p0, v7, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;->bytes:[B

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to genReqJws\uff0c result : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->TAG:Ljava/lang/String;

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p3, p2, p4}, Lcom/huawei/wisesecurity/ucs/common/log/LogUcs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p3, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    invoke-direct {p3, p0, p1, p2}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p3

    :cond_2
    new-instance p0, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-string p1, "packageName cannot empty.."

    invoke-direct {p0, v0, v1, p1}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-string p1, "context cannot empty.."

    invoke-direct {p0, v0, v1, p1}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p0
.end method

.method public static getPkgNameCertFP(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->newOutputParam()Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->nativeGetPkgNameCertFP(Landroid/content/Context;Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/String;

    iget-object v2, v1, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;->bytes:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/String;

    iget-object v1, v1, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;->secondBytes:[B

    invoke-direct {p0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to getPkgNameCertFP\uff0c result : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/huawei/wisesecurity/ucs/common/log/LogUcs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    invoke-direct {v0, v2, v3, p0}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw v0
.end method

.method public static native getSoVersion()J
.end method

.method public static isRootKeyUpdated()Z
    .locals 1

    sget-boolean v0, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->updateRootKeyFlag:Z

    return v0
.end method

.method public static declared-synchronized loadLibrary()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v2, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;

    monitor-enter v2

    :try_start_0
    const-string v3, ""

    sget-boolean v4, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->FLAG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_0

    :try_start_1
    const-string v4, "ucs-credential"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v4, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->TAG:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v5, "load lib {0} success"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "ucs-credential"

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lcom/huawei/wisesecurity/ucs/common/log/LogUcs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean v1, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->FLAG:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_0
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load lib ucs-credential error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v0}, Lcom/huawei/wisesecurity/ucs/common/log/LogUcs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :goto_1
    monitor-exit v2

    return-object v3

    :goto_2
    monitor-exit v2

    throw v0
.end method

.method public static native nativeCheckPkgNameCertFP(Landroid/content/Context;[B[B)J
.end method

.method public static native nativeDecryptKek([BILcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;)J
.end method

.method public static native nativeGenReqJws(Landroid/content/Context;[B[BJ[BLcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;)J
.end method

.method public static native nativeGetPkgNameCertFP(Landroid/content/Context;Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;)J
.end method

.method public static newOutputParam()Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;
    .locals 1

    new-instance v0, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;

    invoke-direct {v0}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib$OutputParam;-><init>()V

    return-object v0
.end method

.method public static ucsGetSoVersion()J
    .locals 2

    invoke-static {}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->getSoVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ucsUpdateRootKey([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;
        }
    .end annotation

    sget-object v0, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->CA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->updateRootKey([BI)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p0, v1

    if-nez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->updateRootKeyFlag:Z

    if-nez v4, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to updateRootKey\uff0c result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/huawei/wisesecurity/ucs/common/log/LogUcs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-wide/16 v1, 0x3f1

    invoke-direct {p1, v1, v2, p0}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native updateRootKey([BI)J
.end method

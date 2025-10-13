.class public abstract Lcom/huawei/wisesecurity/kfs/util/ByteUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static clone([B)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_0
    return-object p0
.end method

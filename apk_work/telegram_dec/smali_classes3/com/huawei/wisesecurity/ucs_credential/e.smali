.class public abstract Lcom/huawei/wisesecurity/ucs_credential/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/huawei/wisesecurity/ucs/credential/Credential;)Lcom/huawei/wisesecurity/ucs_credential/e;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getKekVersion()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/huawei/wisesecurity/ucs_credential/f;

    invoke-direct {p0}, Lcom/huawei/wisesecurity/ucs_credential/f;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/huawei/wisesecurity/ucs_credential/g;

    invoke-direct {p0}, Lcom/huawei/wisesecurity/ucs_credential/g;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/huawei/wisesecurity/ucs/credential/Credential;Landroid/content/Context;)[B
.end method

.method public b(Lcom/huawei/wisesecurity/ucs/credential/Credential;Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getKekString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/huawei/wisesecurity/ucs_credential/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/huawei/wisesecurity/ucs_credential/e;->a(Lcom/huawei/wisesecurity/ucs/credential/Credential;Landroid/content/Context;)[B

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/huawei/wisesecurity/ucs_credential/a;->a:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "KekStore"

    const-string v0, "putKek param is null."

    invoke-static {p2, v0, p1}, Lcom/huawei/wisesecurity/ucs/common/log/LogUcs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-wide/16 v1, 0x3e9

    invoke-direct {p1, v1, v2, v0}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p1
.end method

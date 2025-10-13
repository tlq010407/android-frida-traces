.class public Lcom/huawei/wisesecurity/ucs_credential/g;
.super Lcom/huawei/wisesecurity/ucs_credential/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/wisesecurity/ucs_credential/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/wisesecurity/ucs/credential/Credential;Landroid/content/Context;)[B
    .locals 0

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getKekBytes()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getAlg()I

    move-result p1

    invoke-static {p2, p1}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->decryptKek([BI)[B

    move-result-object p1

    return-object p1
.end method

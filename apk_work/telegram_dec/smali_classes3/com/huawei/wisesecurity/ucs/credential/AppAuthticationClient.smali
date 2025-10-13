.class public Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient$Builder;
    }
.end annotation


# instance fields
.field public alg:Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

.field public context:Landroid/content/Context;

.field public credential:Lcom/huawei/wisesecurity/ucs/credential/Credential;

.field public extra:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/wisesecurity/ucs/credential/Credential;Ljava/lang/String;Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;->credential:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    iput-object p3, p0, Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;->extra:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;->alg:Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/huawei/wisesecurity/ucs/credential/Credential;Ljava/lang/String;Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient$a;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;-><init>(Landroid/content/Context;Lcom/huawei/wisesecurity/ucs/credential/Credential;Ljava/lang/String;Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;)V

    return-void
.end method


# virtual methods
.method public getAppAuthtication()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;
        }
    .end annotation

    const-wide/16 v0, 0x7d1

    :try_start_0
    new-instance v2, Lcom/huawei/wisesecurity/ucs_credential/w;

    invoke-direct {v2}, Lcom/huawei/wisesecurity/ucs_credential/w;-><init>()V

    new-instance v3, Lcom/huawei/wisesecurity/ucs_credential/w$a;

    const-string v4, "HS256"

    invoke-direct {v3, v4}, Lcom/huawei/wisesecurity/ucs_credential/w$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/huawei/wisesecurity/ucs_credential/w$a;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/huawei/wisesecurity/ucs_credential/w;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;->credential:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    invoke-virtual {v3}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getAkskVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->getPkgNameCertFP(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/huawei/wisesecurity/ucs/common/exception/UcsCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    const-string v5, ""

    move-object v3, v5

    :goto_0
    :try_start_1
    new-instance v4, Lcom/huawei/wisesecurity/ucs_credential/w$b;

    iget-object v6, p0, Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;->extra:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v6}, Lcom/huawei/wisesecurity/ucs_credential/w$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/wisesecurity/ucs_credential/w$b;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/huawei/wisesecurity/ucs_credential/w;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;->credential:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    invoke-virtual {v3}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getKekString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/wisesecurity/ucs_credential/a;->a(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/wisesecurity/ucs/credential/AppAuthticationClient;->credential:Lcom/huawei/wisesecurity/ucs/credential/Credential;

    invoke-virtual {v4}, Lcom/huawei/wisesecurity/ucs/credential/Credential;->getSecretKeyBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/wisesecurity/ucs/credential/entity/SkDkEntity;->from([B)Lcom/huawei/wisesecurity/ucs/credential/entity/SkDkEntity;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/huawei/wisesecurity/ucs/credential/entity/SkDkEntity;->decryptSkDk([B)[B

    move-result-object v3

    new-instance v4, Lcom/huawei/wisesecurity/kfs/crypto/signer/hmac/HmacSigner$Builder;

    invoke-direct {v4}, Lcom/huawei/wisesecurity/kfs/crypto/signer/hmac/HmacSigner$Builder;-><init>()V

    invoke-virtual {v4, v3}, Lcom/huawei/wisesecurity/kfs/crypto/signer/hmac/HmacSigner$Builder;->withKey([B)Lcom/huawei/wisesecurity/kfs/crypto/signer/hmac/HmacSigner$Builder;

    move-result-object v3

    sget-object v4, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->HMAC_SHA256:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    invoke-virtual {v3, v4}, Lcom/huawei/wisesecurity/kfs/crypto/signer/hmac/HmacSigner$Builder;->withAlg(Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;)Lcom/huawei/wisesecurity/kfs/crypto/signer/hmac/HmacSigner$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/wisesecurity/kfs/crypto/signer/hmac/HmacSigner$Builder;->build()Lcom/huawei/wisesecurity/kfs/crypto/signer/hmac/HmacSigner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/wisesecurity/kfs/crypto/signer/hmac/HmacSigner;->getSignHandler()Lcom/huawei/wisesecurity/kfs/crypto/signer/SignHandler;

    move-result-object v3

    invoke-virtual {v2}, Lcom/huawei/wisesecurity/ucs_credential/w;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignHandler;->from(Ljava/lang/String;)Lcom/huawei/wisesecurity/kfs/crypto/signer/SignHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignHandler;->sign()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/huawei/wisesecurity/ucs/common/utils/StringUtil;->base64EncodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/huawei/wisesecurity/ucs_credential/w;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/huawei/wisesecurity/ucs_credential/w;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/huawei/wisesecurity/ucs/common/exception/UcsCryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_1
    new-instance v3, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app info auth Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw v3

    :goto_2
    new-instance v1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x3fe

    invoke-direct {v1, v2, v3, v0}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw v1

    :catch_2
    new-instance v2, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-string v3, "new String UnsupportedOperationException.."

    invoke-direct {v2, v0, v1, v3}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw v2
.end method

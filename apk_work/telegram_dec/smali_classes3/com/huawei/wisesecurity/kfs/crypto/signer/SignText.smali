.class public Lcom/huawei/wisesecurity/kfs/crypto/signer/SignText;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public algId:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

.field public dataBytes:[B

.field public signature:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->UNKNOWN:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    iput-object v0, p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignText;->algId:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    return-void
.end method


# virtual methods
.method public getAlgId()Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;
    .locals 1

    iget-object v0, p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignText;->algId:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    return-object v0
.end method

.method public getDataBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignText;->dataBytes:[B

    invoke-static {v0}, Lcom/huawei/wisesecurity/kfs/util/ByteUtil;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignText;->signature:[B

    invoke-static {v0}, Lcom/huawei/wisesecurity/kfs/util/ByteUtil;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public setAlgId(Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignText;->algId:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    return-void
.end method

.method public setDataBytes([B)V
    .locals 0

    invoke-static {p1}, Lcom/huawei/wisesecurity/kfs/util/ByteUtil;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignText;->dataBytes:[B

    return-void
.end method

.method public setSignature([B)V
    .locals 0

    invoke-static {p1}, Lcom/huawei/wisesecurity/kfs/util/ByteUtil;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignText;->signature:[B

    return-void
.end method

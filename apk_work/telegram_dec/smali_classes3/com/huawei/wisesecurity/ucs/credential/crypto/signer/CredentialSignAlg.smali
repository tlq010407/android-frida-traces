.class public final enum Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

.field public static final enum HMAC_SHA256:Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;


# instance fields
.field public id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

    const-string v1, "HMAC_SHA256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;->HMAC_SHA256:Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

    aput-object v0, v1, v2

    sput-object v1, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;->$VALUES:[Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;
    .locals 1

    const-class v0, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

    return-object p0
.end method

.method public static values()[Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;
    .locals 1

    sget-object v0, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;->$VALUES:[Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

    invoke-virtual {v0}, [Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/huawei/wisesecurity/ucs/credential/crypto/signer/CredentialSignAlg;->id:I

    return v0
.end method

.class public final enum Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;

.field public static final enum AES_GCM:Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;


# instance fields
.field public id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "AES_GCM"

    invoke-direct {v0, v3, v1, v2}, Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;->AES_GCM:Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;

    new-array v2, v2, [Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;

    aput-object v0, v2, v1

    sput-object v2, Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;->$VALUES:[Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;

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

    iput p3, p0, Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;
    .locals 1

    const-class v0, Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;

    return-object p0
.end method

.method public static values()[Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;
    .locals 1

    sget-object v0, Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;->$VALUES:[Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;

    invoke-virtual {v0}, [Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/huawei/wisesecurity/ucs/credential/crypto/cipher/CredentialCipherAlg;->id:I

    return v0
.end method

.class public final enum Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

.field public static final enum ECDSA:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

.field public static final enum HMAC_SHA256:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

.field public static final MAPPING:Ljava/util/Map;

.field public static final PREFERRED_ALGS:Ljava/util/Map;

.field public static final enum RSA_SHA256:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

.field public static final enum RSA_SHA256_PSS:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

.field public static final enum UNKNOWN:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;


# instance fields
.field public alg:Ljava/lang/String;

.field public keyType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->UNKNOWN:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    new-instance v1, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    const-string v3, "SHA256WithECDSA"

    const-string v4, "ECDSA"

    const/4 v5, 0x1

    const-string v6, "EC"

    invoke-direct {v1, v4, v5, v6, v3}, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->ECDSA:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    new-instance v3, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    const/4 v4, 0x2

    const-string v7, "SHA256WithRSA"

    const-string v8, "RSA_SHA256"

    invoke-direct {v3, v8, v4, v8, v7}, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->RSA_SHA256:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    new-instance v7, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    const/4 v8, 0x3

    const-string v9, "SHA256withRSA/PSS"

    const-string v10, "RSA_SHA256_PSS"

    invoke-direct {v7, v10, v8, v10, v9}, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->RSA_SHA256_PSS:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    new-instance v9, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    const/4 v10, 0x4

    const-string v11, "HmacSHA256"

    const-string v12, "HMAC_SHA256"

    invoke-direct {v9, v12, v10, v11, v11}, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->HMAC_SHA256:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    const/4 v11, 0x5

    new-array v11, v11, [Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    aput-object v0, v11, v2

    aput-object v1, v11, v5

    aput-object v3, v11, v4

    aput-object v7, v11, v8

    aput-object v9, v11, v10

    sput-object v11, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->$VALUES:[Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->MAPPING:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->PREFERRED_ALGS:Ljava/util/Map;

    const-class v0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    sget-object v2, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->MAPPING:Ljava/util/Map;

    iget-object v3, v1, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->keyType:Ljava/lang/String;

    iget-object v1, v1, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->alg:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->PREFERRED_ALGS:Ljava/util/Map;

    sget-object v1, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->ECDSA:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->RSA_SHA256:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    const-string v2, "RSA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->HMAC_SHA256:Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    const-string v2, "HMAC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->keyType:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->alg:Ljava/lang/String;

    return-void
.end method

.method public static getPreferredAlg(Ljava/lang/String;)Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;
    .locals 1

    sget-object v0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->PREFERRED_ALGS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;
    .locals 1

    const-class v0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    return-object p0
.end method

.method public static values()[Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;
    .locals 1

    sget-object v0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->$VALUES:[Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    invoke-virtual {v0}, [Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;

    return-object v0
.end method


# virtual methods
.method public getTransformation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/wisesecurity/kfs/crypto/signer/SignAlg;->alg:Ljava/lang/String;

    return-object v0
.end method

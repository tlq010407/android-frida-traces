.class public Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEK_ALG_GCM:I = 0x1


# instance fields
.field public alg:I
    .annotation runtime Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsIntegerRange;
    .end annotation
.end field

.field public kekAlg:I
    .annotation runtime Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsIntegerRange;
    .end annotation
.end field

.field public key:Ljava/lang/String;
    .annotation runtime Lcom/huawei/wisesecurity/kfs/validation/constrains/KfsStringNotEmpty;
    .end annotation
.end field

.field public v1:I

.field public v2:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkVersion(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;
        }
    .end annotation

    invoke-static {}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->checkNativeLibrary()V

    const-string v0, "Local-C1-Version"

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/huawei/wisesecurity/ucs/common/utils/SpUtil;->getInt(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->ucsGetSoVersion()J

    move-result-wide v1

    long-to-int v2, v1

    iget v1, p0, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->v1:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->v2:I

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/huawei/wisesecurity/ucs/credential/nativelib/UcsLib;->isRootKeyUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/huawei/wisesecurity/ucs_credential/l;

    invoke-direct {v0}, Lcom/huawei/wisesecurity/ucs_credential/l;-><init>()V

    invoke-static {p1, v0}, Lcom/huawei/wisesecurity/ucs_credential/i;->a(Landroid/content/Context;Lcom/huawei/wisesecurity/ucs_credential/k;)V

    return-void

    :cond_1
    new-instance p1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-wide/16 v0, 0x3fd

    const-string v2, "kek V2 with C1 version check fail"

    invoke-direct {p1, v0, v1, v2}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-wide/16 v0, 0x3fc

    const-string v2, "kek V1 with so version check fail"

    invoke-direct {p1, v0, v1, v2}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p1
.end method

.method public static fromString(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;
        }
    .end annotation

    const-wide/16 v0, 0x3e9

    :try_start_0
    new-instance v2, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;

    invoke-direct {v2}, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/huawei/wisesecurity/ucs/common/utils/StringUtil;->base64DecodeToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "version"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->version:I

    const-string p1, "alg"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->alg:I

    const-string p1, "kekAlg"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->kekAlg:I

    const-string p1, "key"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->key:Ljava/lang/String;

    const-string p1, "v1"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->v1:I

    const-string p1, "v2"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->v2:I

    iget p1, v2, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->version:I

    const/4 v3, 0x3

    const/4 v5, 0x1

    if-ne p1, v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {v2}, Lcom/huawei/wisesecurity/kfs/validation/KfsValidator;->validate(Ljava/lang/Object;)V

    if-nez v4, :cond_1

    invoke-direct {v2, p0}, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->checkVersion(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget p0, v2, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->kekAlg:I

    if-ne p0, v5, :cond_2

    return-object v2

    :cond_2
    new-instance p0, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-string p1, "unsupported kek alg"

    const-wide/16 v2, 0x3fc

    invoke-direct {p0, v2, v3, p1}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/huawei/wisesecurity/kfs/exception/KfsValidationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kek param invalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p1

    :goto_2
    new-instance p1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kek param is not a valid json string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAlg()I
    .locals 1

    iget v0, p0, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->alg:I

    return v0
.end method

.method public getKekAlg()I
    .locals 1

    iget v0, p0, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->kekAlg:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getV1()I
    .locals 1

    iget v0, p0, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->v1:I

    return v0
.end method

.method public getV2()I
    .locals 1

    iget v0, p0, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->v2:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/huawei/wisesecurity/ucs/credential/entity/KeyEncryptKey;->version:I

    return v0
.end method

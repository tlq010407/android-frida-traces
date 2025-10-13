.class public Lcom/huawei/wisesecurity/ucs_credential/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/wisesecurity/ucs_credential/h$b;,
        Lcom/huawei/wisesecurity/ucs_credential/h$a;
    }
.end annotation


# instance fields
.field public a:Lcom/huawei/wisesecurity/ucs_credential/h$a;

.field public b:Lcom/huawei/wisesecurity/ucs_credential/h$b;

.field public c:[B

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/wisesecurity/ucs_credential/h;->a([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/huawei/wisesecurity/ucs_credential/h;->b([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/huawei/wisesecurity/ucs_credential/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 0
    const/4 v0, 0x2

    :try_start_0
    aget-object p2, p2, v0

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/huawei/wisesecurity/ucs/common/utils/StringUtil;->base64Decode(Ljava/lang/String;I)[B

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/wisesecurity/ucs_credential/h;->c:[B

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/wisesecurity/ucs_credential/h;->d:Ljava/lang/String;
    :try_end_0
    .catch Lcom/huawei/wisesecurity/ucs/common/exception/UcsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-wide/16 v0, 0x3f4    # 5.0E-321

    const-string p2, "Fail to convert jws string to Content.."

    invoke-direct {p1, v0, v1, p2}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p1
.end method

.method public a([Ljava/lang/String;)V
    .locals 4

    .line 0
    const/4 v0, 0x0

    :try_start_0
    aget-object p1, p1, v0

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/huawei/wisesecurity/ucs/common/utils/StringUtil;->base64Decode(Ljava/lang/String;I)[B

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "x5c"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/huawei/wisesecurity/ucs_credential/h$a;

    invoke-direct {v0}, Lcom/huawei/wisesecurity/ucs_credential/h$a;-><init>()V

    iput-object v0, p0, Lcom/huawei/wisesecurity/ucs_credential/h;->a:Lcom/huawei/wisesecurity/ucs_credential/h$a;

    const-string v2, "alg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/wisesecurity/ucs_credential/h$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/huawei/wisesecurity/ucs_credential/h;->a:Lcom/huawei/wisesecurity/ucs_credential/h$a;

    iput-object p1, v0, Lcom/huawei/wisesecurity/ucs_credential/h$a;->b:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-wide/16 v0, 0x3f4    # 5.0E-321

    const-string v2, "Fail to convert jws string to header.."

    invoke-direct {p1, v0, v1, v2}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p1
.end method

.method public b([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    aget-object p1, p1, v0

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/huawei/wisesecurity/ucs/common/utils/StringUtil;->base64Decode(Ljava/lang/String;I)[B

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/wisesecurity/ucs_credential/h$b;

    invoke-direct {p1}, Lcom/huawei/wisesecurity/ucs_credential/h$b;-><init>()V

    iput-object p1, p0, Lcom/huawei/wisesecurity/ucs_credential/h;->b:Lcom/huawei/wisesecurity/ucs_credential/h$b;

    const-string v1, "component"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/huawei/wisesecurity/ucs_credential/h$b;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/huawei/wisesecurity/ucs_credential/h;->b:Lcom/huawei/wisesecurity/ucs_credential/h$b;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/huawei/wisesecurity/ucs_credential/h$b;->a:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;

    const-wide/16 v0, 0x3f4    # 5.0E-321

    const-string v2, "Fail to convert jws string to payload.."

    invoke-direct {p1, v0, v1, v2}, Lcom/huawei/wisesecurity/ucs/common/exception/UcsException;-><init>(JLjava/lang/String;)V

    throw p1
.end method

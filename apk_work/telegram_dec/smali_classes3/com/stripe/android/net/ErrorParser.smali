.class abstract Lcom/stripe/android/net/ErrorParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/net/ErrorParser$StripeError;
    }
.end annotation


# direct methods
.method static parseError(Ljava/lang/String;)Lcom/stripe/android/net/ErrorParser$StripeError;
    .locals 2

    new-instance v0, Lcom/stripe/android/net/ErrorParser$StripeError;

    invoke-direct {v0}, Lcom/stripe/android/net/ErrorParser$StripeError;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "charge"

    invoke-static {p0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->charge:Ljava/lang/String;

    const-string v1, "code"

    invoke-static {p0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->code:Ljava/lang/String;

    const-string v1, "decline_code"

    invoke-static {p0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->decline_code:Ljava/lang/String;

    const-string v1, "message"

    invoke-static {p0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    const-string v1, "param"

    invoke-static {p0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->type:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "An improperly formatted error response was found."

    iput-object p0, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

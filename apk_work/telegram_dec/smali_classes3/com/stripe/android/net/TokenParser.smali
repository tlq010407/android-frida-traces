.class public abstract Lcom/stripe/android/net/TokenParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static parseToken(Ljava/lang/String;)Lcom/stripe/android/model/Token;
    .locals 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "id"

    invoke-static {v0, p0}, Lcom/stripe/android/util/StripeJsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "created"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string p0, "livemode"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeJsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/android/util/StripeTextUtils;->asTokenType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "used"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v1, "card"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/android/net/CardParser;->parseCard(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;

    move-result-object v6

    new-instance v0, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long v3, v3, v8

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v8, Lcom/stripe/android/model/Token;

    move-object v1, v8

    move v3, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/model/Token;-><init>(Ljava/lang/String;ZLjava/util/Date;Ljava/lang/Boolean;Lcom/stripe/android/model/Card;Ljava/lang/String;)V

    return-object v8
.end method

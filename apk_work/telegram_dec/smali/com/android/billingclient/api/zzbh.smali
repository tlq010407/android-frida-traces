.class public final Lcom/android/billingclient/api/zzbh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "maximumQuantity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v0, "remainingQuantity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    return-void
.end method

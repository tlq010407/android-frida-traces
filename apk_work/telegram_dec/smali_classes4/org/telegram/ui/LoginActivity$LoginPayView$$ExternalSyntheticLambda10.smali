.class public final synthetic Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LoginActivity$LoginPayView;

.field public final synthetic f$1:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

.field public final synthetic f$2:Lcom/android/billingclient/api/ProductDetails;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/LoginActivity$LoginPayView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$1:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$2:Lcom/android/billingclient/api/ProductDetails;

    iput-object p4, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$3:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

    iput-object p5, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$5:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/LoginActivity$LoginPayView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$1:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$2:Lcom/android/billingclient/api/ProductDetails;

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$3:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;->f$5:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/LoginActivity$LoginPayView;->$r8$lambda$842O5c_w1CI9c0yHFihcBygZO1w(Lorg/telegram/ui/LoginActivity$LoginPayView;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

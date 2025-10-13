.class public final synthetic Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LoginActivity$LoginPayView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$3:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

.field public final synthetic f$4:Lcom/android/billingclient/api/ProductDetails;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/LoginActivity$LoginPayView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p4, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$3:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    iput-object p5, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$4:Lcom/android/billingclient/api/ProductDetails;

    iput-object p6, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$5:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

    iput-object p7, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$7:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/LoginActivity$LoginPayView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$3:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$4:Lcom/android/billingclient/api/ProductDetails;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$5:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;->f$7:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/LoginActivity$LoginPayView;->$r8$lambda$kXlBZSq0eFVBlWcOifUU8y8X_Es(Lorg/telegram/ui/LoginActivity$LoginPayView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;

.field public final synthetic f$2:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

.field public final synthetic f$3:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;->f$1:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;

    iput-object p3, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;->f$2:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    iput-object p4, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;->f$3:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    iput-object p5, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;->f$4:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;->f$1:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;->f$2:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;->f$3:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    iget-object v4, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda20;->f$4:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/PremiumPreviewFragment;->$r8$lambda$Z0_N0G9ZfNyVGBD75tqctJCVjLw(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

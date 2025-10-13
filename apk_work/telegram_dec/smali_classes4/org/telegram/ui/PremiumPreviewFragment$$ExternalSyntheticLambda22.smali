.class public final synthetic Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;

.field public final synthetic f$3:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

.field public final synthetic f$4:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/tgnet/TLObject;

    iput-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$2:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;

    iput-object p4, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$3:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    iput-object p5, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$4:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    iput-object p6, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$5:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p7, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$6:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/tgnet/TLObject;

    iget-object v1, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$2:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;

    iget-object v3, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$3:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    iget-object v4, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$4:Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    iget-object v5, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$5:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, p0, Lorg/telegram/ui/PremiumPreviewFragment$$ExternalSyntheticLambda22;->f$6:Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/PremiumPreviewFragment;->$r8$lambda$SJ-gA2XR3R9uEWr9Zr0aFIfpU4Q(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V

    return-void
.end method

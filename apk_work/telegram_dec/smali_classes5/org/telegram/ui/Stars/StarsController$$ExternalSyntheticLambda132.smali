.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback2;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

.field public final synthetic f$4:Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

.field public final synthetic f$5:Lcom/android/billingclient/api/BillingResult;

.field public final synthetic f$6:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;Lcom/android/billingclient/api/BillingResult;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$2:Lorg/telegram/messenger/Utilities$Callback2;

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$3:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$4:Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    iput-object p6, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$5:Lcom/android/billingclient/api/BillingResult;

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$6:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$2:Lorg/telegram/messenger/Utilities$Callback2;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$3:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$4:Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$5:Lcom/android/billingclient/api/BillingResult;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda132;->f$6:Landroid/app/Activity;

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$EuTKw3x_fs3wYPpUoRfB97rlpD8(Lorg/telegram/ui/Stars/StarsController;Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiftOption;Lcom/android/billingclient/api/BillingResult;Landroid/app/Activity;)V

    return-void
.end method

.class public Lorg/telegram/ui/LoginActivity$LoginPayView;
.super Lorg/telegram/ui/Components/SlideView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginPayView"
.end annotation


# instance fields
.field private button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

.field private starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method public static synthetic $r8$lambda$-368aoO8FvkgNz49iU0VIhRsqrc(Lorg/telegram/ui/LoginActivity$LoginPayView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$0DJZf_XSDDrFbcrl355Ed80-Y3o(Lorg/telegram/ui/LoginActivity$LoginPayView;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$10(Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1CuLyf7X2EwR3zwvJl9YB_6ahVY(Lorg/telegram/ui/LoginActivity$LoginPayView;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$7(Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$842O5c_w1CI9c0yHFihcBygZO1w(Lorg/telegram/ui/LoginActivity$LoginPayView;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$15(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Isv2agYUy_xXRm1M_d3PVACjNUY(Lorg/telegram/ui/LoginActivity$LoginPayView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$NKKLkfOeF__Nq5Kluj16nL6Y750(Lorg/telegram/ui/LoginActivity$LoginPayView;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$11(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S24BrN8bak-KwqI71ojgAazvM5U(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$2(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQu0thPSRhqUZaKw1KBU359c4oI(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$4(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VmBcha3ffva3dNAg1bONCwKTYZ8(Lorg/telegram/messenger/Utilities$Callback;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$3(Lorg/telegram/messenger/Utilities$Callback;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cR8fdzy2mPsmVPlXiR1fhmNOjdM(Lorg/telegram/ui/LoginActivity$LoginPayView;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$12(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eiAP3dHVjVjc6Z-l4jB6o4xm29E(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$9(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$engthNfvh8v9Ed3fuogvSV01P_I(Lorg/telegram/ui/LoginActivity$LoginPayView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXlBZSq0eFVBlWcOifUU8y8X_Es(Lorg/telegram/ui/LoginActivity$LoginPayView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXw97AoTtV89q4bTbDl9Ylihv6c(Lorg/telegram/ui/LoginActivity$LoginPayView;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$6(Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kcqkzU5ifwPs_fVBEcVLsytTlIs(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$5(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oX-MiaOPXz4DFv51pvAmnvTfsxY(Lorg/telegram/ui/LoginActivity$LoginPayView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wQpwiH_Dba1gJP6iAK8d7pyFFtI(Lorg/telegram/ui/LoginActivity$LoginPayView;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$13(Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xVoVqrPPWa327fzwA7vYuyjllf4(Lorg/telegram/ui/LoginActivity$LoginPayView;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$16(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yd1TKeIMOl4lPWqUSFIq52HUCnQ(Lorg/telegram/ui/LoginActivity$LoginPayView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginPayView;->lambda$setParams$18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    iput-object v5, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    iput-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v6, v9, v9, v9, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v0, -0x1

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginPayView$1;

    invoke-direct {v2, v6, v7, v5}, Lorg/telegram/ui/LoginActivity$LoginPayView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v2, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    const/16 v11, 0x77

    invoke-static {v0, v1, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lorg/telegram/ui/LoginActivity$LoginPayView$2;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$LoginPayView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Landroid/content/Context;IILorg/telegram/ui/LoginActivity;)V

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x32

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v12, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iput v2, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    iput v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    const/16 v0, 0xa0

    invoke-static {v0, v0, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->SMSFeeTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v17, 0x41800000    # 16.0f

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x31

    const/high16 v15, 0x41800000    # 16.0f

    const/high16 v16, 0x43180000    # 152.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    new-instance v1, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v9

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    aget-object v0, v0, v9

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_high_price:I

    sget v2, Lorg/telegram/messenger/R$string;->SMSFee1Title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->SMSFee1Text:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    aget-object v0, v0, v9

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/4 v13, -0x2

    const/16 v14, 0x37

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    new-instance v1, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v8

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    aget-object v0, v0, v8

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_feature_code:I

    sget v2, Lorg/telegram/messenger/R$string;->SMSFee2Title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->SMSFee2Text:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    aget-object v0, v0, v8

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    new-instance v1, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    aget-object v0, v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_feature_hands:I

    sget v3, Lorg/telegram/messenger/R$string;->SMSFee3Title:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda7;

    invoke-direct {v4, v6}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;)V

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const v4, 0x402aaaab

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v3, v8, v4, v10}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->SMSFee3Text:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;->set(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    aget-object v0, v0, v2

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, v7}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v9, v5, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object v0, v6, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v12, 0x0

    const/16 v13, 0x10

    const/4 v7, -0x1

    const/16 v8, 0x30

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "sms"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$19100(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setCurrentAccount(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$setParams$1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginBilling purchased done "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-string v0, "CANCELLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setParams$10(Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of v0, p5, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_1

    check-cast p5, Lorg/telegram/tgnet/TLRPC$Updates;

    const-class p4, Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;

    invoke-static {p5, p4}, Lorg/telegram/messenger/MessagesController;->findUpdatesAndRemove(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p6}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p5, p4}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p1

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/BillingController;->consumeGiftPurchase(Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/lang/Runnable;)V

    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;)V

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    if-eqz p6, :cond_2

    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda5;

    invoke-direct {p1, p4}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private synthetic lambda$setParams$11(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;-><init>()V

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->receipt:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;->restore:Z

    iput-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_assignPlayMarketTransaction;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda0;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lcom/android/billingclient/api/Purchase;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;)V

    const/16 p4, 0x4a

    invoke-virtual {p2, p1, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    :cond_1
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$setParams$12(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda16;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setParams$13(Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Landroid/view/View;)V
    .locals 7

    iget-object p5, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p5

    if-eqz p5, :cond_0

    return-void

    :cond_0
    iget-object p5, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance p5, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda13;

    invoke-direct {p5, p0}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;)V

    const-string v0, "LoginBilling, querying done purchases..."

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0, p1, p5, p2}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p1

    new-instance p5, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda15;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Ljava/lang/Runnable;)V

    const-string p2, "inapp"

    invoke-virtual {p1, p2, p5}, Lorg/telegram/messenger/BillingController;->queryPurchases(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method private synthetic lambda$setParams$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoginBilling canPurchaseStore returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget p2, Lorg/telegram/messenger/R$string;->SMSFeePurchaseTitle:I

    invoke-virtual {p3}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget p2, Lorg/telegram/messenger/R$string;->SMSFeePurchaseText:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda12;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$8200(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    new-array p4, v0, [Ljava/lang/Object;

    const-string p5, "RESPONSE_FALSE"

    aput-object p5, p4, v1

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$8200(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$setParams$15(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    new-instance v9, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setParams$16(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoginBilling queried \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" product: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/BillingController;->getResponseCodeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$8200(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->error:I

    sget p4, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/BillingController;->getResponseCodeString(I)Ljava/lang/String;

    move-result-object p2

    new-array p5, v0, [Ljava/lang/Object;

    aput-object p2, p5, v1

    invoke-static {p4, p5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;-><init>()V

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;->currency:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide p2

    long-to-double p2, p2

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v0

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/BillingController;->getCurrencyExp(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double p2, p2, v0

    double-to-long p2, p2

    iput-wide p2, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;->amount:J

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    move-object p2, p4

    :goto_0
    iput-object p2, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;->phone_code_hash:Ljava/lang/String;

    iput-object p5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;->phone_number:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LoginBilling found \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" product, with currency="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;->currency:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " amount="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;->amount:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "; phone="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", phone_code_hash="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;-><init>()V

    iput-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;->purpose:Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;

    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3}, Lorg/telegram/ui/LoginActivity;->access$18800(Lorg/telegram/ui/LoginActivity;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;

    move-object v0, p4

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_canPurchaseStore;)V

    const/16 p1, 0xa

    invoke-virtual {p3, p2, p4, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$8200(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    new-array p4, v0, [Ljava/lang/Object;

    const-string p5, "PRODUCT_NOT_FOUND"

    aput-object p5, p4, v1

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    :goto_1
    return-void
.end method

.method private synthetic lambda$setParams$17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda9;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setParams$18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginBilling querying \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" product"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/BillingController;->queryProductDetails(Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method private static synthetic lambda$setParams$2(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setParams$3(Lorg/telegram/messenger/Utilities$Callback;Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/BillingController;->getResponseCodeString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$setParams$4(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const-string v0, "CANCELLED"

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setParams$5(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setParams$6(Lcom/android/billingclient/api/ProductDetails;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;)V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda17;

    invoke-direct {v2, p2}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/BillingController;->addResultListener(Ljava/lang/String;Landroidx/core/util/Consumer;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda18;

    invoke-direct {v1, p2}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/BillingController;->setOnCanceled(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$19000(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p3, p1}, Lorg/telegram/messenger/BillingController;->launchBillingFlow(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$setParams$7(Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;)V
    .locals 2

    const-class v0, Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->findFragment(Ljava/lang/Class;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LoginActivity;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$18900(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/LoginActivity;-><init>(I)V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentAuthCode;->phone_number:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_updateSentPhoneCode;->sent_code:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/LoginActivity;->open(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method private synthetic lambda$setParams$8()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private static synthetic lambda$setParams$9(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public setParams(Landroid/os/Bundle;Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    const-string v2, "country"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SMSFee1Text:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->cells:[Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/telegram/ui/Stars/ExplainStarsSheet$FeatureCell;->subtitleView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->SMSFee1TextCountry:I

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-nez p1, :cond_2

    move-object v2, p2

    goto :goto_2

    :cond_2
    const-string v2, "product"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-nez p1, :cond_3

    move-object v3, p2

    goto :goto_3

    :cond_3
    const-string v3, "phoneFormated"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-nez p1, :cond_4

    move-object p1, p2

    goto :goto_4

    :cond_4
    const-string v4, "phoneHash"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->useInvoiceBilling()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget p2, Lorg/telegram/messenger/R$string;->Unavailable:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_5

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginPayView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, v2, p1, v3}, Lorg/telegram/ui/LoginActivity$LoginPayView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginPayView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/BillingController;->isReady()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/BillingController;->whenSetuped(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_7
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_5
    return-void
.end method

.class Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;


# direct methods
.method public static synthetic $r8$lambda$ZEh9Ax4BCrJ2uSPp3St0zDadDsc(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->lambda$run$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$rtxMoCPIXiUmwq0FfNIngwPs_D0(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->lambda$run$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vJhqI0tGwlpBIZyq9DY1lTbURm4(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->lambda$run$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$11702(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$run$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$run$2()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10500(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/16 v7, 0x3e8

    if-lt v2, v7, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10500(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v2

    div-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x3c

    iget-object v8, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v8}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10500(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v8

    div-int/2addr v8, v7

    mul-int/lit8 v7, v2, 0x3c

    sub-int/2addr v8, v7

    iget-object v7, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v7}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10600(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v7

    if-eq v7, v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v6}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10600(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v6

    if-ne v6, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v4}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10600(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v4}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10100(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Landroid/widget/TextView;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$string;->SmsText:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object v7, v5, v0

    const-string v0, "SmsText"

    invoke-static {v0, v6, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v4}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10100(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Landroid/widget/TextView;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$string;->CallText:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object v7, v5, v0

    const-string v0, "CallText"

    invoke-static {v0, v6, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10700(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Lorg/telegram/ui/PassportActivity$ProgressView;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10700(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Lorg/telegram/ui/PassportActivity$ProgressView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10500(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10800(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/PassportActivity$ProgressView;->setProgress(F)V

    goto/16 :goto_7

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10700(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Lorg/telegram/ui/PassportActivity$ProgressView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10700(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Lorg/telegram/ui/PassportActivity$ProgressView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/PassportActivity$ProgressView;->setProgress(F)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10900(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$11000(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    :goto_3
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0, v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$11102(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10200(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$11200(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    goto/16 :goto_7

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$11000(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v0

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$11000(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v0

    if-ne v0, v6, :cond_a

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10600(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v0

    if-eq v0, v6, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10600(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v0

    if-ne v0, v5, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10600(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v0

    if-ne v0, v4, :cond_a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    goto :goto_3

    :cond_8
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10600(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v0

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10100(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Calling:I

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10100(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SendingSms:I

    goto :goto_5

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$11300(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$11400(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$11500(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    iget-object v1, v1, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v1}, Lorg/telegram/ui/PassportActivity;->access$11600(Lorg/telegram/ui/PassportActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;)V

    invoke-virtual {v1, v0, v2, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_a
    :goto_7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10300(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10400(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v0, v2

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10526(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;D)I

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10402(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;D)D

    new-instance v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

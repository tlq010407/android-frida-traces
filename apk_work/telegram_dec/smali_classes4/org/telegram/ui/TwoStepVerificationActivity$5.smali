.class Lorg/telegram/ui/TwoStepVerificationActivity$5;
.super Lorg/telegram/ui/TwoStepVerificationSetupActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity;->onPasswordForgot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;IILorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(IILorg/telegram/tgnet/tl/TL_account$Password;)V

    return-void
.end method


# virtual methods
.method protected onReset()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1302(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z

    return-void
.end method

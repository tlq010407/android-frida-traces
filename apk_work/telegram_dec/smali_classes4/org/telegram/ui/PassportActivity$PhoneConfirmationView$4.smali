.class Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->createCodeTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;


# direct methods
.method public static synthetic $r8$lambda$gnT_mDqJlxpjV1OfVrGZWf8JBLA(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v2}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$9800(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v0, v2

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v4, v0, v1}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$9802(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;D)D

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$9926(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;D)I

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$9900(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10000(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10100(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;->this$1:Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;->access$10200(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PassportActivity$PhoneConfirmationView$4;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

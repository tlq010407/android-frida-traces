.class public final synthetic Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesController$NewMessageCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PaymentFormActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;->f$1:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;->f$1:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda62;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/PaymentFormActivity;->$r8$lambda$caovSO2Y7evmBmRZ0IVrkhhaN9c(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result p1

    return p1
.end method

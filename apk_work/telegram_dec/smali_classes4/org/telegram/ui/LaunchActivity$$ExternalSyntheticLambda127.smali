.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$PPouoLa28E-0NnTgQZHodAMQ_Wc(Ljava/lang/Runnable;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    return-void
.end method

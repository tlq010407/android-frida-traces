.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda121;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda121;->f$0:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final onInvoiceStatusChanged(Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda121;->f$0:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$0CbP5pj7F7P1HDfgSiiePMUv7Lo(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    return-void
.end method

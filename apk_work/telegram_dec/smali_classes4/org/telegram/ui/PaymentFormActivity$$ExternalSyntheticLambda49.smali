.class public final synthetic Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PaymentFormActivity;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;->f$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;->f$2:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;->f$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda49;->f$2:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->$r8$lambda$Nd7MUvBIlJjmEDRyYccvlilKAcw(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

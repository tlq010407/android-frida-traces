.class public final synthetic Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PaymentFormActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;->f$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;->f$1:Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;->f$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda63;->f$1:Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->$r8$lambda$5uQbcwZ138y36Qyo8C5GJqT3A3I(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/tl/TL_account$getTmpPassword;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

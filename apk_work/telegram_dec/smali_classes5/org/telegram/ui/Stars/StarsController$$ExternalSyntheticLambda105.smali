.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda105;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback2;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda105;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda105;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda105;->f$2:Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda105;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda105;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda105;->f$2:Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$eEu9W2xMXiItx0hDmsXYC1aIeN0(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

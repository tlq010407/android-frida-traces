.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback2;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;->f$2:Lorg/telegram/messenger/Utilities$Callback2;

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;->f$4:Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;->f$2:Lorg/telegram/messenger/Utilities$Callback2;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda73;->f$4:Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$FRim_ui_250cBn8YUlO_9lsnwXQ(Lorg/telegram/ui/Stars/StarsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceStars;)V

    return-void
.end method

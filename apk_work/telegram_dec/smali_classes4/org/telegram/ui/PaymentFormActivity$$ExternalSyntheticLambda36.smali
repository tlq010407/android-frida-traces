.class public final synthetic Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PaymentFormActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;->f$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;->f$4:Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;->f$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$$ExternalSyntheticLambda36;->f$4:Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/PaymentFormActivity;->$r8$lambda$PulDmlsSX2QhY_PXsDa7piVd4Dw(Lorg/telegram/ui/PaymentFormActivity;ZLjava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$updatePasswordSettings;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;->f$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;->f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;->f$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda33;->f$3:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->$r8$lambda$H8sMFkbY8fAUe99XJoSpWodSzWA(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

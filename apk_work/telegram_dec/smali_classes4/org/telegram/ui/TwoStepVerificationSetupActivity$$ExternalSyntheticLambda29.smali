.class public final synthetic Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda29;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$$ExternalSyntheticLambda29;->f$1:[B

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->$r8$lambda$l5RYk7AA2E4isn0FW6OE8v-3Wnw(Lorg/telegram/ui/TwoStepVerificationSetupActivity;[BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

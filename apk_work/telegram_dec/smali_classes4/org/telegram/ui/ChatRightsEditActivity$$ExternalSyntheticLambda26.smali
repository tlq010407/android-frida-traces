.class public final synthetic Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/TwoStepVerificationActivity$TwoStepVerificationActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatRightsEditActivity;

.field public final synthetic f$1:Lorg/telegram/ui/TwoStepVerificationActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/ChatRightsEditActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/ui/TwoStepVerificationActivity;

    return-void
.end method


# virtual methods
.method public final didEnterPassword(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/ChatRightsEditActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->$r8$lambda$2Rxk39fvJYk3tBvIgmxLaektNLk(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

.field public final synthetic f$1:Lorg/telegram/ui/TwoStepVerificationActivity;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    iput-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda44;->f$1:Lorg/telegram/ui/TwoStepVerificationActivity;

    iput-boolean p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda44;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda44;->f$1:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-boolean v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda44;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout;->$r8$lambda$WxBjW_y675_sQXuTj2voT1Pp3f0(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/TwoStepVerificationActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

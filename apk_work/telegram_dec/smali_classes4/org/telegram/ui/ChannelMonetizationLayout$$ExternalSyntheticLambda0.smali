.class public final synthetic Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lorg/telegram/ui/TwoStepVerificationActivity;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    iput-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/ui/TwoStepVerificationActivity;

    iput-boolean p5, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/ui/TwoStepVerificationActivity;

    iget-boolean v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda0;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChannelMonetizationLayout;->$r8$lambda$iQ9N9cShKi5vL8olUVMYNr0L2lk(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda36;->f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    iput-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda36;->f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda36;->f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda36;->f$1:Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelMonetizationLayout;->$r8$lambda$dGgCh4jpHFzsZzo6Lft-xtQlKZ4(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;)V

    return-void
.end method

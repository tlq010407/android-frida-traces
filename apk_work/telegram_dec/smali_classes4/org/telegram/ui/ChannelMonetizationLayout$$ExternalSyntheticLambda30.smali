.class public final synthetic Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

.field public final synthetic f$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    iput-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda30;->f$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda30;->f$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$$ExternalSyntheticLambda30;->f$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    check-cast p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->$r8$lambda$7v1m1-BCF4Ga14i4LOYPzi9sMlA(Lorg/telegram/ui/ChannelMonetizationLayout;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

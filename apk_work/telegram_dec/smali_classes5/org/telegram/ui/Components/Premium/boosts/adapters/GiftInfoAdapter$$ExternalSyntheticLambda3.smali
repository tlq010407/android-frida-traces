.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->onObjectClicked(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

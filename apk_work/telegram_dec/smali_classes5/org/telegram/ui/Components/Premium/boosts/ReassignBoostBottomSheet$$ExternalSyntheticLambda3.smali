.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->$r8$lambda$Xi7OdF22Ep2bfMug90Fs6De0CP4(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

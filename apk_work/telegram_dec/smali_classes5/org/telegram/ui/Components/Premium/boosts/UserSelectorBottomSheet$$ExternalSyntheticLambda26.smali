.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->$r8$lambda$zOcU9y4C0DOW2euf1Z5Rco_mUic(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

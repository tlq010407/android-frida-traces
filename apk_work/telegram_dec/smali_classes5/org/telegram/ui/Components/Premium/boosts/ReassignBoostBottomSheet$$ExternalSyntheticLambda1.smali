.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->$r8$lambda$7cpvv40vUA6PdKgxhwXexC8OBUQ(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;I)V

    return-void
.end method

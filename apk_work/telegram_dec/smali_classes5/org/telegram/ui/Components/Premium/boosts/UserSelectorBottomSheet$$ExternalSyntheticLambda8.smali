.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    iput p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IFF)Z
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda8;->f$1:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->$r8$lambda$ITcvWT8lL3QlYzl2CrKlh5boNpU(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;ILandroid/view/View;IFF)Z

    move-result p1

    return p1
.end method

.method public synthetic onLongClickRelease()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended$-CC;->$default$onLongClickRelease(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    return-void
.end method

.method public synthetic onMove(FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended$-CC;->$default$onMove(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;FF)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    iput p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput p4, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;->f$3:I

    return-void
.end method


# virtual methods
.method public synthetic hasDoubleTap(Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended$-CC;->$default$hasDoubleTap(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public synthetic onDoubleTap(Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended$-CC;->$default$onDoubleTap(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;Landroid/view/View;IFF)V

    return-void
.end method

.method public final onItemClick(Landroid/view/View;IFF)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$$ExternalSyntheticLambda7;->f$3:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->$r8$lambda$8kKdpjh_0OuQcaYsmX2ybR91oXc(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILandroid/view/View;IFF)V

    return-void
.end method

.class public final synthetic Lorg/telegram/ui/MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/MultiContactsSelectorBottomSheet;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/MultiContactsSelectorBottomSheet;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/MultiContactsSelectorBottomSheet;

    iput p2, p0, Lorg/telegram/ui/MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda3;->f$1:I

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
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/MultiContactsSelectorBottomSheet;

    iget v1, p0, Lorg/telegram/ui/MultiContactsSelectorBottomSheet$$ExternalSyntheticLambda3;->f$1:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/MultiContactsSelectorBottomSheet;->$r8$lambda$gYWblS8jqWdnmqMolqwSqbs6JBs(Lorg/telegram/ui/MultiContactsSelectorBottomSheet;ILandroid/view/View;IFF)V

    return-void
.end method

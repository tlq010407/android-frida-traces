.class public final synthetic Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback5Return;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/messenger/Utilities$Callback5Return;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iput-object p2, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/Utilities$Callback5Return;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IFF)Z
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/messenger/Utilities$Callback5Return;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/UniversalRecyclerView;->$r8$lambda$JUUl8vCG0K15oU0YYo2pTFhfxTg(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/messenger/Utilities$Callback5Return;Landroid/view/View;IFF)Z

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

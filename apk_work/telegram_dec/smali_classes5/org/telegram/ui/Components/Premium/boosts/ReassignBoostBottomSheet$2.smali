.class Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;JJ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 7

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    iget v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->cooldown_until_date:I

    if-lez v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->cooldown_until_date:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->cooldown_until_date:I

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$100(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v1, p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->updateTimer()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

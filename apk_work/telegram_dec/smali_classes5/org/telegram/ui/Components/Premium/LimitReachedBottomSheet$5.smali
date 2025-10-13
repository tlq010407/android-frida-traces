.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$5ASLZH3CR67pMiXZJ9FpgjrL4Rs(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->lambda$onCreateViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ouTp3yyATFXz9uo6tZLxgBZH_Y(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->lambda$onCreateViewHolder$1(Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_cQELXPIYF9TbmmhVFYx4vbrpKA(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->lambda$onCreateViewHolder$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hMUovRajoHBMXu38MlrIcnec0r4(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lrypCHst9roB44rSgbPGDaoGM_M(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->lambda$onCreateViewHolder$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$z092EITfr1rzRJvEZlCLqGwTbvI(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->lambda$onCreateViewHolder$5(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostPagerBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$1(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$2(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$3()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/StatisticActivity;->create(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$4(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$5(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->headerRow:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->dividerRow:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatsTitleRow:I

    if-ne v1, p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->loadingRow:I

    const/4 v2, 0x5

    if-ne v1, p1, :cond_3

    return v2

    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->emptyViewDividerRow:I

    if-ne v1, p1, :cond_4

    const/4 p1, 0x6

    return p1

    :cond_4
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v0

    if-ne v0, p1, :cond_5

    const/4 p1, 0x7

    return p1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->bottomRow:I

    if-ne v1, p1, :cond_6

    const/16 p1, 0x8

    return p1

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    if-lt p1, v0, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_7

    const/16 p1, 0x9

    return p1

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget p1, p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-eq p1, v2, :cond_9

    const/16 v0, 0xb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x22

    if-ne p1, v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_0
    const/4 p1, 0x4

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    const/16 v3, 0x9

    if-eq v0, v3, :cond_d

    const/4 v3, 0x3

    const/16 v4, 0x22

    const/16 v5, 0xb

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v6, 0x5

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v3, v6, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v4, v4, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    int-to-float p2, p2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    int-to-float v5, v5

    sub-float/2addr v5, v7

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v4, v3, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto/16 :goto_6

    :cond_2
    if-eq v3, v5, :cond_3

    if-ne v3, v4, :cond_10

    :cond_3
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_5

    new-instance v5, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;-><init>()V

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    invoke-virtual {p1, v5, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->overridePremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;Z)V

    if-eqz v3, :cond_6

    sget v3, Lorg/telegram/messenger/R$string;->InvitePremiumBlockedUser:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v3

    invoke-static {v3, v0, v4, v4}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z)Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-float p2, p2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatEndRow:I

    int-to-float v5, v5

    sub-float/2addr v5, v7

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v0, p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-eq v0, v5, :cond_a

    if-ne v0, v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 p2, 0x2

    if-ne v0, p2, :cond_9

    sget p2, Lorg/telegram/messenger/R$string;->YourPublicCommunities:I

    :goto_4
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    sget p2, Lorg/telegram/messenger/R$string;->LastActiveCommunities:I

    goto :goto_4

    :cond_a
    :goto_5
    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget p2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    goto :goto_4

    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v2, :cond_c

    sget p2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLinkRestricted2:I

    goto :goto_4

    :cond_c
    sget p2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLinkRestricted3:I

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeaturesStartRow:I

    sub-int/2addr p2, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    if-ltz p2, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_10

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;->set(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeature;)V

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chats:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->chatStartRow:I

    sub-int/2addr p2, v0

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->selectedChats:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v0, p2, :cond_f

    const/4 v1, 0x1

    :cond_f
    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChecked(ZZ)V

    :cond_10
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x1

    const/4 v9, 0x0

    packed-switch p2, :pswitch_data_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {v2, v4, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2502(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    move-result-object v1

    goto/16 :goto_6

    :pswitch_0
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$BoostFeatureCell;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    :pswitch_1
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v8, v4

    invoke-virtual {v5, v7, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Lorg/telegram/ui/Components/LoginOrView;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/LoginOrView;-><init>(Landroid/content/Context;)V

    new-instance v7, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v7, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget v8, Lorg/telegram/messenger/R$string;->BoostingStoriesByGiftingGroup2:I

    goto :goto_0

    :cond_0
    sget v8, Lorg/telegram/messenger/R$string;->BoostingStoriesByGiftingChannel2:I

    :goto_0
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    new-instance v10, Landroid/text/SpannableStringBuilder;

    sget v11, Lorg/telegram/messenger/R$string;->BoostingStoriesByGiftingLink:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$1;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v11, Landroid/text/SpannableString;

    const-string v12, ">"

    invoke-direct {v11, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v14, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v14}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    new-instance v15, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v6, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {v6, v14}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setSize(I)V

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setWidth(I)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateX(F)V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v11, v6, v9, v1, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v12, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v8, v2, v9

    const-string v6, " "

    const/4 v8, 0x1

    aput-object v6, v2, v8

    const/4 v6, 0x2

    aput-object v1, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v7, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v7, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    goto :goto_1

    :goto_2
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->boostMiniBtn:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x2c

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v14, 0x0

    const/4 v12, 0x4

    invoke-static/range {v8 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v13, 0x41000000    # 8.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->actionBtn:Landroid/widget/TextView;

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v13, 0x41000000    # 8.0f

    const/4 v8, -0x1

    const/16 v9, 0x30

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x30

    const/4 v10, 0x0

    const/high16 v11, -0x3f600000    # -5.0f

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v13, 0x41880000    # 17.0f

    const/4 v9, -0x2

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, -0x3f400000    # -6.0f

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v5

    goto/16 :goto_6

    :pswitch_2
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v6}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v7, v4

    invoke-virtual {v1, v6, v9, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v6, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    if-nez v6, :cond_3

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    new-instance v6, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    iput-object v6, v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    :cond_3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    const/high16 v2, 0x42480000    # 50.0f

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v3, v7, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x1

    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v15, 0x41300000    # 11.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/4 v12, 0x0

    const/high16 v13, 0x41300000    # 11.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    const/16 v8, 0x4c

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-static {v2, v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->statisticClickRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stats:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-static {v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v3, v7, v10, v5}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v5, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v3, v9, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v10, 0x41700000    # 15.0f

    const/4 v11, 0x0

    const/16 v5, 0x28

    const/high16 v6, 0x42200000    # 40.0f

    const/16 v7, 0x15

    const/high16 v8, 0x41700000    # 15.0f

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2400(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_6

    :pswitch_3
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$3;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$3;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;Landroid/content/Context;)V

    goto/16 :goto_6

    :pswitch_4
    new-instance v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget v2, v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/16 v2, 0x16

    goto :goto_5

    :cond_6
    const/16 v2, 0x15

    :goto_5
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    goto :goto_6

    :pswitch_5
    new-instance v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$3000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v3

    invoke-virtual {v1, v2, v9, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6

    :pswitch_6
    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v9, v9, v9, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6

    :pswitch_7
    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$2700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/16 v4, 0xc

    invoke-direct {v1, v3, v4, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto :goto_6

    :pswitch_8
    new-instance v1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5$2;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$5;)V

    const/16 v4, 0x9

    const/4 v5, 0x1

    invoke-direct {v1, v3, v2, v5, v4}, Lorg/telegram/ui/Cells/AdminedChannelCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;ZI)V

    :goto_6
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

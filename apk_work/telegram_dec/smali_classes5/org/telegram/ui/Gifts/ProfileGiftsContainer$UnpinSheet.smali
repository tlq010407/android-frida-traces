.class public Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnpinSheet"
.end annotation


# instance fields
.field selectedGift:J


# direct methods
.method public static synthetic $r8$lambda$6pIFgVTl_FsF9f0TO8OvnwRE7lc(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/messenger/Utilities$Callback0Return;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->lambda$new$2(Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/messenger/Utilities$Callback0Return;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H2kIg_bpVwz0vNtLLQ9jICs4F9g(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->lambda$new$0(Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LhIG8GHn3VvY_40ORQaJjKX6EAs(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->lambda$new$1(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback0Return;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p5

    const/4 v10, 0x0

    invoke-direct {v9, v2, v10, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->selectedGift:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3, v1, v0, v8}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Gift2UnpinAlertTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v16, 0x41b00000    # 22.0f

    const/16 v17, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/high16 v14, 0x41b00000    # 22.0f

    const/high16 v15, 0x41400000    # 12.0f

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v2, v1, v0, v10, v8}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Gift2UnpinAlertSubtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v17, 0x41200000    # 10.0f

    const v15, 0x408a8f5c    # 4.33f

    invoke-static/range {v12 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v12, v2, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget v0, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    move-wide/from16 v3, p2

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stars/StarsController;->getProfileGiftsList(J)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$1;

    iget v3, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda0;

    invoke-direct {v5, v9, v13}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;Lorg/telegram/ui/Stars/StarsController$GiftsList;)V

    new-instance v6, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda1;

    invoke-direct {v6, v9, v12}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$1;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x3

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSpanCount(I)V

    const/4 v0, 0x2

    invoke-virtual {v14, v0}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {v14, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setScrollEnabled(Z)V

    const/high16 v5, 0x41300000    # 11.0f

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x41300000    # 11.0f

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lorg/telegram/messenger/R$string;->Gift2UnpinAlertButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v6, 0x41100000    # 9.0f

    const/16 v2, 0x30

    const/high16 v3, 0x41b00000    # 22.0f

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda2;

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-direct {v0, v9, v13, v1, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/messenger/Utilities$Callback0Return;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-boolean v0, p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v0, :cond_0

    invoke-static {p3}, Lorg/telegram/ui/PeerColorActivity$GiftCell$Factory;->asGiftCell(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->selectedGift:J

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v3, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    const/4 p3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 4

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide p4, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->selectedGift:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, p4

    if-nez p2, :cond_0

    iput-wide v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->selectedGift:J

    goto :goto_0

    :cond_0
    iput-wide p4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->selectedGift:J

    :goto_0
    iget-wide p4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->selectedGift:J

    const/4 p2, 0x0

    const/4 p6, 0x1

    cmp-long v0, p4, v2

    if-eqz v0, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p1, p4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_4

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    instance-of p5, p4, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    if-eqz p5, :cond_3

    check-cast p4, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    iget-wide v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->selectedGift:J

    invoke-virtual {p4}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->getGiftId()J

    move-result-wide v2

    cmp-long p5, v0, v2

    if-nez p5, :cond_2

    const/4 p5, 0x1

    goto :goto_3

    :cond_2
    const/4 p5, 0x0

    :goto_3
    invoke-virtual {p4, p5, p6}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->setSelected(ZZ)V

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Stars/StarsController$GiftsList;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/messenger/Utilities$Callback0Return;Landroid/view/View;)V
    .locals 8

    const/4 p4, 0x1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getPinned()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;->selectedGift:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    goto :goto_1

    :cond_0
    add-int/2addr v2, p4

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    return-void

    :cond_2
    iput-boolean v1, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    invoke-virtual {v0, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean p4, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->setPinned(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-interface {p3}, Lorg/telegram/messenger/Utilities$Callback0Return;->run()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/BulletinFactory;

    sget p3, Lorg/telegram/messenger/R$raw;->ic_pin:I

    sget v0, Lorg/telegram/messenger/R$string;->Gift2ReplacedPinTitle:I

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/String;

    move-result-object p2

    new-array v2, p4, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->Gift2ReplacedPinSubtitle:I

    iget-object v2, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/String;

    move-result-object v2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object v2, p4, v1

    invoke-static {v0, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

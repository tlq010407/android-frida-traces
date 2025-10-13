.class public Lorg/telegram/ui/Gifts/ResaleGiftsFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$BackdropItem;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem;
    }
.end annotation


# instance fields
.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

.field private clearFiltersButton:Landroid/widget/TextView;

.field private clearFiltersContainer:Landroid/widget/FrameLayout;

.field private clearFiltersShown:Z

.field private closeParentSheet:Ljava/lang/Runnable;

.field private final dialogId:J

.field private emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

.field private emptyViewVisible:Z

.field private filterScrollView:Landroid/widget/HorizontalScrollView;

.field private filtersContainer:Landroid/widget/LinearLayout;

.field private filtersDivider:Landroid/view/View;

.field private filtersShown:Z

.field private fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private final gift_id:J

.field private final gift_name:Ljava/lang/String;

.field private final list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

.field private patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

.field private sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;


# direct methods
.method public static synthetic $r8$lambda$2KroS5QN3_EI-eHZCAyZLr5S1Fc(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$onItemClick$25(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3_xLsrOjw67NynuDieOR6tcjwME(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$10(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Zi9ngL4fhfqIf8r5ElubsnPOwI(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$64KUQyjRKuTTwe8ny7IhUONQeEE(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$21([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7_WCti1rYHdHm5iQgJb4IJFxEoU(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$18(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C-Pj9pM4KZGkLyr4a13A1AUYnc8(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$24(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D9-3_wbZHqkNCsXvE1ZB-9VZJVY(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$13(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E5vJxcqc1S9MxiU51r3eV8WkA6k(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$16(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IKB7IA0LJFnWuDKD4FgZSQtCIvc(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kk6npxk13dBXcC2jzU6tWirSylE(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->updateList(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$QgWOGFwJuCAh1MVcWTPlJPNv7EU(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$12(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S_jmDwHi0lP48FUIU-J6snoWbvU(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->onItemLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UMCTjkNgjg5HThSSqTKHQKd6jAU(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$VTN39rPB0DIOC6TJ-9HNIAPTncA(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$14(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$X2o-u8moMRLs7z4GTPEJMkPItY0(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$bVcZ9tH3YeYwTUzMPOQSAR29zYA(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$chEyqzblQIITE3ohnWahgpJ7zUk(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$0(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$clUb5tNpm6wkQGZsZpnC3uhiuuY(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$22(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$di17oDIEJyJAD1RZzhu8RfIPVws(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$eBTABsamazCM77kBksuXzEC9Qc0(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$20(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hWrRN8OFZDOykljSw-98NTImFoQ(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$8(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jJ0WQWOrcOGUFg3NoK16utP0fkY(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$7(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jYNQUN02XTXzP-XrUHEaiLSXrpg(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$kSdoOnTtTADXDO8qwaGz-nJfd6I(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$lpB95Wkl3iUfZjOTvXM5lXKkzfk(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$19(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nuumAScHCNSXBtsuU7D51ojtDJ4(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sSyVdKGEktjo5zRjzao_va-s_nI(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$9([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tSJXCPg9IB3ZzHxLQxIoQiSXtSM(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$vdczWxKte0lMz9OmwhMDeXu30Pg(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$15([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhVtdWZ8Gdi-dx71qZfMVdOmtu8(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$11()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersShown:Z

    iput-wide p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->dialogId:J

    iput-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->gift_name:Ljava/lang/String;

    iput-wide p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->gift_id:J

    iput-object p6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-direct {p1, p2, p4, p5, p3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;-><init>(IJLorg/telegram/messenger/Utilities$Callback;)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->load()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Landroid/widget/HorizontalScrollView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->isLoadingVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    return-object p0
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 7

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p2, p2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->access$1100(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->access$1200(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    const/4 p2, -0x1

    const/16 v1, 0x22

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x2

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x3

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->access$1100(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->updateEmptyView(Z)V

    return-void
.end method

.method private isLoadingVisible()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V
    .locals 3

    iget-wide p1, p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_2

    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/util/HashSet;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object p5, p5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide p5, p5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v0, p5, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$11()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method private synthetic lambda$createView$12(Landroid/content/Context;Landroid/view/View;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v0, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v1, -0x3f000000    # -8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->needsFocus()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v10

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v13, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$5;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v3, v6, v11, v12}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v4, v6, v10}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v5, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$5;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iget-object v0, v13, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v14, 0x18

    const/high16 v15, 0x41c00000    # 24.0f

    const/16 v16, 0x13

    const/high16 v17, 0x41200000    # 10.0f

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v2, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v9, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const v2, 0x8c001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v3, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSearch:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v3, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v19, 0x41000000    # 8.0f

    const/4 v14, -0x1

    const/high16 v15, -0x40000000    # -2.0f

    const/high16 v17, 0x422c0000    # 43.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$6;

    invoke-direct {v2, v6, v11, v13}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$6;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    const/4 v1, -0x1

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v1, Lorg/telegram/messenger/R$string;->SelectAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v10, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_3
    invoke-virtual {v10, v13}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private static synthetic lambda$createView$13(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$14(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method private synthetic lambda$createView$15([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 8

    const/4 p4, 0x0

    aget-object p1, p1, p4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    iget v4, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v5, v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    iget v6, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    invoke-static {v2, v5, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$BackdropItem$Factory;->asBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;ILjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v1, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersBackdropEmpty:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;->asEmptyView(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private synthetic lambda$createView$16(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget p4, p4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    if-eq p4, p2, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p5, p5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$17()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/content/Context;Landroid/view/View;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v0, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v1, -0x3f000000    # -8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->needsFocus()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v10

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v13, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$7;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v3, v6, v11, v12}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v4, v6, v10}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v5, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$7;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iget-object v0, v13, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v14, 0x18

    const/high16 v15, 0x41c00000    # 24.0f

    const/16 v16, 0x13

    const/high16 v17, 0x41200000    # 10.0f

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v2, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v9, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const v2, 0x8c001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v3, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSearch:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v3, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v19, 0x41000000    # 8.0f

    const/4 v14, -0x1

    const/high16 v15, -0x40000000    # -2.0f

    const/high16 v17, 0x422c0000    # 43.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$8;

    invoke-direct {v2, v6, v11, v13}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$8;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    const/4 v1, -0x1

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v1, Lorg/telegram/messenger/R$string;->SelectAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v10, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_3
    invoke-virtual {v10, v13}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private static synthetic lambda$createView$19(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method private synthetic lambda$createView$20(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method private synthetic lambda$createView$21([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 8

    const/4 p4, 0x0

    aget-object p1, p1, p4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v5, v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    iget-object v6, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    invoke-static {v2, v5, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem$Factory;->asPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;ILjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v1, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSymbolEmpty:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;->asEmptyView(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private synthetic lambda$createView$22(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_2

    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/util/HashSet;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object p5, p5, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide p5, p5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v0, p5, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$23()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method private synthetic lambda$createView$24(Landroid/content/Context;Landroid/view/View;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v0, v8, v9}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v1, -0x3f000000    # -8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->needsFocus()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v10

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v13, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$9;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v3, v6, v11, v12}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v4, v6, v10}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v5, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$9;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iget-object v0, v13, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v14, 0x18

    const/high16 v15, 0x41c00000    # 24.0f

    const/16 v16, 0x13

    const/high16 v17, 0x41200000    # 10.0f

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v2, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v9, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const v2, 0x8c001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v3, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    sget v2, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSearch:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v3, v6, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v19, 0x41000000    # 8.0f

    const/4 v14, -0x1

    const/high16 v15, -0x40000000    # -2.0f

    const/high16 v17, 0x422c0000    # 43.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$10;

    invoke-direct {v2, v6, v11, v13}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$10;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    const/4 v1, -0x1

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v1, Lorg/telegram/messenger/R$string;->SelectAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v10, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_3
    invoke-virtual {v10, v13}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$createView$3()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    return-void
.end method

.method private synthetic lambda$createView$5()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_sort_value:I

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    iget v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->buttonStringResId:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_sort_date:I

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    iget v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->buttonStringResId:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_sort_number:I

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    iget v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->buttonStringResId:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/high16 v0, -0x3f000000    # -8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private static synthetic lambda$createView$7(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method private synthetic lambda$createView$9([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 8

    const/4 p4, 0x0

    aget-object p1, p1, p4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v5, v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    iget-object v6, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    invoke-static {v2, v5, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem$Factory;->asModel(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;ILjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v1, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersModelEmpty:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;->asEmptyView(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private synthetic lambda$onItemClick$25(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->updateList(Z)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->BoughtResoldGiftTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BoughtResoldGiftText:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v6, p1

    const/16 p1, 0x2c

    invoke-static {v6, v7, p1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, v2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToText:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object p2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v2, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    goto :goto_4

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v6, v1, v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    if-ltz v6, :cond_2

    const-string v3, "user_id"

    :goto_2
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :cond_2
    neg-long v1, v1

    const-string v3, "chat_id"

    goto :goto_2

    :goto_3
    new-instance v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V

    invoke-virtual {p0, v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->closeParentSheet:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_4
    return-void
.end method

.method private onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 6

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    new-instance p2, Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p3, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p2, p3, p1, p4}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    new-instance p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda29;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->setOnBoughtGift(Lorg/telegram/messenger/Utilities$Callback2;)Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private onItemLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private setClearFiltersShown(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersShown:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersShown:Z

    const/high16 v0, 0x42440000    # 49.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v1, p1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1a4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v1, p1

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    return-void
.end method

.method private setFiltersShown(ZZ)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    const/high16 v0, 0x421c0000    # 39.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42340000    # 45.0f

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v5, 0x1a4

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$11;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$11;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Z)V

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float v4, p1

    :goto_3
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_9

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    :goto_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :goto_7
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float v4, p1

    :goto_8
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    :goto_9
    return-void
.end method

.method private updateEmptyView(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyViewVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyViewVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v2, 0x3f733333    # 0.95f

    if-eqz p1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const v3, 0x3f733333    # 0.95f

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const v1, 0x3f733333    # 0.95f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$12;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateList(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getTotalCount()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setFiltersShown(ZZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->gift_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getTotalCount()I

    move-result v0

    if-gtz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->Gift2ResaleNoCount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getTotalCount()I

    move-result v0

    const-string v3, "Gift2ResaleCount"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getSorting()Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-lez p1, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    const-string v3, "Gift2ResaleFilterModels"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    :goto_1
    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFilterModel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-lez p1, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_8

    goto :goto_3

    :cond_8
    const-string v3, "Gift2ResaleFilterBackdrops"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    :goto_3
    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFilterBackdrop:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-lez p1, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_b

    goto :goto_5

    :cond_b
    const-string v3, "Gift2ResaleFilterSymbols"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    :goto_5
    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFilterSymbol:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->isLoadingVisible()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->load()V

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->access$1100(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getTotalCount()I

    move-result p1

    if-lez p1, :cond_11

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    :cond_10
    const/4 v1, 0x1

    :cond_11
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setClearFiltersShown(ZZ)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$1;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->gift_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$2;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;)V

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const v6, 0x3d23d70a    # 0.04f

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v4, p1, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;-><init>(Landroid/content/Context;I)V

    invoke-static {v4}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v12, 0x40800000    # 4.0f

    const/4 v13, 0x0

    const/4 v7, -0x2

    const/high16 v8, -0x40000000    # -2.0f

    const/16 v9, 0x55

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$3;

    new-instance v11, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v11, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    new-instance v12, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v12, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    new-instance v13, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v13, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    move-object v8, v4

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$3;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSpanCount(I)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/high16 v6, 0x42340000    # 45.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x42ca0000    # 101.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v2, v6, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const v11, 0x40ea8f5c    # 7.33f

    const/high16 v12, -0x3dcc0000    # -45.0f

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/16 v8, 0x77

    const v9, 0x40ea8f5c    # 7.33f

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    new-instance v6, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, p1, v6, v7}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    iput-boolean v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyViewVisible:Z

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    const v7, 0x3f733333    # 0.95f

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleY(F)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    const/4 v12, 0x0

    const/high16 v13, -0x3dcc0000    # -45.0f

    const/4 v7, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/16 v9, 0x77

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v8, v2, v7, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/HorizontalScrollView;

    invoke-direct {v4, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v7, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v4, -0x1

    const/16 v7, 0x2f

    const/16 v8, 0x37

    invoke-static {v4, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v9, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v6, v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersContainer:Landroid/widget/FrameLayout;

    const/16 v9, 0x31

    const/16 v10, 0x57

    invoke-static {v4, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v9, "x"

    invoke-direct {v3, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_clearcache:I

    invoke-direct {v9, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v3, v9, v2, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    sget v9, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersClear:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    const v10, 0x3dcccccd    # 0.1f

    invoke-static {v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    invoke-static {v2, v9, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    const/16 v5, 0x77

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersContainer:Landroid/widget/FrameLayout;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v5

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setClearFiltersShown(ZZ)V

    new-instance v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getSorting()Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2AttributeModel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2AttributeBackdrop:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2AttributeSymbol:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v12, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setFiltersShown(ZZ)V

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    :cond_1
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setCloseParentSheet(Ljava/lang/Runnable;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->closeParentSheet:Ljava/lang/Runnable;

    return-object p0
.end method

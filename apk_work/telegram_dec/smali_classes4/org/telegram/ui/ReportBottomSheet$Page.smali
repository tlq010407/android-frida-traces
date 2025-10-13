.class Lorg/telegram/ui/ReportBottomSheet$Page;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ReportBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;
    }
.end annotation


# instance fields
.field private button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private buttonContainer:Landroid/widget/FrameLayout;

.field commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

.field private final contentView:Landroid/widget/FrameLayout;

.field private editTextCell:Lorg/telegram/ui/Cells/EditTextCell;

.field private final headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

.field private final listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

.field pageType:I

.field sponsoredOption:Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

.field final synthetic this$0:Lorg/telegram/ui/ReportBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$7mROTspJvqrm2dBaefNonw6LTe8(Lorg/telegram/ui/ReportBottomSheet$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->lambda$fillItems$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QIYaUB6i_HyTH4e-0Peytz9AFbw(Lorg/telegram/ui/ReportBottomSheet$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ReportBottomSheet$Page;->lambda$setOption$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$pszu209uT4HF5SpFHg-DW_yNNdA(Lorg/telegram/ui/ReportBottomSheet$Page;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ReportBottomSheet$Page;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$w63gTOaQX36HAKb_0mQnuxfdb-c(Lorg/telegram/ui/ReportBottomSheet$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ReportBottomSheet$Page;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ReportBottomSheet;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    iput-object v1, v0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/ReportBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v2, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v2, 0x77

    const/4 v14, -0x1

    invoke-static {v14, v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReportBottomSheet;->access$800(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;-><init>(Lorg/telegram/ui/ReportBottomSheet$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    new-instance v4, Lorg/telegram/ui/ReportBottomSheet$Page$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ReportBottomSheet$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ReportBottomSheet$Page;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->setOnBackClickListener(Ljava/lang/Runnable;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReportBottomSheet;->access$900(Lorg/telegram/ui/ReportBottomSheet;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/messenger/R$string;->ReportAd:I

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReportBottomSheet;->access$1000(Lorg/telegram/ui/ReportBottomSheet;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lorg/telegram/messenger/R$string;->ReportStory:I

    goto :goto_0

    :cond_1
    sget v4, Lorg/telegram/messenger/R$string;->Report2:I

    goto :goto_0

    :goto_1
    iget-object v4, v2, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReportBottomSheet;->access$1100(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReportBottomSheet;->access$1200(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v4, -0x2

    const/16 v5, 0x37

    invoke-static {v14, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReportBottomSheet;->access$1300(Lorg/telegram/ui/ReportBottomSheet;)I

    move-result v4

    new-instance v7, Lorg/telegram/ui/ReportBottomSheet$Page$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/ReportBottomSheet$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ReportBottomSheet$Page;)V

    new-instance v8, Lorg/telegram/ui/ReportBottomSheet$Page$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/ReportBottomSheet$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ReportBottomSheet$Page;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReportBottomSheet;->access$1400(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v2, v15

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v15, v0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v2, v15, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$Page$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ReportBottomSheet$Page$1;-><init>(Lorg/telegram/ui/ReportBottomSheet$Page;Lorg/telegram/ui/ReportBottomSheet;)V

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v14, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v15, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Cells/EditTextCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->editTextCell:Lorg/telegram/ui/Cells/EditTextCell;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ReportBottomSheet$Page;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method private synthetic lambda$fillItems$2(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->option:[B

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->editTextCell:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/ReportBottomSheet;->access$3200(Lorg/telegram/ui/ReportBottomSheet;Ljava/lang/CharSequence;[BLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->pageType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ReportBottomSheet;->onBackPressed()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setOption$1()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->editTextCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    iget p2, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 p3, 0x1e

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->sponsoredOption:Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;->options:Ljava/util/ArrayList;

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessageReportOption;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessageReportOption;->text:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessageReportOption;->option:[B

    invoke-static {p2, p4, p1, p3}, Lorg/telegram/ui/ReportBottomSheet;->access$3200(Lorg/telegram/ui/ReportBottomSheet;Ljava/lang/CharSequence;[BLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;->options:Ljava/util/ArrayList;

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageReportOption;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_messageReportOption;->text:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageReportOption;->option:[B

    invoke-static {p2, p4, p1, p3}, Lorg/telegram/ui/ReportBottomSheet;->access$3200(Lorg/telegram/ui/ReportBottomSheet;Ljava/lang/CharSequence;[BLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    if-eqz p2, :cond_2

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->option:[B

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {p2, p3, p1, p3}, Lorg/telegram/ui/ReportBottomSheet;->access$3200(Lorg/telegram/ui/ReportBottomSheet;Ljava/lang/CharSequence;[BLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {p2, p1, p3, p3}, Lorg/telegram/ui/ReportBottomSheet;->access$3200(Lorg/telegram/ui/ReportBottomSheet;Ljava/lang/CharSequence;[BLjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public atTop()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bind(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->pageType:I

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->setCloseImageVisible(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 13

    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-gtz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/telegram/ui/Components/UItem;->transparent:Z

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    int-to-float v1, p2

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->sponsoredOption:Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    if-nez v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    if-eqz v3, :cond_12

    :cond_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    if-eqz v2, :cond_5

    :cond_2
    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/ReportBottomSheet;->access$1700(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v6, 0x15

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->sponsoredOption:Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;->title:Ljava/lang/String;

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v3, v4}, Lorg/telegram/ui/ReportBottomSheet;->access$1800(Lorg/telegram/ui/ReportBottomSheet;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x28

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->sponsoredOption:Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    const/4 v3, -0x3

    const/16 v4, 0x1e

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->sponsoredOption:Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;->options:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_11

    new-instance v5, Lorg/telegram/ui/Components/UItem;

    invoke-direct {v5, v4, p2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iget-object v6, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->sponsoredOption:Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;->options:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessageReportOption;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_sponsoredMessageReportOption;->text:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    iput v6, v5, Lorg/telegram/ui/Components/UItem;->iconResId:I

    iput v2, v5, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x32

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;->options:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_11

    new-instance v5, Lorg/telegram/ui/Components/UItem;

    invoke-direct {v5, v4, p2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    iget-object v6, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;->options:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageReportOption;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageReportOption;->text:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    iput v6, v5, Lorg/telegram/ui/Components/UItem;->iconResId:I

    iput v2, v5, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x32

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->editTextCell:Lorg/telegram/ui/Cells/EditTextCell;

    if-nez v2, :cond_8

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$Page$2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ReportBottomSheet;->access$1900(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v9, 0x0

    const/16 v10, 0x400

    const-string v7, ""

    const/4 v8, 0x1

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ReportBottomSheet$Page$2;-><init>(Lorg/telegram/ui/ReportBottomSheet$Page;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->editTextCell:Lorg/telegram/ui/Cells/EditTextCell;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/EditTextCell;->setShowLimitWhenNear(I)V

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->editTextCell:Lorg/telegram/ui/Cells/EditTextCell;

    iget-object v2, v2, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->optional:Z

    if-eqz v4, :cond_9

    sget v4, Lorg/telegram/messenger/R$string;->Report2CommentOptional:I

    goto :goto_4

    :cond_9
    sget v4, Lorg/telegram/messenger/R$string;->Report2Comment:I

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->editTextCell:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    iput v3, v2, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ReportBottomSheet;->access$2100(Lorg/telegram/ui/ReportBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ReportBottomSheet;->access$2100(Lorg/telegram/ui/ReportBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ReportBottomSheet;->access$2100(Lorg/telegram/ui/ReportBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_a

    sget v2, Lorg/telegram/messenger/R$string;->Report2CommentInfoMany:I

    goto :goto_5

    :cond_a
    sget v2, Lorg/telegram/messenger/R$string;->Report2CommentInfo:I

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ReportBottomSheet;->access$2200(Lorg/telegram/ui/ReportBottomSheet;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    if-eqz v2, :cond_c

    sget v2, Lorg/telegram/messenger/R$string;->Report2CommentInfoUser:I

    goto :goto_5

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ReportBottomSheet;->access$2300(Lorg/telegram/ui/ReportBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ReportBottomSheet;->access$2200(Lorg/telegram/ui/ReportBottomSheet;)J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lorg/telegram/messenger/R$string;->Report2CommentInfoChannel:I

    goto :goto_5

    :cond_d
    sget v2, Lorg/telegram/messenger/R$string;->Report2CommentInfoGroup:I

    goto :goto_5

    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->buttonContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_e

    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ReportBottomSheet;->access$2400(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v4, Lorg/telegram/messenger/R$string;->Report2Send:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->buttonContainer:Landroid/widget/FrameLayout;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v5, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ReportBottomSheet;->access$2500(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v5, -0x1

    const/high16 v6, 0x42400000    # 48.0f

    const/16 v7, 0x77

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    iget-object v5, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ReportBottomSheet;->access$2600(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->buttonContainer:Landroid/widget/FrameLayout;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v7, 0x30

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->optional:Z

    if-nez v4, :cond_10

    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->editTextCell:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v4, Lorg/telegram/ui/ReportBottomSheet$Page$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ReportBottomSheet$Page$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ReportBottomSheet$Page;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    const/4 v4, -0x4

    iput v4, v2, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x70

    :cond_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/UItem;

    iput-boolean v0, v2, Lorg/telegram/ui/Components/UItem;->hideDivider:Z

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ReportBottomSheet;->access$900(Lorg/telegram/ui/ReportBottomSheet;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->pageType:I

    if-nez v2, :cond_12

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v7, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/ReportBottomSheet;->access$2700(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    iget-object v6, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v6, v7}, Lorg/telegram/ui/ReportBottomSheet;->access$2800(Lorg/telegram/ui/ReportBottomSheet;I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v6, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v6, v5, v4, p2, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v5, Lorg/telegram/messenger/R$string;->ReportAdLearnMore:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/ReportBottomSheet;->access$2900(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceLinks(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v6, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/ReportBottomSheet;->access$3000(Lorg/telegram/ui/ReportBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v12, 0x41800000    # 16.0f

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    const/16 v8, 0x11

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    iput v3, v2, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2e

    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ReportBottomSheet;->access$3100(Lorg/telegram/ui/ReportBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v2, v3

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-ge v2, v1, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    goto :goto_9

    :cond_13
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    :cond_14
    :goto_9
    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    invoke-virtual {p1}, Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;->getText()Ljava/lang/CharSequence;

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method public setOption(Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;)V
    .locals 1

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->sponsoredOption:Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method public setOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->sponsoredOption:Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    iput-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->editTextCell:Lorg/telegram/ui/Cells/EditTextCell;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/ui/ReportBottomSheet$Page$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ReportBottomSheet$Page$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ReportBottomSheet$Page;)V

    const-wide/16 v0, 0x78

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setOption(Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->sponsoredOption:Lorg/telegram/tgnet/TLRPC$TL_channels_sponsoredMessageReportResultChooseOption;

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->option:Lorg/telegram/tgnet/TLRPC$TL_reportResultChooseOption;

    iput-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->commentOption:Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;

    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method public top()F
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v3, v3, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, v3, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public updateTops()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v3, v3, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$Page;->headerView:Lorg/telegram/ui/ReportBottomSheet$Page$BigHeaderCell;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

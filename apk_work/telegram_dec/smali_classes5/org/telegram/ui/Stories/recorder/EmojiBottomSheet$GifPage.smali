.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;
.super Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifPage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifLayoutManager;
    }
.end annotation


# instance fields
.field public adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;

.field private final gifs:Ljava/util/ArrayList;

.field public layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field public listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final mygifs:Ljava/util/ArrayList;

.field private previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field public searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$EiHEoX8l_a81pGOAKZ1jhx9fVt0(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FpKaNwoOC6eDY0rsIFvimC0Ak4o(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->lambda$new$2(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nj4GDYcriiy1oNY2WmBG8t5xPaE(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->lambda$new$1(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V
    .locals 9

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$4;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->mygifs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->gifs:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$1;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifLayoutManager;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifLayoutManager;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v7, 0x0

    const/high16 v8, 0x42200000    # 40.0f

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x77

    const/4 v5, 0x0

    const/high16 v6, 0x42680000    # 58.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->setOnSearchQuery(Lorg/telegram/messenger/Utilities$Callback2;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->checkCategoriesView(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/4 p2, -0x2

    const/16 v0, 0x30

    const/4 v1, -0x1

    invoke-static {v1, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->mygifs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->gifs:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback3Return;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback3Return;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, p2, v1}, Lorg/telegram/messenger/Utilities$Callback3Return;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->previewDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1002(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3102(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;->updateItems(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bind(I)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;->access$900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->gifs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;->access$500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;->updateItems(Ljava/lang/String;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;->access$900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage$GifAdapter;Z)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public top()F
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateTops()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->top()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

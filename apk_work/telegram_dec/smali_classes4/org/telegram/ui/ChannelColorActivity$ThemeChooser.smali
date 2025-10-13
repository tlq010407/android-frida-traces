.class public Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeChooser"
.end annotation


# instance fields
.field private final adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

.field private final currentAccount:I

.field private currentEmoticon:Ljava/lang/String;

.field private dataLoaded:Z

.field private fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field public final items:Ljava/util/List;

.field private final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final loadingThemes:Ljava/util/HashMap;

.field private final loadingWallpapers:Ljava/util/HashMap;

.field private onEmoticonSelected:Lorg/telegram/messenger/Utilities$Callback;

.field private progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private withRemovedStub:Z


# direct methods
.method public static synthetic $r8$lambda$0VtWTD9gL0ILtaWkcwmJ8B33SVk(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;ZLandroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->lambda$new$1(ZLandroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1I8C7W5snQa2CJlZuOOFn1UcJR8(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->lambda$parseTheme$4(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7HvZqeaH-o3noElDqTUdJv6LH2g(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->lambda$parseTheme$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OB8VqyI5K6Dw4KJIF2JM4ZgzFGA(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->lambda$setGalleryWallpaper$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m9Rjn50LqhUkv05O3BvHzJ_a57A(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->lambda$updateColors$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->loadingThemes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->loadingWallpapers:Ljava/util/HashMap;

    iput p3, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->currentAccount:I

    iput-object p4, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v2, -0x1

    const/high16 v3, 0x42d00000    # 104.0f

    const v4, 0x800003

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$1;

    invoke-direct {v1, p0, p1, p4}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$1;-><init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x40c00000    # 6.0f

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    if-eqz p2, :cond_2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$2;-><init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_2
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    new-instance p1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$3;

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$3;-><init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p2, :cond_3

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_2

    :cond_3
    const/high16 p1, 0x43020000    # 130.0f

    :goto_2
    const/4 p4, -0x1

    invoke-static {p4, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Z)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    invoke-static {p3}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperThumbs(Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperThumbs(Z)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperImages(Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperImages(Z)V

    new-instance p4, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;

    invoke-direct {p4, p0, p3}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$4;-><init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;I)V

    invoke-virtual {p1, p4, p2}, Lorg/telegram/messenger/ChatThemeController;->requestAllChatThemes(Lorg/telegram/tgnet/ResultCallback;Z)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->updateState(Z)V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->parseTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;)Lorg/telegram/tgnet/TLRPC$WallPaper;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->onDataLoaded(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$new$1(ZLandroid/view/View;I)V
    .locals 5

    if-ltz p3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-nez p1, :cond_2

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->getEmoticon()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->setSelectedEmoticon(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/high16 v3, 0x42400000    # 48.0f

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr v0, p2

    neg-int p2, v0

    invoke-virtual {p1, p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p2, v1

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->onEmoticonSelected:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->getEmoticon()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$parseTheme$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->loadingThemes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->loadingThemes:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p2, v0, p1, v1, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->badWallpaper:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$parseTheme$4(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setGalleryWallpaper$0(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v0, p1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsRemovedStub:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->setFallbackWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateColors$2(Landroid/view/View;)V
    .locals 2

    check-cast p1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->setBackgroundColor(I)V

    return-void
.end method

.method private onDataLoaded(Ljava/util/List;)V
    .locals 7

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->dataLoaded:Z

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->withRemovedStub:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    new-instance v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget v4, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createChatThemesRemoved(I)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/EmojiThemes;

    new-instance v5, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    iget v6, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->currentAccount:I

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadPreviewColors(I)V

    iput v1, v5, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->currentEmoticon:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->getEmoticon()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->currentEmoticon:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v4, v4, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->isSelected:Z

    if-eqz v4, :cond_6

    move p1, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->updateState(Z)V

    if-ltz p1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/high16 v2, 0x42a60000    # 83.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_9
    :goto_5
    return-void
.end method

.method private parseTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_0

    iget-object v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_d

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    :try_start_1
    sget-object v7, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->bytes:[B

    invoke-virtual {v5, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_17

    move v11, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v7, :cond_15

    sget-object v12, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->bytes:[B

    aget-byte v13, v12, v9

    const/16 v14, 0xa

    if-ne v13, v14, :cond_14

    sub-int v13, v9, v10

    add-int/lit8 v14, v13, 0x1

    new-instance v15, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v15, v12, v10, v13, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v8, "WLS="

    invoke-virtual {v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x4

    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string v13, "slug"

    invoke-virtual {v12, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->slug:Ljava/lang/String;

    new-instance v13, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".wp"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    const-string v3, "mode"

    invoke-virtual {v12, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v8, v3

    if-lez v8, :cond_3

    const/4 v8, 0x0

    :goto_2
    array-length v13, v3

    if-ge v8, v13, :cond_3

    const-string v13, "blur"

    aget-object v15, v3, v8

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iput-boolean v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isBlured:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_9

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const-string v3, "pattern"

    invoke-virtual {v12, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_9

    :try_start_2
    const-string v3, "bg_color"

    invoke-virtual {v12, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x6

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v13, 0x10

    invoke-static {v15, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    const/high16 v16, -0x1000000

    or-int v15, v15, v16

    iput v15, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgColor:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v4, 0xd

    if-lt v15, v4, :cond_4

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x7

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    or-int v8, v8, v16

    iput v8, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor1:I

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v15, 0x14

    if-lt v8, v15, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    or-int v4, v4, v16

    iput v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor2:I

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v8, 0x1b

    if-ne v4, v8, :cond_6

    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->isValidWallChar(C)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    or-int v3, v3, v16

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientColor3:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_6
    :try_start_3
    const-string v3, "rotation"

    invoke-virtual {v12, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternBgGradientRotation:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_7
    :try_start_4
    const-string v3, "intensity"

    invoke-virtual {v12, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I

    :cond_8
    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I

    if-nez v3, :cond_9

    const/16 v3, 0x32

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->patternIntensity:I

    :cond_9
    const/4 v4, -0x1

    goto/16 :goto_5

    :cond_a
    const-string v3, "WPS"

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/2addr v14, v11

    iput v14, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewWallpaperOffset:I

    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_b
    const/16 v3, 0x3d

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_13

    const/4 v8, 0x0

    invoke-virtual {v15, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/ThemeColors;->stringKeyToInt(Ljava/lang/String;)I

    move-result v8

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    if-eq v8, v12, :cond_c

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    if-eq v8, v12, :cond_c

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    if-eq v8, v12, :cond_c

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    if-eq v8, v12, :cond_c

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    if-eq v8, v12, :cond_c

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    if-ne v8, v12, :cond_13

    :cond_c
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_d

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v12, 0x23

    if-ne v13, v12, :cond_d

    :try_start_5
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_2
    :cond_d
    :try_start_6
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_4
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    if-ne v8, v12, :cond_e

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setPreviewInColor(I)V

    goto :goto_5

    :cond_e
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    if-ne v8, v12, :cond_f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setPreviewOutColor(I)V

    goto :goto_5

    :cond_f
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    if-ne v8, v12, :cond_10

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setPreviewBackgroundColor(I)V

    goto :goto_5

    :cond_10
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    if-ne v8, v12, :cond_11

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor1:I

    goto :goto_5

    :cond_11
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    if-ne v8, v12, :cond_12

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor2:I

    goto :goto_5

    :cond_12
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    if-ne v8, v12, :cond_13

    iput v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewBackgroundGradientColor3:I

    :cond_13
    :goto_5
    add-int/2addr v10, v14

    add-int/2addr v11, v14

    goto :goto_6

    :cond_14
    const/4 v4, -0x1

    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_15
    :goto_7
    if-nez v6, :cond_17

    if-ne v0, v11, :cond_16

    goto :goto_8

    :cond_16
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    int-to-long v3, v11

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v11

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_17
    :goto_8
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_b

    :goto_9
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_9
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_c
    iget-object v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-boolean v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->badWallpaper:Z

    if-nez v0, :cond_19

    new-instance v0, Ljava/io/File;

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToWallpaper:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->loadingWallpapers:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->loadingWallpapers:Ljava/util/HashMap;

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->slug:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getWallPaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getWallPaper;-><init>()V

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;-><init>()V

    iget-object v4, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->slug:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;->slug:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/tl/TL_account$getWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    iget v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_18
    const/4 v2, 0x0

    return v2

    :cond_19
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->previewParsed:Z

    return v3

    :goto_d
    return v2
.end method

.method private updateSelected()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    check-cast v1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->isSelected:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->setSelected(ZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateState(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->dataLoaded:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-static {v0, v2, v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isDark()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setGalleryWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;)V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->withRemovedStub:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget v2, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createChatThemesRemoved(I)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setOnEmoticonSelected(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->onEmoticonSelected:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setSelectedEmoticon(Ljava/lang/String;Z)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->currentEmoticon:Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->currentEmoticon:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->getEmoticon()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v4, v4, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->isSelected:Z

    if-eqz v4, :cond_2

    move v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ltz v0, :cond_4

    if-nez p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x42a60000    # 83.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->updateSelected()V

    return-void
.end method

.method public setWithRemovedStub(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->withRemovedStub:Z

    return-void
.end method

.method public updateColors()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->isDark()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput v0, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeChooser;->adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

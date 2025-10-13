.class public Lorg/telegram/ui/Components/ProfileGalleryView;
.super Lorg/telegram/ui/Components/CircularViewPager;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ProfileGalleryView$Callback;,
        Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;,
        Lorg/telegram/ui/Components/ProfileGalleryView$TextureStubView;,
        Lorg/telegram/ui/Components/ProfileGalleryView$Item;,
        Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

.field private final callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

.field private chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private createThumbFromParent:Z

.field curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

.field private currentAccount:I

.field currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

.field private customAvatarIndex:I

.field private dialogId:J

.field private dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

.field private final downPoint:Landroid/graphics/PointF;

.field private fallbackPhotoIndex:I

.field private forceResetPosition:Z

.field private hasActiveVideo:Z

.field private imagesLayerNum:I

.field private imagesLocations:Ljava/util/ArrayList;

.field private imagesLocationsSizes:Ljava/util/ArrayList;

.field private imagesUploadProgress:Ljava/util/ArrayList;

.field private invalidateWithParent:Z

.field private isDownReleased:Z

.field private final isProfileFragment:Z

.field private isScrollingListView:Z

.field private isSwipingViewPager:Z

.field private final parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private final parentClassGuid:I

.field private final parentListView:Lorg/telegram/ui/Components/RecyclerListView;

.field path:Landroid/graphics/Path;

.field private photos:Ljava/util/ArrayList;

.field pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

.field private prevImageLocation:Lorg/telegram/messenger/ImageLocation;

.field prevPage:I

.field private prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

.field private prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

.field private final radialProgresses:Landroid/util/SparseArray;

.field radii:[F

.field rect:Landroid/graphics/RectF;

.field private roundBottomRadius:I

.field private roundTopRadius:I

.field public scrolledByUser:Z

.field selectedPage:I

.field private settingMainPhoto:I

.field private thumbsFileNames:Ljava/util/ArrayList;

.field private thumbsLocations:Ljava/util/ArrayList;

.field private final touchSlop:I

.field private uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

.field private vectorAvatars:Ljava/util/ArrayList;

.field private videoFileNames:Ljava/util/ArrayList;

.field private videoLocations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ProfileActivity$AvatarImageView;ILorg/telegram/ui/Components/ProfileGalleryView$Callback;)V
    .locals 3

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->rect:Landroid/graphics/RectF;

    const/16 v1, 0x8

    new-array v2, v1, [F

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radii:[F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    iput v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    iput-wide p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    iput-object p5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    iput p7, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    iput-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance p5, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-direct {p5, p0, p7, p6, p4}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/CircularViewPager;->setAdapter(Lorg/telegram/ui/Components/CircularViewPager$Adapter;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    iput-object p8, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    new-instance p1, Lorg/telegram/ui/Components/ProfileGalleryView$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ProfileGalleryView$2;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getDialogPhotos(J)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loadCache()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/ProfileGalleryView$Callback;)V
    .locals 2

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->rect:Landroid/graphics/RectF;

    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radii:[F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    iput-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    new-instance p1, Lorg/telegram/ui/Components/ProfileGalleryView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ProfileGalleryView$1;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    new-instance p1, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager;->setAdapter(Lorg/telegram/ui/Components/CircularViewPager$Adapter;)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iput-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ProfileGalleryView;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ProfileGalleryView;->checkCustomAvatar(IF)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ProfileGalleryView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/ImageLocation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ProfileGalleryView;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->invalidateWithParent:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$Callback;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundTopRadius:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundBottomRadius:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLayerNum:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/MessagesController$DialogPhotos;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    return-object p0
.end method

.method private checkCustomAvatar(IF)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    if-ltz v2, :cond_7

    :cond_0
    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result p1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    if-eqz v2, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_3

    sub-float p1, v2, p2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v3

    if-lez v3, :cond_4

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v4

    rem-int/2addr v3, v4

    if-ne v3, v0, :cond_4

    sub-float p1, v2, p2

    sub-float/2addr p1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v3

    if-lez v3, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v3

    rem-int/2addr p1, v3

    if-ne p1, v0, :cond_5

    sub-float p1, v2, p2

    add-float/2addr p1, v2

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    cmpl-float p2, p1, v2

    if-lez p2, :cond_6

    const/high16 p2, 0x40000000    # 2.0f

    sub-float p1, p2, p1

    :cond_6
    invoke-static {p1, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    :cond_7
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->setCustomAvatarProgress(F)V

    return-void
.end method

.method private loadNeighboringThumbs()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-ge v2, v3, :cond_2

    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v0, -0x1

    :goto_2
    iget v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/telegram/messenger/ImageLocation;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->selectedPage:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method


# virtual methods
.method public addUploadingImage(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method

.method public commitMoveToBegin()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_21

    aget-object v1, p3, v5

    check-cast v1, Lorg/telegram/messenger/MessagesController$DialogPhotos;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-ne v2, v1, :cond_2c

    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController$DialogPhotos;->fromCache:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    iput v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    iget v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v8, :cond_1

    invoke-virtual {v2, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    :cond_1
    if-eqz v6, :cond_2

    iget-boolean v8, v6, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v8, :cond_2

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->hasFallbackPhoto(Lorg/telegram/tgnet/TLRPC$UserFull;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    iput v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-wide v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v7

    const/16 v8, 0x3e8

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    iget v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    invoke-static {v7, v5}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-static {v7, v4}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v7, :cond_4

    iget-object v11, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v11, v7}, Lorg/telegram/messenger/FileLoader;->isSamePhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$Photo;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v7

    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v7, v12}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v10, v9

    :cond_6
    :goto_2
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_1a

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v11, :cond_7

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v12, :cond_7

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-nez v12, :cond_8

    :cond_7
    move-object v3, v10

    goto/16 :goto_11

    :cond_8
    const/16 v13, 0x32

    invoke-static {v12, v13}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_a

    iget-object v15, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v15, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v4, :cond_9

    move-object v12, v15

    goto :goto_5

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-eqz v10, :cond_e

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v4, :cond_e

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v14, :cond_c

    iget v15, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v1, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v15, v3, :cond_c

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object v3, v10

    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v1, v14, v9

    if-nez v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v4, v8}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v4

    invoke-static {v4, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const/4 v4, -0x1

    const/4 v9, 0x0

    goto/16 :goto_12

    :cond_c
    move-object v3, v10

    :cond_d
    add-int/lit8 v13, v13, 0x1

    move-object v10, v3

    const/4 v1, -0x1

    const/4 v9, 0x0

    goto :goto_6

    :cond_e
    move-object v3, v10

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v4, 0x280

    invoke-static {v1, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-eqz v1, :cond_19

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$Photo;->dc_id:I

    if-eqz v4, :cond_f

    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput v4, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v4, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    :cond_f
    invoke-static {v1, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    if-eqz v4, :cond_19

    iget-object v9, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz v9, :cond_14

    iget-wide v9, v9, Lorg/telegram/messenger/ImageLocation;->photoId:J

    iget-wide v13, v4, Lorg/telegram/messenger/ImageLocation;->photoId:J

    cmp-long v15, v9, v13

    if-nez v15, :cond_14

    iget-boolean v9, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    if-nez v9, :cond_14

    iget-wide v9, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    iget v13, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    cmp-long v15, v9, v13

    if-eqz v15, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

    if-nez v1, :cond_10

    invoke-static {v12, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v1, v8}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v1

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    new-instance v9, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v6, :cond_11

    iget-boolean v10, v6, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    :goto_7
    const/4 v11, 0x2

    goto :goto_8

    :cond_11
    const/4 v10, 0x0

    goto :goto_7

    :goto_8
    invoke-direct {v9, v4, v10, v11}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    const/4 v4, 0x0

    iget-object v9, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-static {v1, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_a

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v4

    :goto_b
    const/4 v4, -0x1

    goto/16 :goto_12

    :cond_14
    iget-object v9, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    instance-of v9, v12, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v9, :cond_15

    move-object v9, v1

    goto :goto_c

    :cond_15
    move-object v9, v12

    :goto_c
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-static {v12, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v4, v8}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v4

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v9

    if-eqz v9, :cond_17

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v6, :cond_16

    iget-boolean v12, v6, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz v12, :cond_16

    const/4 v12, 0x1

    :goto_d
    const/4 v13, 0x2

    goto :goto_e

    :cond_16
    const/4 v12, 0x0

    goto :goto_d

    :goto_e
    invoke-direct {v10, v9, v12, v13}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    :goto_f
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_17
    const/4 v9, 0x0

    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-static {v4, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_18
    const/4 v9, 0x0

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    goto :goto_f

    :goto_10
    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_b

    :goto_11
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    add-int/lit8 v7, v7, 0x1

    move-object v10, v3

    const/4 v1, -0x1

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->loadNeighboringThumbs()V

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->scrolledByUser:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    if-eqz v1, :cond_1e

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    goto :goto_13

    :cond_1c
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->scrolledByUser:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    if-eqz v1, :cond_1e

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->checkCustomAvatar(IF)V

    :cond_1e
    :goto_13
    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    if-gez v1, :cond_1f

    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    if-gez v1, :cond_1f

    invoke-direct {v0, v5, v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->checkCustomAvatar(IF)V

    :cond_1f
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    if-eqz v1, :cond_20

    invoke-interface {v1}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onPhotosLoaded()V

    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz v1, :cond_2c

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->addUploadingImage(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;)V

    goto/16 :goto_18

    :cond_21
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_25

    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/String;

    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_2c

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_22

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_22
    if-eqz v2, :cond_24

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v2, :cond_23

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_25
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne v1, v2, :cond_29

    aget-object v1, p3, v5

    check-cast v1, Ljava/lang/String;

    :goto_15
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_2c

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_26
    if-eqz v2, :cond_28

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v2, :cond_27

    const/4 v4, 0x1

    aget-object v6, p3, v4

    check-cast v6, Ljava/lang/Long;

    const/4 v7, 0x2

    aget-object v8, p3, v7

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-float v6, v9

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v8, v8

    div-float/2addr v6, v8

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v2, v6, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_16

    :cond_27
    const/4 v7, 0x2

    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_17

    :cond_28
    const/4 v7, 0x2

    :goto_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_29
    sget v2, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    if-ne v1, v2, :cond_2c

    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    if-eqz v1, :cond_2a

    return-void

    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v5

    :cond_2b
    sub-int/2addr v2, v5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loadAfter(IZ)V

    :cond_2c
    :goto_18
    return-void
.end method

.method public findVideoActiveView()Landroid/view/View;
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Components/ProfileGalleryView$TextureStubView;

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public finishSettingMainPhoto()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    return-void
.end method

.method public getCurrentItemProgress()F
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getCurrentProgress()F

    move-result v0

    return v0
.end method

.method public getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentVideoLocation(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;)Lorg/telegram/messenger/ImageLocation;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_7

    if-nez v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ImageLocation;

    if-eqz v6, :cond_5

    iget-object v7, v6, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    iget v6, v6, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    iget v8, p1, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    if-ne v6, v8, :cond_3

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v9, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v8, v10, :cond_3

    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v12, v10, v8

    if-eqz v12, :cond_4

    :cond_3
    iget v8, p2, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    if-ne v6, v8, :cond_5

    iget v6, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v8, p2, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v6, v9, :cond_5

    iget-wide v6, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_5

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    return-object p1

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    return-wide v0
.end method

.method public getImageLocation(I)Lorg/telegram/messenger/ImageLocation;
    .locals 1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPhoto(I)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getRealImageLocation(I)Lorg/telegram/messenger/ImageLocation;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealPosition()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result v0

    return v0
.end method

.method public getRealPosition(I)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result p1

    return p1
.end method

.method public hasImages()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initIfEmpty(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    iget v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v3, p2, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v1, v3, :cond_6

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz p4, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->reset()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v0

    :cond_2
    sub-int/2addr p2, v0

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loadAfter(IZ)V

    :cond_3
    return v2

    :cond_4
    if-eqz p4, :cond_6

    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->reset()V

    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    sub-int/2addr v1, v3

    invoke-virtual {p4, v1, v2}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loadAfter(IZ)V

    :cond_6
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_7

    return v0

    :cond_7
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public isCurrentItemVideo()Z
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    return v2
.end method

.method public isLoadingCurrentVideo()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method public onDestroy()V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Components/BackupImageView;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v8, p0

    iget-object v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    const/4 v9, 0x0

    if-nez v0, :cond_0

    return v9

    :cond_0
    iget-object v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v10, 0x3

    if-eqz v0, :cond_1

    iget-boolean v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    if-nez v0, :cond_1

    iget-boolean v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    if-eqz v0, :cond_1

    iput-boolean v9, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {v8, v0}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    iget-object v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    const/4 v12, 0x1

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v11, :cond_2

    iget-boolean v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    if-eqz v0, :cond_2

    iget-object v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x3

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    :cond_2
    iget-object v1, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    if-nez v0, :cond_3

    iput-boolean v12, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    iget-object v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onRelease()V

    :cond_3
    return v12

    :cond_4
    :goto_0
    const/high16 v0, 0x40400000    # 3.0f

    if-nez v11, :cond_7

    iput-boolean v12, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    iput-boolean v12, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    iput-boolean v12, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->scrolledByUser:Z

    iget-object v1, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getCount()I

    move-result v1

    if-le v1, v12, :cond_6

    iget-object v1, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    cmpg-float v0, v2, v3

    if-gez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onDown(Z)V

    :cond_6
    iput-boolean v9, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    goto/16 :goto_6

    :cond_7
    const/4 v1, -0x1

    if-ne v11, v12, :cond_a

    iget-boolean v2, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-le v2, v12, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    cmpl-float v0, v4, v5

    if-lez v0, :cond_9

    iget-object v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v0

    add-int/2addr v3, v12

    add-int/2addr v2, v0

    if-lt v3, v2, :cond_8

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_2

    :cond_9
    iget-object v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v0

    add-int/2addr v3, v1

    if-ge v3, v0, :cond_8

    add-int/2addr v2, v0

    add-int/lit8 v0, v2, -0x1

    :goto_2
    iget-object v1, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onRelease()V

    invoke-virtual {v8, v0, v9}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_6

    :cond_a
    const/4 v0, 0x2

    if-ne v11, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_c

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_b

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_d

    iput-boolean v12, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    iget-object v4, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onRelease()V

    :cond_d
    iget-boolean v4, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    if-eqz v4, :cond_f

    iget-boolean v5, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    if-eqz v5, :cond_f

    if-eqz v3, :cond_10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_e

    iput-boolean v9, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {v8, v0}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_6

    :cond_e
    iput-boolean v9, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_5

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v8, v1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    return v9

    :cond_10
    :goto_6
    iget-boolean v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    if-eqz v0, :cond_11

    iget-object v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    move v2, v0

    goto :goto_7

    :cond_11
    move-object/from16 v1, p1

    const/4 v2, 0x0

    :goto_7
    iget-boolean v0, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    if-eqz v0, :cond_12

    :try_start_0
    invoke-super/range {p0 .. p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v2, v0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_12
    :goto_8
    if-eq v11, v12, :cond_13

    if-ne v11, v10, :cond_14

    :cond_13
    iput-boolean v9, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    iput-boolean v9, v8, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    :cond_14
    return v2
.end method

.method public removePhotoAtIndex(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz v2, :cond_1

    iget-wide v0, v1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->removePhoto(J)V

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public removeUploadingImage(Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method

.method public replaceFirstPhoto(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$Photo;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetCurrentItem()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public scrollToLastItem()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setAnimatedFileMaybe(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Components/BackupImageView;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$300(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    check-cast v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v3

    if-ne v3, p1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addSecondParentView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setInvalidateParentViewWithSecond(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iget-object p1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {p1, v1}, Lorg/telegram/messenger/FileLoader;->isSamePhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$Photo;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-static {p1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {p1, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onPhotosLoaded()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setCreateThumbFromParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    return-void
.end method

.method protected setCustomAvatarProgress(F)V
    .locals 0

    return-void
.end method

.method public setData(J)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->setData(JZ)V

    return-void
.end method

.method public setData(JZ)V
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->reset()V

    iput-wide p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    iget p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getDialogPhotos(J)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loadCache()V

    return-void
.end method

.method public setHasActiveVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    return-void
.end method

.method public setImagesLayerNum(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLayerNum:I

    return-void
.end method

.method public setInvalidateWithParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->invalidateWithParent:Z

    return-void
.end method

.method public setParentAvatarImage(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$2602(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;Lorg/telegram/ui/Components/BackupImageView;)Lorg/telegram/ui/Components/BackupImageView;

    :cond_0
    return-void
.end method

.method public setPinchToZoomHelper(Lorg/telegram/ui/PinchToZoomHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    return-void
.end method

.method public setRoundRadius(II)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundTopRadius:I

    iput p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundBottomRadius:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->access$700(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->access$800(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundTopRadius:I

    iget v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundBottomRadius:I

    invoke-virtual {p2, v0, v0, v1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(IIII)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUploadProgress(Lorg/telegram/messenger/ImageLocation;F)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public startMovePhotoToBegin(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->moveToStart(I)V

    return-void

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    :cond_2
    :goto_0
    return-void
.end method

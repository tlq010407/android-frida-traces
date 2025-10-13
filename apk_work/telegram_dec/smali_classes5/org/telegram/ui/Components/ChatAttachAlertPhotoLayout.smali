.class public Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;
    }
.end annotation


# static fields
.field private static cameraPhotos:Ljava/util/ArrayList;

.field public static lastImageId:I

.field private static mediaFromExternalCamera:Z

.field public static selectedPhotos:Ljava/util/HashMap;

.field public static selectedPhotosOrder:Ljava/util/ArrayList;


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

.field additionCloseCameraY:F

.field private afterCameraInitRunnable:Ljava/lang/Runnable;

.field private alertOnlyOnce:I

.field private animateCameraValues:[I

.field animationClipBottom:F

.field animationClipLeft:F

.field animationClipRight:F

.field animationClipTop:F

.field private cameraAnimationInProgress:Z

.field private cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

.field protected cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

.field private cameraDrawable:Landroid/graphics/drawable/Drawable;

.field cameraExpanded:Z

.field protected cameraIcon:Landroid/widget/FrameLayout;

.field private cameraInitAnimation:Landroid/animation/AnimatorSet;

.field private cameraOpenProgress:F

.field public cameraOpened:Z

.field private cameraPanel:Landroid/widget/FrameLayout;

.field private cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private cameraPhotoRecyclerViewIgnoreLayout:Z

.field protected cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private cameraViewLocation:[F

.field private cameraViewOffsetBottomY:F

.field private cameraViewOffsetX:F

.field private cameraViewOffsetY:F

.field private cameraZoom:F

.field private canSaveCameraPreview:Z

.field private cancelTakingPhotos:Z

.field public captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field private checkCameraWhenShown:Z

.field private compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private counterTextView:Landroid/widget/TextView;

.field public currentItemTop:I

.field private currentPanTranslationY:F

.field private currentSelectedCount:I

.field private deviceHasGoodCamera:Z

.field private documentsEnabled:Z

.field private dragging:Z

.field public dropDown:Landroid/widget/TextView;

.field private dropDownAlbums:Ljava/util/ArrayList;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dropDownDrawable:Landroid/graphics/drawable/Drawable;

.field private flashAnimationInProgress:Z

.field private flashModeButton:[Landroid/widget/ImageView;

.field forceDarkTheme:Z

.field private galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private gridExtraSpace:I

.field public gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private headerAnimator:Landroid/view/ViewPropertyAnimator;

.field private hitRect:Landroid/graphics/Rect;

.field private ignoreLayout:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isCameraFrontfaceBeforeEnteringEditMode:Ljava/lang/Boolean;

.field private isHidden:Z

.field private itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

.field private itemSize:I

.field private itemsPerRow:I

.field private lastItemSize:I

.field private lastNotifyWidth:I

.field private lastY:F

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private loading:Z

.field private maybeStartDraging:Z

.field private mediaEnabled:Z

.field private final needCamera:Z

.field private noCameraPermissions:Z

.field private noGalleryPermissions:Z

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private photoEnabled:Z

.field public photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private pinchStartDistance:F

.field private pressed:Z

.field protected previewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private recordTime:Landroid/widget/TextView;

.field private requestingPermissions:Z

.field private selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private shouldSelect:Z

.field private showAvatarConstructor:Z

.field private shutterButton:Lorg/telegram/ui/Components/ShutterButton;

.field private spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private switchCameraButton:Landroid/widget/ImageView;

.field private takingPhoto:Z

.field private tooltipTextView:Landroid/widget/TextView;

.field private videoEnabled:Z

.field private videoRecordRunnable:Ljava/lang/Runnable;

.field private videoRecordTime:I

.field private viewPosition:[I

.field private zoomControlAnimation:Landroid/animation/AnimatorSet;

.field private zoomControlHideRunnable:Ljava/lang/Runnable;

.field private zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

.field private zoomWas:Z

.field private zooming:Z


# direct methods
.method public static synthetic $r8$lambda$-3KCJPO6dQDty66uE7dL7R21ifw(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$27(Ljava/lang/Long;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-Z5bB2ws3a3CMSGjpqWZdPryXeY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$6(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$1s4U2z0Pr-xoCfS2Rq6QYQ5kAFI(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$setCurrentSpoilerVisible$0(Lorg/telegram/messenger/MediaController$PhotoEntry;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$24F4mKoyJbdvzEQo8eH8d1D0C68(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$3(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$3UQWFWLRgRD45Mn0yNy8Zm7iHEE(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$applyCameraViewPosition$17(Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4n7eqYEfk5AQKCeqzhnGfoR6kaU(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$showZoomControls$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$6nf86A1dAjV3i4C1ogNeLkHhBso(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cp2RT_xNxKIuJHarN4l9bxo5zFs(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$updateAlbumsDropDown$13(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DYeNjgvQG0IBz_vBjXYxFX_SMIs(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DvohptOq4z7syGng7kiNNlrAfz8(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onShow$28(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GQg-7L31KvldWhCi96qPcDzTIG8(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$updateAlbumsDropDown$12(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HgooxaP4LH9nmbDb-d5dIVzCjDw(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$23(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LkO8HsHt5h-iejqMzSfGHB0tzoU(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onPreMeasure$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$LkpA_2BOvbk17-wsOcc-aC_zKHQ(Ljava/util/List;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$26(Ljava/util/List;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RiktnUrq_bc6-jVhRg4JoVZ4lKs(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tbjsd650RREecOrFsFZnM9XMDRo(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$applyCameraViewPosition$18(Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tjrwj9R4A1QfcSuziuNrP3WnBkc(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$19(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$U3ca1e_s9s_Qnq2_t_VtKZIruzg(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$hideCamera$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$VklzUSeZPvZpHOoLP0Rq5PldOfI(Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$9(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YPpiTsMgEoRe0AsaIQ7y7vl_Lgs(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$showAvatarConstructorFragment$10(Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_YmgPb42GNNJqQZrp-m32uhVL8E(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$showZoomControls$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$_xCwwiO67ZO90GIoxiJDafBK5hU(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;ILorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$2(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;ILorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fEc8I4-HhUaw6k-3ZXSznvyikv8(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$4(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fmekZXoZZe9s12MCLav86FvK_Iw(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onHide$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$huSE2476bKVPQnBiIGRijEEVam4(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$22(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j7zm8n531tbC7FnGcqehqgZvv6o(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$updatePhotoStarsPrice$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kyh7rEFRW8ZIB_Uu9CopvTNjPqI(Ljava/util/List;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$24(Ljava/util/List;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ook0oNBqfElvbOEP2gaWBVBxtQA(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$25(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qtzc2Ag6HV0mEC5xWv61o1u4t5E(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$20(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tIlJ66tYE6OcmBBb88JCu_22Mwo(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$21(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$vaVwUdYT7mT7c8XGspc3r-S0m24(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v0, p1

    move-object/from16 v10, p5

    invoke-direct {v7, v0, v8, v10}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v11, 0x2

    new-array v1, v11, [Landroid/widget/ImageView;

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    new-array v1, v11, [F

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    new-array v1, v11, [I

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    const/4 v12, 0x5

    new-array v1, v12, [I

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v13, 0x0

    iput-object v13, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isCameraFrontfaceBeforeEnteringEditMode:Ljava/lang/Boolean;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hitRect:Landroid/graphics/Rect;

    const/high16 v14, 0x42a00000    # 80.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    iput v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastItemSize:I

    const/4 v15, 0x3

    iput v15, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    const/4 v6, 0x1

    iput-boolean v6, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v5, 0x0

    iput v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentItemTop:I

    move/from16 v1, p3

    iput-boolean v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    iput-boolean v9, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->needCamera:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v1, v7, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v1, v7, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v4

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->instant_camera:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$2;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v14, v2

    move-object/from16 v2, p2

    move-object/from16 v18, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    move/from16 v5, v17

    const/4 v12, 0x1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v14, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x42800000    # 64.0f

    const/high16 v22, 0x42800000    # 64.0f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x42600000    # 56.0f

    const/high16 v22, 0x42600000    # 56.0f

    :goto_1
    const/high16 v24, 0x42200000    # 40.0f

    const/16 v25, 0x0

    const/16 v19, -0x2

    const/high16 v20, -0x40800000    # -1.0f

    const/16 v21, 0x33

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChatGallery:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_arrow_drop_down:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v1

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const/high16 v19, 0x40800000    # 4.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const/high16 v20, 0x41200000    # 10.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v13, v13, v1, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v21, -0x2

    const/high16 v22, -0x40000000    # -2.0f

    const/16 v23, 0x10

    const/high16 v24, 0x41800000    # 16.0f

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v13}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    new-instance v6, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v2, Lorg/telegram/messenger/R$raw;->position_below:I

    sget v0, Lorg/telegram/messenger/R$string;->CaptionAbove:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->position_above:I

    sget v0, Lorg/telegram/messenger/R$string;->CaptionBelow:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, p2

    move-object v11, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/2addr v0, v12

    invoke-virtual {v11, v0, v13}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_view_file:I

    sget v2, Lorg/telegram/messenger/R$string;->AttachMediaPreviewButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->previewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(I)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v2, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_filehq:I

    sget v2, Lorg/telegram/messenger/R$string;->SendWithoutCompression:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_ungroup:I

    sget v2, Lorg/telegram/messenger/R$string;->SendWithoutGrouping:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(I)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_spoiler:I

    sget v2, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_quality_hd:I

    sget v2, Lorg/telegram/messenger/R$string;->SendInHighQuality:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILandroid/view/View;)Landroid/view/View;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_feature_paid:I

    sget v4, Lorg/telegram/messenger/R$string;->PaidMediaButton:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setFitSubItems(Z)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$3;

    invoke-direct {v0, v7, v8, v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setAlpha(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    iput-boolean v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-direct {v4, v7, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Z)V

    iput-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createCache()V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$4;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;

    iget v4, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    invoke-direct {v0, v7, v8, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;I)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$6;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda4;

    invoke-direct {v4, v7, v9, v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda5;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;-><init>(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$RecyclerViewItemRangeSelectorDelegate;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    iget-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    new-instance v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v4, 0x0

    invoke-direct {v0, v8, v4, v10}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v6, Lorg/telegram/messenger/R$string;->NoPhotos:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    if-eqz v0, :cond_2

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto :goto_2

    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    :goto_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v12}, Landroid/graphics/Paint;-><init>(I)V

    const v4, -0x25a9b3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$8;

    invoke-direct {v4, v7, v8, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v13, v0, v13}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$drawable;->system:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v6, 0x66000000

    invoke-direct {v4, v6, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v12, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v0, v6, v11, v14, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, -0x2

    const/high16 v23, -0x40000000    # -2.0f

    const/16 v24, 0x31

    const/16 v25, 0x0

    const/high16 v26, 0x41800000    # 16.0f

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    move-object/from16 v9, v18

    invoke-virtual {v9, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$9;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v6, 0x7e

    const/16 v11, 0x53

    invoke-static {v5, v6, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v9, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$drawable;->photos_rounded:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/messenger/R$drawable;->photos_arrow:I

    invoke-virtual {v0, v13, v13, v11, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v0, v14, v13, v11, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/high16 v28, 0x42e80000    # 116.0f

    const/high16 v23, 0x42180000    # 38.0f

    const/16 v24, 0x33

    const/16 v26, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-instance v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda6;

    invoke-direct {v11, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/ZoomControlView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/ZoomControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/high16 v23, 0x42480000    # 50.0f

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda7;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ZoomControlView;->setDelegate(Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;)V

    new-instance v0, Lorg/telegram/ui/Components/ShutterButton;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/ShutterButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v11, 0x54

    invoke-static {v11, v11, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;

    invoke-direct {v2, v7, v10, v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ShutterButton;->setDelegate(Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0, v12}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrShutter:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    const/16 v6, 0x15

    const/16 v11, 0x30

    invoke-static {v11, v11, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda8;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrSwitchCamera:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v6, v2, v0

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v6, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    const/16 v14, 0x33

    invoke-static {v11, v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda9;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "flash mode "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v12, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->TapForVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const v2, 0x40555547

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3f2a7efa    # 0.666f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v0, v2, v1, v4, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v13, v2, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const/16 v27, 0x0

    const/high16 v28, 0x41800000    # 16.0f

    const/16 v22, -0x2

    const/high16 v23, -0x40000000    # -2.0f

    const/16 v24, 0x51

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$13;

    invoke-direct {v0, v7, v8, v10}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-direct {v2, v7, v8, v13}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Z)V

    iput-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createCache()V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v13, v2, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$14;

    invoke-direct {v0, v7, v8, v13, v13}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;IZ)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkSendMediaEnabled(Lorg/telegram/messenger/MediaController$PhotoEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldSelect:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maxCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->alertOnlyOnce:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->alertOnlyOnce:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)[Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoEnabled:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->requestingPermissions:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordTime:I

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordTime:I

    return p1
.end method

.method static synthetic access$2908(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordTime:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->addToSelectedPhotos(Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resetRecordState()V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoEnabled:Z

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    return-void
.end method

.method static synthetic access$3500()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaFromExternalCamera:Z

    return v0
.end method

.method static synthetic access$3502(Z)Z
    .locals 0

    sput-boolean p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaFromExternalCamera:Z

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerViewIgnoreLayout:Z

    return p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cancelTakingPhotos:Z

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cancelTakingPhotos:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCamera(Z)V

    return-void
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    return p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpenProgress:F

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->afterCameraInitRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pauseCameraPreview()V

    return-void
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridExtraSpace:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCurrentSpoilerVisible(IZ)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resumeCameraPreview()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onPhotoEditModeChanged(Z)V

    return-void
.end method

.method private addToSelectedPhotos(Lorg/telegram/messenger/MediaController$PhotoEntry;I)I
    .locals 7

    iget v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iput-wide v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    iput-boolean v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateCheckedPhotoIndices()V

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {p1, p2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->updatePhotoAtIndex(I)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v5

    iput-wide v5, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v5

    const/4 p2, 0x1

    cmp-long v1, v5, v2

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iput-boolean v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    iput-boolean v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkSelectedCount(Z)Z

    move-result v1

    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateCheckedPhotos()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private applyCameraViewPosition()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v2

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setClipBottom(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v2, v0, :cond_1

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v2, v0, :cond_2

    :cond_1
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v0, :cond_3

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v1, :cond_4

    :cond_3
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private checkSelectedCount(Z)Z
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    rsub-int/lit8 v2, p1, 0xa

    if-le v1, v2, :cond_1

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->addToSelectedPhotos(Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v4, v0

    :cond_2
    return v4
.end method

.method private checkSendMediaEnabled(Lorg/telegram/messenger/MediaController$PhotoEntry;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->GlobalAttachVideoRestricted:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v1

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoEnabled:Z

    if-nez v0, :cond_3

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->GlobalAttachPhotoRestricted:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->getClipLayoutBottom()F

    move-result v5

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object p1

    :cond_1
    sub-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private isNoGalleryPermissions()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    if-eqz v0, :cond_2

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v0, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ge v1, v2, :cond_3

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$applyCameraViewPosition$17(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyCameraViewPosition$18(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideCamera$16()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$2(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;ILorg/telegram/ui/ChatActivity;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    const/4 p1, 0x3

    const/4 v6, 0x3

    goto :goto_0

    :cond_0
    move v6, p1

    :goto_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v7, 0x0

    move-object v4, p3

    move v5, p4

    move-object v9, p5

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setAvatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-nez p2, :cond_1

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iput-boolean v2, p1, Lorg/telegram/ui/PhotoViewer;->closePhotoAfterSelect:Z

    goto :goto_2

    :cond_1
    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/PhotoViewer;->closePhotoAfterSelect:Z

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarWithBulletin:Lorg/telegram/messenger/Utilities$Callback0Return;

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p1, Lorg/telegram/ui/PhotoViewer;->closePhotoAfterSelectWithAnimation:Z

    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, v2, p2}, Lorg/telegram/ui/PhotoViewer;->enableStickerMode(Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/messenger/Utilities$Callback2;)V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionForAllMedia()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setCaption(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$new$3(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;IFF)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    iget-boolean v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v1, :cond_1e

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    :cond_1
    move-object v3, v1

    if-nez v3, :cond_2

    return-void

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v4, 0x4

    if-lt v1, v2, :cond_5

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v2, v5, :cond_3

    if-nez p4, :cond_3

    iget-boolean v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v2, :cond_3

    :try_start_0
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_3
    iget-boolean v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    if-eqz v2, :cond_5

    const/16 v0, 0x21

    if-lt v1, v0, :cond_4

    :try_start_1
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void

    :cond_5
    const/4 v1, 0x1

    if-nez p4, :cond_8

    if-eqz p1, :cond_8

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eq v2, v5, :cond_6

    goto :goto_1

    :cond_6
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    if-eqz v0, :cond_7

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCamera(Z)V

    goto/16 :goto_8

    :cond_7
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v8, :cond_1e

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v15

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v8 .. v18}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    goto/16 :goto_8

    :cond_8
    :goto_1
    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v2, v5, :cond_9

    if-eqz p1, :cond_9

    add-int/lit8 v2, p4, -0x1

    goto :goto_2

    :cond_9
    move/from16 v2, p4

    :goto_2
    iget-boolean v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_c

    if-nez v2, :cond_b

    instance-of v5, v0, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;

    if-nez v5, :cond_a

    return-void

    :cond_a
    check-cast v0, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;

    invoke-virtual {v7, v0, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_b
    add-int/lit8 v2, v2, -0x1

    :cond_c
    move v5, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getAllPhotosArray()Ljava/util/ArrayList;

    move-result-object v8

    if-ltz v5, :cond_1e

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_d

    goto/16 :goto_8

    :cond_d
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->selectItemOnClicking()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_f

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    if-eqz v0, :cond_e

    const/4 v1, -0x1

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->addToSelectedPhotos(Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    :cond_e
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v15

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v8 .. v18}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_f
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v9, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v0, v9, v2}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_11

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v2, Lorg/telegram/ui/ChatActivity;

    const/16 v10, 0xb

    if-eqz v4, :cond_10

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    move-object v6, v2

    :cond_10
    const/16 v2, 0xb

    goto :goto_4

    :cond_11
    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_4

    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v10, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v10, :cond_13

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    move-object v6, v2

    :goto_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_13
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    if-eqz v2, :cond_14

    goto :goto_3

    :cond_14
    const/4 v2, 0x4

    :goto_4
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_15
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_17

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    sget-object v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v4, :cond_16

    move-object v4, v0

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v10, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v10

    iput-object v10, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    :cond_16
    instance-of v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v4, :cond_17

    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    :cond_17
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_18

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    goto :goto_5

    :cond_18
    const/4 v0, 0x0

    :goto_5
    iget-object v4, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v4

    iput-boolean v0, v4, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->isVideo:Z

    :cond_19
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_1a

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v0, :cond_1a

    const/4 v10, 0x1

    goto :goto_6

    :cond_1a
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_1b

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkSendMediaEnabled(Lorg/telegram/messenger/MediaController$PhotoEntry;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    if-eqz v10, :cond_1c

    invoke-direct {v7, v5, v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCurrentSpoilerVisible(IZ)V

    :cond_1c
    new-instance v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda31;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;ILorg/telegram/ui/ChatActivity;)V

    if-eqz v10, :cond_1d

    const-wide/16 v0, 0xfa

    goto :goto_7

    :cond_1d
    const-wide/16 v0, 0x0

    :goto_7
    invoke-static {v9, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1e
    :goto_8
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;I)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    :cond_0
    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v6, v7, :cond_2

    iget-object v8, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v15

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v8 .. v18}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    :cond_1
    return v4

    :cond_2
    instance-of v3, v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldSelect:Z

    invoke-virtual {v6, v1, v4, v2, v3}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->setIsActive(Landroid/view/View;ZIZ)Z

    :cond_3
    return v5
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$6(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->switchCamera()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, p1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashAnimationInProgress:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getNextFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->setCurrentFlashMode(Ljava/lang/String;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashAnimationInProgress:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v3, v0

    if-ne v5, p1, :cond_2

    aget-object v5, v3, v1

    :cond_2
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    new-array v9, v2, [F

    aput v8, v9, v0

    aput v7, v9, v1

    invoke-static {p1, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    new-array v9, v2, [F

    aput v6, v9, v0

    aput v8, v9, v1

    invoke-static {v5, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    fill-array-data v8, :array_0

    invoke-static {p1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v9, v2, [F

    fill-array-data v9, :array_1

    invoke-static {v5, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v7, v9, v0

    aput-object v4, v9, v1

    aput-object v8, v9, v2

    const/4 v0, 0x3

    aput-object v6, v9, v0

    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xdc

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;

    invoke-direct {v0, p0, p1, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic lambda$new$9(Landroid/view/View;I)V
    .locals 0

    instance-of p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->callDelegate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onHide$29()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$19(ZI)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move v4, p1

    move v5, p2

    invoke-interface/range {v1 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$20(Ljava/lang/Long;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$21(ZI)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    move v4, p1

    move v5, p2

    invoke-interface/range {v1 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$22(Ljava/lang/Long;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$23(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DisablePhotoSpoiler:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_1

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_spoiler_off:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$raw;->photo_spoiler:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setAnimatedIcon(I)V

    :goto_1
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedItemsCount()I

    move-result p1

    if-gt p1, v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedItemsCount()I

    move-result p1

    if-gt p1, v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static synthetic lambda$onMenuItemClick$24(Ljava/util/List;ZLandroid/view/View;)V
    .locals 1

    instance-of v0, p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onMenuItemClick$25(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->SendInStandardQuality:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->SendInHighQuality:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_quality_sd:I

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_quality_hd:I

    goto :goto_1

    :goto_2
    return-void
.end method

.method private static synthetic lambda$onMenuItemClick$26(Ljava/util/List;ZLandroid/view/View;)V
    .locals 1

    instance-of v0, p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onMenuItemClick$27(Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setStarsPrice(J)V

    return-void
.end method

.method private synthetic lambda$onPreMeasure$30()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onShow$28(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getListTopPadding()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le v0, v2, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method private synthetic lambda$setCurrentSpoilerVisible$0(Lorg/telegram/messenger/MediaController$PhotoEntry;ZLandroid/view/View;)V
    .locals 2

    instance-of v0, p3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_1

    check-cast p3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/high16 p1, 0x437a0000    # 250.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(ZLjava/lang/Float;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide p1

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, p1, p2, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setStarsPrice(JZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showAvatarConstructorFragment$10(Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p6

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0x320

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v5}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    iget v6, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    iget v7, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    iget v8, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    iget v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    :goto_0
    invoke-virtual {v5, v6, v7, v8, v0}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->defaultColors:[[I

    aget-object v0, v0, v12

    aget v6, v0, v12

    aget v7, v0, v13

    const/4 v8, 0x2

    aget v8, v0, v8

    const/4 v9, 0x3

    aget v0, v0, v9

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    const/high16 v6, 0x44480000    # 800.0f

    invoke-virtual {v5, v0, v0, v6, v6}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    iget-object v10, v5, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/high16 v8, 0x44480000    # 800.0f

    const/high16 v9, 0x44480000    # 800.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v5, Ljava/io/File;

    const/4 v6, 0x4

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "avatar_background.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v7, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const v0, 0x42f00001    # 120.00001f

    float-to-int v0, v0

    const/high16 v7, 0x440c0000    # 560.0f

    float-to-int v7, v7

    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v10

    const/4 v14, 0x0

    const v15, 0x3e051eb8    # 0.13f

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v9

    invoke-virtual {v9, v14}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFirstFrame(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v10, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v10}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    invoke-virtual {v10, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    int-to-float v14, v7

    invoke-virtual {v10, v0, v0, v14, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    mul-float v14, v14, v15

    float-to-int v0, v14

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_1
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v10

    invoke-virtual {v10, v12, v12, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    :cond_2
    int-to-float v0, v0

    int-to-float v10, v7

    invoke-virtual {v9, v0, v0, v10, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    mul-float v10, v10, v15

    float-to-int v0, v10

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    invoke-virtual {v9, v11}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :goto_3
    new-instance v9, Ljava/io/File;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v8, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->hasAnimation()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_10

    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v27}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iget-wide v8, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    const-wide/16 v10, 0x0

    cmp-long v14, v8, v10

    if-eqz v14, :cond_5

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;-><init>()V

    move/from16 v16, v7

    iget-wide v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    iput-wide v6, v8, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;->emoji_id:J

    iget-object v6, v8, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    iget-object v7, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v7, v7, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v6, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    if-eqz v6, :cond_3

    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v6, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    if-eqz v6, :cond_4

    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v6, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_5
    move/from16 v16, v7

    iget-object v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_9

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;-><init>()V

    iget-object v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v14, v8, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->sticker_id:J

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v6

    iput-object v6, v8, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v6, v8, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    iget-object v14, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v14, v14, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v6, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    if-eqz v6, :cond_6

    iget-object v14, v8, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v6, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    if-eqz v6, :cond_7

    iget-object v14, v8, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v6, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v6, v6, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    if-eqz v6, :cond_8

    :goto_5
    iget-object v14, v8, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iput-object v8, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    :cond_9
    new-instance v6, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v6}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v6, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput v4, v5, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iput v4, v5, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iput v4, v5, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iput v4, v5, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iput-boolean v13, v5, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    iput v3, v5, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    iput-boolean v13, v5, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    iput-wide v10, v5, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    long-to-float v4, v10

    iput v4, v5, Lorg/telegram/messenger/VideoEditedInfo;->start:F

    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getDuration()J

    move-result-wide v14

    iput-wide v14, v5, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/16 v4, 0x1e

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    iput-wide v10, v2, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    iget-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    long-to-float v6, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v6, v8

    const/high16 v8, 0x47e10000    # 115200.0f

    mul-float v6, v6, v8

    float-to-int v6, v6

    int-to-long v10, v6

    iput-wide v10, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    iput-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    new-instance v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v2}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    iput-byte v12, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-nez p5, :cond_a

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move-wide/from16 v5, p3

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    goto :goto_6

    :cond_a
    move-object/from16 v4, p5

    :goto_6
    if-nez v4, :cond_b

    return-void

    :cond_b
    move/from16 v5, v16

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const v5, 0x3f333333    # 0.7f

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    const v5, 0x3e19999a    # 0.15f

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v5, 0x0

    iput-object v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v4, v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    const v5, 0x3e051eb8    # 0.13f

    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    invoke-static {v4, v13}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    invoke-static {v4, v13}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v5

    iget-byte v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    const/4 v13, 0x4

    :goto_7
    or-int v5, v6, v13

    int-to-byte v5, v5

    iput-byte v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    :cond_e
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_f

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iget-byte v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    iput-byte v4, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    :cond_f
    iget-object v4, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    :goto_8
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v2 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    move-object/from16 v2, p1

    iget-boolean v0, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment;->finishOnDone:Z

    if-nez v0, :cond_12

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_12
    return-void
.end method

.method private synthetic lambda$showZoomControls$14()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$showZoomControls$15()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic lambda$updateAlbumsDropDown$12(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I
    .locals 3

    iget v0, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-le p1, p0, :cond_2

    return v2

    :cond_2
    if-ge p1, p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateAlbumsDropDown$13(ILandroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private static synthetic lambda$updatePhotoStarsPrice$11(Landroid/view/View;)V
    .locals 5

    instance-of v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v3, 0x437a0000    # 250.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(ZLjava/lang/Float;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x0

    :goto_2
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v3, v4, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setStarsPrice(JZ)V

    :cond_4
    return-void
.end method

.method private maxCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->quickReplyMessagesLimit:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const v0, 0x7fffffff

    return v0
.end method

.method private onPhotoEditModeChanged(Z)V
    .locals 0

    return-void
.end method

.method private openCamera(Z)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraView;->initTexture()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v5, 0x4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->isKeyboardVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    aput v1, v3, v1

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    aput v6, v3, v2

    aput v6, v3, v0

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->additionCloseCameraY:F

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v3, :cond_4

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/camera/CameraView;->setFpsLimit(I)V

    :cond_4
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v6, 0x80

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v4}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    const-string v7, "cameraOpenProgress"

    invoke-static {p0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    aput v3, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-array v8, v2, [F

    aput v3, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v2, [F

    aput v3, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v6, v7, v6

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    aput v3, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    add-int/2addr v6, v2

    goto :goto_2

    :cond_6
    :goto_3
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_6

    :cond_7
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    if-ge v1, v0, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v4, v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    :cond_8
    add-int/2addr v1, v2

    goto :goto_4

    :cond_9
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->onCameraOpened()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_a

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_a

    const/16 v3, 0x404

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_a
    :goto_6
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v0, 0x181e0

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/camera/CameraView;->showTexture(ZZ)V

    :cond_c
    :goto_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private pauseCameraPreview()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return v8

    :cond_0
    iget-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    if-nez v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-ne v9, v5, :cond_5

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hitRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hitRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    return v8

    :cond_3
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    if-nez v2, :cond_10

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-nez v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v6, :cond_4

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    iput-boolean v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    goto :goto_0

    :cond_4
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maybeStartDraging:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastY:F

    iput-boolean v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    :goto_0
    iput-boolean v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    iput-boolean v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    goto/16 :goto_2

    :cond_5
    iget-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    if-eqz v9, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-ne v9, v6, :cond_c

    iget-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    const v13, 0x3ecccccd    # 0.4f

    if-eqz v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v9, v6, :cond_9

    iget-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-nez v9, :cond_9

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    if-nez v2, :cond_6

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v13, v8}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_10

    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    iput-boolean v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    goto/16 :goto_2

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v2, :cond_10

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    sub-float v2, v1, v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    cmpg-float v2, v1, v12

    if-gez v2, :cond_7

    iput v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    goto :goto_1

    :cond_7
    cmpl-float v1, v1, v11

    if-lez v1, :cond_8

    iput v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    :cond_8
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    invoke-direct {v0, v7, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastY:F

    sub-float v9, v1, v9

    iget-boolean v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maybeStartDraging:Z

    if-eqz v11, :cond_a

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v13, v8}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    iput-boolean v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maybeStartDraging:Z

    iput-boolean v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    goto/16 :goto_2

    :cond_a
    iget-boolean v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-eqz v11, :cond_10

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v13

    add-float/2addr v13, v9

    invoke-virtual {v11, v13}, Landroid/view/View;->setTranslationY(F)V

    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastY:F

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_b

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    aput v12, v11, v8

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-array v13, v7, [F

    aput v12, v13, v8

    invoke-static {v11, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-array v14, v7, [F

    aput v12, v14, v8

    invoke-static {v13, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v14, v14, v8

    new-array v15, v7, [F

    aput v12, v15, v8

    invoke-static {v14, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v15, v15, v7

    new-array v5, v7, [F

    aput v12, v5, v8

    invoke-static {v15, v10, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v7, [F

    aput v12, v2, v8

    invoke-static {v15, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v9, v4, v8

    aput-object v11, v4, v7

    aput-object v13, v4, v6

    aput-object v14, v4, v3

    const/4 v3, 0x4

    aput-object v5, v4, v3

    const/4 v3, 0x5

    aput-object v2, v4, v3

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v7, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v4, :cond_10

    :cond_d
    iput-boolean v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    iput-boolean v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-eqz v2, :cond_f

    iput-boolean v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v2, v5

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    goto/16 :goto_2

    :cond_e
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v7, [F

    aput v12, v9, v8

    invoke-static {v2, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v7, [F

    aput v11, v12, v8

    invoke-static {v5, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-array v13, v7, [F

    aput v11, v13, v8

    invoke-static {v12, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v13, v13, v8

    new-array v14, v7, [F

    aput v11, v14, v8

    invoke-static {v13, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v14, v14, v7

    new-array v15, v7, [F

    aput v11, v15, v8

    invoke-static {v14, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v7, [F

    aput v11, v10, v8

    invoke-static {v15, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v8

    aput-object v5, v4, v7

    aput-object v12, v4, v6

    aput-object v13, v4, v3

    const/4 v2, 0x4

    aput-object v14, v4, v2

    const/4 v2, 0x5

    aput-object v9, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v2, :cond_10

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    if-nez v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    aget v3, v3, v8

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    aget v3, v3, v7

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    float-to-int v2, v2

    float-to-int v1, v1

    invoke-virtual {v3, v2, v1}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(II)V

    :cond_10
    :goto_2
    return v7
.end method

.method private resetRecordState()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method private resumeCameraPreview()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->startPreview(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private saveLastCameraBitmap()V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42a00000    # 80.0f

    div-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x1

    const/16 v3, 0x50

    invoke-static {v1, v3, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    const/4 v5, 0x7

    const/4 v6, 0x1

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v3, "cthumb.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget p2, Lorg/telegram/messenger/R$drawable;->flash_auto:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget p2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashAuto:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_1
    sget p2, Lorg/telegram/messenger/R$drawable;->flash_off:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget p2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOff:I

    goto :goto_1

    :pswitch_2
    sget p2, Lorg/telegram/messenger/R$drawable;->flash_on:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget p2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOn:I

    goto :goto_1

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCurrentSpoilerVisible(IZ)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getCurrentIndex()I

    move-result p1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getImagesArrLocals()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    :cond_1
    return-void
.end method

.method private shouldLoadAllMedia()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v1, :cond_0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showZoomControls(ZZ)V
    .locals 8

    const/4 p2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    :cond_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-eqz p1, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xb4

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    new-array v7, v0, [F

    aput v6, v7, p2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, p2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p1, :cond_8

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_8
    return-void
.end method

.method private updateAlbumsDropDown()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotoAlbums:Ljava/util/ArrayList;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda22;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AlbumEntry;

    new-instance v9, Lorg/telegram/ui/Stories/recorder/AlbumButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v6, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stories/recorder/AlbumButton;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/lang/CharSequence;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v1, 0xa

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)V

    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private updatePhotoStarsPrice()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method private updateStarsItem()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v3, Lorg/telegram/messenger/R$string;->PaidMediaPriceButton:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    long-to-int v1, v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Stars"

    invoke-static {v3, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->PaidMediaButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyCaption(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-nez v2, :cond_2

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v5, :cond_0

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController$PhotoEntry;->clone()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/CharSequence;

    aput-object p1, v5, v1

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    aget-object v5, v5, v1

    iput-object v5, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController$SearchImage;->clone()Lorg/telegram/messenger/MediaController$SearchImage;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/CharSequence;

    aput-object p1, v5, v1

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    aget-object v5, v5, v1

    iput-object v5, v4, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    :cond_1
    :goto_1
    sget-object v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public canDismissWithTouchOutside()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canScheduleMessages()Z
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    if-eqz v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public captionForAllMedia()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    sget-object v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-gt v2, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public checkCamera(Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->needCamera:Z

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->inappCamera:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "android.permission.CAMERA"

    invoke-static {v0, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x11

    invoke-static {p1, v0, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    goto :goto_3

    :cond_6
    if-nez p1, :cond_8

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->hasCameraCache:Z

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->hasCameraCache:Z

    if-eqz p1, :cond_9

    :cond_8
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    :cond_9
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-ne v1, p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eq v2, p1, :cond_b

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBackDrawable()Landroid/graphics/drawable/ColorDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showCamera()V

    :cond_c
    :goto_4
    return-void
.end method

.method protected checkCameraViewPosition()V
    .locals 12

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->stickerMakerView:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->stickerMakerView:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->isThanosInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v0, v2, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;)V

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eq v4, v5, :cond_4

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;)V

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :cond_5
    const/16 v4, 0x17

    if-lt v0, v4, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;)Landroid/view/WindowInsets;

    move-result-object v5

    if-nez v5, :cond_6

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;)Landroid/view/WindowInsets;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    :goto_0
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    if-ge v5, v0, :cond_14

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v8, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v5, v8

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v5, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v8, v5

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    add-float/2addr v9, v10

    if-lt v0, v4, :cond_a

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;)Landroid/view/WindowInsets;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v9, v4

    :cond_a
    if-lt v0, v2, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v4, :cond_b

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    :goto_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    add-int/2addr v4, v10

    int-to-float v4, v4

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v10, v10, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v11, v11, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v11

    mul-float v10, v10, v11

    add-float/2addr v4, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v10, v10, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v10, v10, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v11, v11, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/MentionsContainerView;->clipTop()F

    move-result v11

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v11, v11, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    sub-float/2addr v10, v11

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_c
    cmpg-float v10, v5, v4

    if-gez v10, :cond_d

    sub-float/2addr v4, v5

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    :goto_3
    iget v10, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    cmpl-float v10, v4, v10

    if-eqz v10, :cond_10

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v4, :cond_f

    if-lt v0, v2, :cond_e

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->clipBottom()F

    move-result v2

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sub-float/2addr v0, v2

    :cond_11
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v5

    cmpl-float v2, v2, v0

    if-lez v2, :cond_12

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    goto :goto_4

    :cond_12
    iput v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aput v9, v0, v3

    aput v8, v0, v1

    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->applyCameraViewPosition()V

    return-void

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_14
    :goto_6
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_15

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_18

    :cond_15
    iput v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    iput v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_17

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_16

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    const/high16 v2, -0x3c380000    # -400.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aput v6, v0, v1

    goto :goto_5
.end method

.method public checkColors()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCameraIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v4, v1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_2

    check-cast v1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    goto :goto_1

    :cond_3
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    :goto_1
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    goto :goto_2

    :cond_4
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    :goto_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarUnscrolled:I

    goto :goto_3

    :cond_5
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    :goto_3
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v0

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public checkStorage()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isNoGalleryPermissions()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public clearSelectedPhotos()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$raw;->photo_spoiler:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setAnimatedIcon(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iget-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeCamera(Z)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    aput v3, v2, v1

    const/4 v4, 0x2

    aput v3, v2, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v9, v5, v7

    if-lez v9, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->additionCloseCameraY:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-array v5, v1, [F

    aput v2, v5, v0

    const-string v6, "cameraOpenProgress"

    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v1, [F

    aput v2, v7, v0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-array v7, v1, [F

    aput v2, v7, v0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-array v7, v1, [F

    aput v2, v7, v0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v1, [F

    aput v2, v7, v0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v2, v1, v0

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/2addr v5, v1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$22;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    :cond_5
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    aput v0, v5, v0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_6
    add-int/2addr v3, v1

    goto :goto_3

    :cond_7
    :goto_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_8

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setFpsLimit(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_8
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v1, 0x181e0

    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0, p1}, Lorg/telegram/messenger/camera/CameraView;->showTexture(ZZ)V

    :cond_a
    :goto_6
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    sget p2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    const/4 p3, 0x0

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    :goto_2
    sget-object p2, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    sget-object p2, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget v2, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    if-ne v0, v1, :cond_2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_4

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :cond_4
    :goto_4
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_7

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_5
    if-ge p3, p1, :cond_7

    sget-object p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photosByIds:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_6

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_5

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaController$PhotoEntry;->copyFrom(Lorg/telegram/messenger/MediaController$MediaEditState;)V

    :cond_5
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAlbumsDropDown()V

    goto :goto_6

    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    if-ne p1, p2, :cond_9

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    :cond_9
    :goto_6
    return-void
.end method

.method protected getAllPhotosArray()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public getCameraOpenProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpenProgress:F

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentItemTop:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const v0, 0x7fffffff

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-lt v0, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentItemTop:I

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSelectedPhotosCount()I
    .locals 4

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v3, :cond_0

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSelectedPhotosHighQualityCount()I
    .locals 4

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v3, :cond_0

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSelectedPhotosOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStarsPrice()J
    .locals 2

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-wide v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hideCamera(Z)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->saveLastCameraBitmap()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->updateBitmap()V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    const-wide/16 v2, 0x12c

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    :cond_4
    :goto_2
    return-void
.end method

.method public loadGalleryPhotos()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :goto_0
    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    :cond_1
    return-void
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 30

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v7, p3

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v14, 0x1

    sput-boolean v14, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaFromExternalCamera:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v14, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v11, v2

    move v10, v3

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :catch_1
    move v10, v3

    const/4 v11, 0x0

    :goto_0
    new-instance v12, Lorg/telegram/messenger/MediaController$PhotoEntry;

    sget v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v2, v4, -0x1

    sput v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v16, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v2, v12

    move-object/from16 v7, p3

    move-object v15, v12

    move-wide/from16 v12, v16

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    invoke-virtual {v15, v0}, Lorg/telegram/messenger/MediaController$PhotoEntry;->setOrientation(Landroid/util/Pair;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iput-boolean v14, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v14}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    goto/16 :goto_f

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pic path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object/from16 v0, p2

    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video record uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolved path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    move-object v0, v7

    :cond_7
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_8

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    :cond_9
    move-object v7, v2

    goto :goto_3

    :cond_a
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_b

    if-eqz v7, :cond_b

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    move-object v7, v0

    :goto_4
    const-wide/16 v3, 0x0

    :try_start_2
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {v5, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-float v0, v8

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    double-to-int v0, v2

    int-to-long v3, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_c
    :goto_5
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :goto_6
    move-object v2, v0

    goto/16 :goto_d

    :goto_7
    move-object v2, v5

    goto :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :catch_4
    move-exception v0

    :goto_8
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_d

    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_a

    :goto_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_d
    :goto_a
    invoke-static {v7, v14}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-2147483648_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    const/4 v6, 0x4

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_7
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x37

    invoke-virtual {v2, v6, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_b
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    sget v20, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v6, v20, -0x1

    sput v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    const/16 v25, 0x1

    const-wide/16 v28, 0x0

    const/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v0

    move-object/from16 v23, v7

    invoke-direct/range {v18 .. v29}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    long-to-int v2, v3

    iput v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    goto/16 :goto_1

    :goto_c
    move-object v5, v2

    goto :goto_6

    :goto_d
    if-eqz v5, :cond_e

    :try_start_8
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    throw v2

    :cond_f
    :goto_f
    return-void
.end method

.method public onButtonsTranslationYUpdated()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onContainerTranslationUpdated(F)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onCustomLayout(Landroid/view/View;IIII)Z
    .locals 7

    sub-int v0, p4, p2

    sub-int p3, p5, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/high16 v5, 0x42fc0000    # 126.0f

    const/high16 v6, 0x42c00000    # 96.0f

    if-ne p1, v4, :cond_4

    const/high16 p1, 0x435e0000    # 222.0f

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz v3, :cond_2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, p5, p1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p2, v2, p1, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p5, p2

    invoke-virtual {p1, v2, p2, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, p4, p1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p2, p1, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p4, p2

    invoke-virtual {p1, p2, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    :goto_1
    return v1

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-ne p1, v4, :cond_8

    const/high16 p1, 0x43300000    # 176.0f

    const/high16 p2, 0x43820000    # 260.0f

    const/high16 v4, 0x439b0000    # 310.0f

    if-eqz v3, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int p3, p5, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p1, v2, p3, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, p5, p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p2, v2, p1, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_6
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-nez p5, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    sub-int p5, p4, p5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p1, p5, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, p4, p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p2, p1, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    :goto_2
    return v1

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_b

    const/high16 p1, 0x43270000    # 167.0f

    if-eqz v3, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p5, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p5, p1

    goto :goto_3

    :cond_9
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int v0, p4, p1

    div-int/lit8 p3, p3, 0x2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int p5, p3, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/high16 p2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v0, p1

    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, v0

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    invoke-virtual {p1, v0, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    return v1

    :cond_b
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p1, p4, :cond_d

    const/high16 p4, 0x42b00000    # 88.0f

    if-eqz v3, :cond_c

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p1, v2, p3, p2, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_c
    add-int/2addr p2, v0

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/view/View;->layout(IIII)V

    :goto_4
    return v1

    :cond_d
    return v2
.end method

.method public onCustomMeasure(Landroid/view/View;II)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    const/high16 v4, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    int-to-float p2, p2

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    sub-float/2addr p2, p3

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    sub-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_1
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    return v1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    if-nez p1, :cond_9

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result p2

    add-int/2addr p3, p2

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_4

    const/high16 p1, 0x42fc0000    # 126.0f

    if-eqz v2, :cond_3

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v3, p2, p1}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_2
    return v1

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-ne p1, v3, :cond_6

    const/high16 p1, 0x42480000    # 50.0f

    if-eqz v2, :cond_5

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v3, p2, p1}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_3
    return v1

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p1, v3, :cond_9

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerViewIgnoreLayout:Z

    const/high16 p1, 0x42a00000    # 80.0f

    const/high16 v5, 0x41000000    # 8.0f

    if-eqz v2, :cond_7

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v3, p2, p1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    goto :goto_5

    :cond_7
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-eq p1, v1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, v0, p2, v0, p3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    goto :goto_4

    :cond_8
    :goto_5
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerViewIgnoreLayout:Z

    return v1

    :cond_9
    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDismiss()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDismissWithButtonClick(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    return-void
.end method

.method public onHidden()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onHide()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->saveLastCameraBitmap()V

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->updateBitmap()V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pauseCameraPreview()V

    return-void
.end method

.method public onHideShowProgress(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onInit(ZZZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoEnabled:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoEnabled:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->documentsEnabled:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const p2, 0x3e4ccccd    # 0.2f

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const v2, 0x3e4ccccd    # 0.2f

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v2, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p2, Lorg/telegram/ui/ChatActivity;

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_a

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez p2, :cond_a

    sget-object p2, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz p2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p2, Lorg/telegram/messenger/R$string;->NoPhotos:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1, v1, v1, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setLottie(III)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p3, Lorg/telegram/messenger/R$raw;->media_forbidden:I

    const/16 v2, 0x96

    invoke-virtual {p2, p3, v2, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setLottie(III)V

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p2, Lorg/telegram/messenger/R$string;->GlobalAttachMediaRestricted:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p2, Lorg/telegram/messenger/R$string;->AttachMediaRestrictedForever:I

    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "AttachMediaRestrictedForever"

    invoke-static {v2, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p3, Lorg/telegram/messenger/R$string;->AttachMediaRestricted:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "AttachMediaRestricted"

    invoke-static {p1, p3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :goto_4
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_5

    :cond_b
    sget-object p1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_4

    :goto_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_c

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isNoGalleryPermissions()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 p3, 0x64

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    add-int/2addr p1, v0

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->clearSelectedPhotos()V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const p2, 0xf4240

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChatGallery:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_e

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAlbumsDropDown()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastNotifyWidth:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    if-lez v1, :cond_2

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Slowmode:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SlowmodeSendError:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_2
    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_b

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v1

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v3

    add-int/2addr p1, v3

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    :goto_1
    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    goto/16 :goto_b

    :cond_4
    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_5

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v1

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v3

    add-int/2addr p1, v3

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    const-wide/16 v3, 0xc8

    if-ne p1, v1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->startMediaCrossfade()V

    :cond_7
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v1, :cond_8

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    xor-int/2addr p1, v2

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-boolean p1, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iput-boolean v0, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    iput-boolean v0, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda17;

    invoke-direct {v2, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda17;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    if-eq p1, p0, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    if-eqz p1, :cond_1e

    goto/16 :goto_6

    :cond_d
    const/4 v1, 0x2

    if-ne p1, v1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->startMediaCrossfade()V

    :cond_e
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v1, :cond_f

    const/4 p1, 0x1

    goto :goto_4

    :cond_10
    const/4 p1, 0x0

    :goto_4
    xor-int/2addr p1, v2

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-boolean p1, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    iput-boolean v0, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    iput-boolean v0, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda19;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    if-eq p1, p0, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    if-eqz p1, :cond_1e

    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->invalidateGroupsView()V

    goto/16 :goto_b

    :cond_14
    const/4 v3, 0x4

    if-ne p1, v3, :cond_19

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xe

    const-string v5, "image/*"

    const-string v6, "android.intent.action.PICK"

    if-nez v3, :cond_17

    :try_start_1
    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-ne p1, v1, :cond_15

    goto :goto_7

    :cond_15
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v1, :cond_16

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    :catch_0
    move-exception p1

    goto :goto_9

    :cond_16
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    :cond_17
    :goto_7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "video/*"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.sizeLimit"

    const-wide/32 v7, 0x7d000000

    invoke-virtual {p1, v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.INITIAL_INTENTS"

    new-array v5, v2, [Landroid/content/Intent;

    aput-object p1, v5, v0

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_18

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    :cond_18
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    :goto_9
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_19
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1b

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v3

    if-eq v1, v3, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotoPreview(Z)V

    goto :goto_b

    :cond_1b
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1c

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v3

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda20;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showMediaPriceSheet(Landroid/content/Context;JZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    goto :goto_b

    :cond_1c
    const/16 v1, 0xa

    if-lt p1, v1, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne p1, v1, :cond_1d

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChatGallery:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_1e
    :goto_b
    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    return-void
.end method

.method public onPanTransitionStart(ZI)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPanTransitionStart(ZI)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->requestingPermissions:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resetRecordState()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    :cond_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->requestingPermissions:Z

    :goto_0
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->ignoreLayout:Z

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_1

    :goto_0
    const/4 v1, 0x4

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    goto :goto_2

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    div-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastItemSize:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastItemSize:I

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    mul-int v1, v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    sub-int/2addr v4, v0

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    mul-int v1, v1, p1

    sub-int/2addr p1, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int p1, p1, v0

    add-int/2addr v1, p1

    sub-int p1, p2, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridExtraSpace:I

    if-eq v1, p1, :cond_3

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridExtraSpace:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v1, p1, :cond_4

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_3

    :cond_4
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_3
    const/high16 p2, 0x42500000    # 52.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_5

    const/4 p1, 0x0

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    if-eq p2, p1, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p2, v2, p1, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-le v1, p2, :cond_7

    const/high16 p2, 0x41900000    # 18.0f

    goto :goto_4

    :cond_7
    const/high16 p2, 0x41a00000    # 20.0f

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->ignoreLayout:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    :cond_0
    return-void
.end method

.method public onSelectedItemsCountChanged(I)V
    .locals 9

    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le p1, v4, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v5

    cmp-long v7, v5, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-gtz v7, :cond_1

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    const/4 v5, 0x0

    :goto_0
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->documentsEnabled:Z

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-gtz v8, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_1
    const/4 v6, 0x1

    goto :goto_4

    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    if-nez p1, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->documentsEnabled:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gtz v7, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v6, :cond_4

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_3

    :goto_4
    if-eqz p1, :cond_6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :cond_6
    const/4 v0, 0x7

    const/4 v7, 0x5

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-le p1, v4, :cond_7

    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v7, Lorg/telegram/messenger/R$string;->SendAsFiles:I

    :goto_5
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v7, Lorg/telegram/messenger/R$string;->SendAsFile:I

    goto :goto_5

    :cond_8
    :goto_6
    if-lez p1, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v7

    cmp-long v0, v7, v1

    if-gtz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_a

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    if-lez p1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->hasCaption()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    if-lez p1, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v7, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v7, :cond_c

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v2, :cond_c

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    const/4 v2, 0x3

    if-nez v0, :cond_d

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v8, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v8, Lorg/telegram/messenger/R$raw;->photo_spoiler:I

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setAnimatedIcon(I)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_a

    :cond_d
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v7, :cond_e

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :cond_e
    :goto_a
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosCount()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, p1, :cond_10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosHighQualityCount()I

    move-result p1

    if-lez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$string;->SendInStandardQuality:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_quality_sd:I

    :goto_b
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    goto :goto_c

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$string;->SendInHighQuality:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_quality_hd:I

    goto :goto_b

    :goto_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_d

    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :cond_11
    :goto_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    if-eqz v1, :cond_12

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_12
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    const/4 p1, 0x6

    if-nez v0, :cond_13

    if-eqz v1, :cond_14

    :cond_13
    if-nez v6, :cond_15

    if-eqz v5, :cond_14

    goto :goto_f

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_10

    :cond_15
    :goto_f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_10
    const/16 p1, 0x9

    if-eqz v4, :cond_16

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateStarsItem()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotoStarsPrice()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_11

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :goto_11
    return-void
.end method

.method public onSheetKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    const/16 p2, 0x19

    if-eq p1, p2, :cond_0

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0x55

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShutterButton;->getDelegate()Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterReleased()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->clearSelectedPhotos()V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resumeCameraPreview()V

    return-void
.end method

.method public onShown()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraWhenShown:Z

    if-eqz v1, :cond_4

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraWhenShown:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    :cond_4
    return-void
.end method

.method protected openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    sget-object p3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    iput p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraController;->startPreview(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    sget-object p3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cancelTakingPhotos:Z

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p3, :cond_4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    :cond_4
    if-nez p3, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v2, p3, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3, v2}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {p3, v3, v2}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-boolean v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz v2, :cond_6

    iget-object v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    const/16 v4, 0xb

    move-object v11, v2

    const/16 v8, 0xb

    goto :goto_0

    :cond_6
    iget v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_7

    move-object v11, v3

    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    iget-object v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_8

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    const/4 v4, 0x2

    move-object v11, v2

    const/4 v8, 0x2

    goto :goto_0

    :cond_8
    const/4 v4, 0x5

    move-object v11, v3

    const/4 v8, 0x5

    :goto_0
    iget p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz p3, :cond_9

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, p3

    const/4 v7, 0x0

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getAllPhotosArray()Ljava/util/ArrayList;

    move-result-object p3

    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    move-object v6, p3

    move v7, v2

    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p3

    if-eqz p3, :cond_a

    if-eqz p1, :cond_a

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p3

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean p1, p3, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->isVideo:Z

    :cond_a
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;

    invoke-direct {v10, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setAvatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz p1, :cond_b

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-virtual {p1, v3, v0, p2}, Lorg/telegram/ui/PhotoViewer;->enableStickerMode(Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->prepareSegmentImage()V

    :cond_b
    return-void
.end method

.method public pauseCamera(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->needCamera:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isCameraFrontfaceBeforeEnteringEditMode:Ljava/lang/Boolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showCamera()V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setCameraOpenProgress(F)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpenProgress:F

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    int-to-float v4, v4

    const/4 v5, 0x2

    aget v2, v2, v5

    int-to-float v2, v2

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getRightInset()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    const/4 v8, 0x0

    aget v8, v7, v8

    aget v7, v7, v3

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->additionCloseCameraY:F

    const/4 v10, 0x0

    cmpl-float v11, v1, v10

    if-nez v11, :cond_1

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v8}, Landroid/view/View;->setTranslationX(F)V

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v3, v12, v3

    iget v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    add-float/2addr v3, v12

    invoke-virtual {v11, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v11, v4, v2}, Lorg/telegram/messenger/camera/CameraView;->getTextureHeight(FF)F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v12, v5, v6}, Lorg/telegram/messenger/camera/CameraView;->getTextureHeight(FF)F

    move-result v12

    div-float/2addr v11, v12

    div-float v12, v2, v6

    div-float v13, v4, v5

    iget-boolean v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v14, :cond_2

    float-to-int v14, v5

    float-to-int v10, v6

    sub-float v17, v15, v1

    mul-float v11, v11, v17

    add-float/2addr v11, v1

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v15}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/view/View;->setScaleX(F)V

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v15}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/view/View;->setScaleY(F)V

    mul-float v13, v13, v17

    add-float/2addr v13, v1

    mul-float v12, v12, v17

    add-float/2addr v12, v1

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v15, v11, v12

    mul-float v15, v15, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v15, v12

    sub-float v13, v11, v13

    mul-float v13, v13, v5

    div-float/2addr v13, v12

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    mul-float v12, v8, v17

    const/16 v16, 0x0

    mul-float v18, v1, v16

    add-float v18, v12, v18

    sub-float v13, v18, v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setTranslationX(F)V

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    mul-float v13, v7, v17

    mul-float v9, v9, v1

    add-float/2addr v9, v13

    sub-float/2addr v9, v15

    invoke-virtual {v11, v9}, Landroid/view/View;->setTranslationY(F)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    sub-float/2addr v13, v9

    iput v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipTop:F

    add-float/2addr v7, v2

    mul-float v7, v7, v17

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v7, v2

    mul-float v6, v6, v1

    add-float/2addr v7, v6

    iput v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipBottom:F

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v12, v2

    iput v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipLeft:F

    add-float/2addr v8, v4

    mul-float v8, v8, v17

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v8, v2

    mul-float v5, v5, v1

    add-float/2addr v8, v5

    iput v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipRight:F

    goto :goto_0

    :cond_2
    float-to-int v14, v4

    float-to-int v10, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipTop:F

    iput v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipBottom:F

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipLeft:F

    iput v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipRight:F

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v4, v1, v2

    if-gtz v4, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v15, v2, v1

    invoke-virtual {v4, v15}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v1, v14, :cond_4

    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, v10, :cond_5

    :cond_4
    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    return-void
.end method

.method public setCheckCameraWhenShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraWhenShown:Z

    return-void
.end method

.method public setStarsPrice(J)V
    .locals 6

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-wide p1, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    iput-boolean v1, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    iput-boolean v1, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedItemsCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onSelectedItemsCountChanged(I)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkSelectedCount(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateCheckedPhotos()V

    :cond_2
    return-void
.end method

.method public setTranslationY(F)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x42200000    # 40.0f

    div-float v0, p1, v0

    const v1, -0x42333333    # -0.1f

    mul-float v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    add-float/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v4

    add-float/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->parentImageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->finishOnDone:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->startFrom(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->startFrom(Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setDelegate(Lorg/telegram/ui/Components/AvatarConstructorFragment$Delegate;)V

    return-void
.end method

.method public showCamera()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_a

    const v0, 0x181e0

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    xor-int/2addr v0, v3

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$18;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isCameraFrontfaceBeforeEnteringEditMode:Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->openWithFrontFaceCamera:Z

    :goto_0
    invoke-direct {v4, p0, v5, v6, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;ZZ)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraCell:Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/camera/CameraView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v5, v4, Lorg/telegram/ui/ChatActivity;

    if-eqz v5, :cond_3

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath(Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/camera/CameraView;->setRecordFile(Ljava/io/File;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/camera/CameraView;->setFpsLimit(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-static {v0, v4}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0, v3}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrInstantCamera:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$20;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x2

    invoke-virtual {v0, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    const v4, 0x3e4ccccd    # 0.2f

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v4, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_7
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v1, v3

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    :goto_4
    return-void
.end method

.method public updateAvatarPicker()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    return-void
.end method

.method protected updateCheckedPhotoIndices()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setNum(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setNum(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected updateCheckedPhotos()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v6, :cond_7

    move-object v6, v5

    check-cast v6, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v7, v8, :cond_1

    add-int/lit8 v5, v5, -0x1

    :cond_1
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-boolean v7, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    if-eqz v5, :cond_3

    iget-boolean v7, v5, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v8, v8, Lorg/telegram/ui/ChatActivity;

    if-eqz v8, :cond_5

    iget-boolean v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v7, :cond_5

    if-eqz v5, :cond_4

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v7, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :cond_4
    if-eqz v5, :cond_6

    sget-object v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    sget-object v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v6, v3, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_11

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v6, :cond_10

    move-object v6, v5

    check-cast v6, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v7, v8, :cond_9

    add-int/lit8 v5, v5, -0x1

    :cond_9
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-boolean v7, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    if-eqz v5, :cond_b

    iget-boolean v7, v5, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v8, v8, Lorg/telegram/ui/ChatActivity;

    if-eqz v8, :cond_d

    iget-boolean v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v7, :cond_d

    if-eqz v5, :cond_c

    sget-object v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v8, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    goto :goto_8

    :cond_c
    const/4 v7, -0x1

    :goto_8
    if-eqz v5, :cond_f

    sget-object v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_9

    :cond_d
    if-eqz v5, :cond_e

    sget-object v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v7, -0x1

    :goto_9
    const/4 v5, 0x1

    goto :goto_a

    :cond_e
    const/4 v7, -0x1

    :cond_f
    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v6, v7, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_11
    return-void
.end method

.method protected updatePhotosCounter(Z)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v1, :cond_b

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Media"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    if-ne v0, v2, :cond_4

    if-eqz p1, :cond_9

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaSelected"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Videos"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    if-ne v0, v2, :cond_6

    if-eqz p1, :cond_9

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideosSelected"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Photos"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    if-ne v0, v2, :cond_8

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PhotosSelected"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-le v0, v5, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCanOpenPreview(Z)V

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    :cond_b
    :goto_3
    return-void
.end method

.method public updateSelected(Ljava/util/HashMap;Ljava/util/ArrayList;Z)V
    .locals 7

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateCheckedPhotoIndices()V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v1, v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0, v2, v3, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_5

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v1, :cond_5

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_4

    :cond_5
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    :cond_6
    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.class public Lorg/telegram/ui/Stories/recorder/StoryRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;,
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;,
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;,
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;,
        Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;
    }
.end annotation


# static fields
.field private static firstOpen:Z = true

.field private static instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# instance fields
.field private actionBarButtons:Landroid/widget/LinearLayout;

.field private actionBarContainer:Landroid/widget/FrameLayout;

.field private final activity:Landroid/app/Activity;

.field private afterPlayerAwait:Ljava/lang/Runnable;

.field private animatedRecording:Z

.field private animatedRecordingWasInCheck:Z

.field private applyContainerViewTranslation2:Z

.field private audioGrantedCallback:Ljava/lang/Runnable;

.field private awaitingPlayer:Z

.field private backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

.field private blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field private botId:J

.field private botLang:Ljava/lang/String;

.field private cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

.field private cameraZoom:F

.field private canChangePeer:Z

.field private captionContainer:Landroid/widget/FrameLayout;

.field private captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

.field private captionEditOverlay:Landroid/view/View;

.field private changeDayNightView:Landroid/view/View;

.field private changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

.field private changeDayNightViewProgress:F

.field private final clipPath:Landroid/graphics/Path;

.field private closeListener:Ljava/lang/Runnable;

.field private closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

.field private collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

.field private collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

.field private collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

.field private collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

.field private collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

.field private containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

.field private containerViewBackAnimator:Landroid/animation/ValueAnimator;

.field private controlContainer:Landroid/widget/FrameLayout;

.field private coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

.field private coverValue:J

.field private cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

.field private cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

.field private final currentAccount:I

.field private currentEditMode:I

.field private currentPage:I

.field private currentRoundRecorder:Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

.field private dismissProgress:F

.field private downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

.field private draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

.field private dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

.field private dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private editModeAnimator:Landroid/animation/AnimatorSet;

.field private entries:Ljava/util/ArrayList;

.field private fastClose:Z

.field private flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

.field private flashButtonMode:Ljava/lang/String;

.field private flashButtonResId:I

.field private flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

.field private forceBackgroundVisible:Z

.field private fromGallery:Z

.field private final fromRect:Landroid/graphics/RectF;

.field private fromRounding:F

.field private fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

.field private frontfaceFlashMode:I

.field private frontfaceFlashModes:Ljava/util/ArrayList;

.field private frozenDismissProgress:Ljava/lang/Float;

.field private final fullRectF:Landroid/graphics/RectF;

.field private galleryClosing:Z

.field private galleryLayouted:Ljava/lang/Runnable;

.field private galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

.field private galleryListViewOpening:Ljava/lang/Boolean;

.field private galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

.field private galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private isBackgroundVisible:Z

.field private isDark:Z

.field private isReposting:Z

.field private isShown:Z

.field private isVideo:Z

.field private lastCollageLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

.field private lastGalleryScrollPosition:Landroid/os/Parcelable;

.field private lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

.field private muteButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private navbarContainer:Landroid/widget/FrameLayout;

.field private noCameraPermission:Z

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private onCloseListener:Ljava/lang/Runnable;

.field private onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback4;

.field private onFullyOpenListener:Ljava/lang/Runnable;

.field private openCloseAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private openType:I

.field private outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field private outputFile:Ljava/io/File;

.field private pageAnimator:Landroid/animation/AnimatorSet;

.field private paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

.field private paintViewEntitiesView:Landroid/view/View;

.field private paintViewRenderInputView:Landroid/view/View;

.field private paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private paintViewSelectionContainerView:Landroid/view/View;

.field private paintViewTextDim:Landroid/view/View;

.field private photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

.field private photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

.field private photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

.field private photoFilterViewTextureView:Landroid/view/TextureView;

.field private playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

.field private prepareClosing:Z

.field private preparingUpload:Z

.field private previewAlreadySet:Z

.field private previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

.field private previewContainer:Landroid/widget/FrameLayout;

.field private previewH:I

.field private previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

.field private previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

.field private previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

.field private previewW:I

.field private privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

.field private qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

.field private qrScanner:Lorg/telegram/ui/Stories/recorder/QRScanner;

.field private recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

.field private final recordControlDelegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

.field private recordingAnimator:Landroid/animation/AnimatorSet;

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private removeCollageHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private requestedCameraPermission:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private scrollingX:Z

.field private scrollingY:Z

.field selectedDialogId:J

.field private selectedEntries:Ljava/util/ArrayList;

.field private selectedEntriesOrder:Ljava/util/ArrayList;

.field private shiftDp:I

.field private showSavedDraftHint:Z

.field private shownLimitReached:Z

.field private stoppingTakingVideo:Z

.field private storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

.field private switchingStory:Z

.field private takingPhoto:Z

.field private takingVideo:Z

.field private thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

.field private themeButton:Landroid/widget/ImageView;

.field private themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private trash:Lorg/telegram/ui/Stories/recorder/TrashView;

.field private underControls:I

.field private underStatusBar:Z

.field private videoError:Z

.field private videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

.field private videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

.field private videoTimelineContainerView:Landroid/widget/FrameLayout;

.field private videoTimerShown:Z

.field private videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

.field private wasGalleryOpen:Z

.field private wasSend:Z

.field private wasSendPeer:J

.field private whenOpenDone:Ljava/lang/Runnable;

.field private final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final windowManager:Landroid/view/WindowManager;

.field private windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

.field private zoomControlAnimation:Landroid/animation/AnimatorSet;

.field private zoomControlHideRunnable:Ljava/lang/Runnable;

.field private zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;


# direct methods
.method public static synthetic $r8$lambda$-chghhlFMOOxIsYq62q65y6Era0(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$close$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$-ytQ93R3H7PYnv4FnVJRm5YQYLQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$36(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0K48UcChz9z1hdBN76OMA1p_I50(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showPremiumPeriodBulletin(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$10lV0hG8kN34YL1jPetDWjLVVJg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/CollageLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$26(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1uju0JJvcfXZDlcc-dCMeFX48lg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onNavigateStart$66(Lorg/telegram/ui/Components/FilterGLThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2JjMfcwxP3SMqfDq5_429UFh-GU(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createFilterPhotoView$84(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3-xqaucy9XTAEnym6ITBHQcNUBw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3OSQe4CQHqNiMPQvzuVeQ0fqM_g(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$processDone$38(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3o30ULST9qLv84shUfQ0YZvSaC0(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showLimitReachedSheet$98(ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4HnbmQSVDS1_aG6wd01-yhsTy14(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$9(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4dOazbDza3KrLk15p07ObPvMt1E(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateGalleryListView$63(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4jJdU5zQjZb4rVP3IoF7BMzlFiQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$getThanosEffect$100()V

    return-void
.end method

.method public static synthetic $r8$lambda$4ldEPnuvTa6NPuaWT_twoZcY_Pw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$51-vf8cjFtsFqTDXXWTcgowX-NE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$toggleTheme$103()V

    return-void
.end method

.method public static synthetic $r8$lambda$5SUXsx1jfKo05uB5Un4xNnUfqlA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$28(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$5b2X2UTwTKIKih1Krn_q7dfIzWU(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5euUlNchsOoKDr3DaFyokpRl7ds(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onNavigateStart$65()V

    return-void
.end method

.method public static synthetic $r8$lambda$5yZoclUdpEdi4CHgm3LKkcDRnFc(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$processDone$42(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Sn26ylGW2elEQYw-9zGTh8uTEA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$processDone$39(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7TD5Xh9SMVm_dOoLx_Z_jhzsqJQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$33(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$87xPXxFrcx7-pa9SwRywYpKVf_A(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createGalleryListView$59(ZLjava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$882x7ojKTGBIT_QbxM3NFCGi7Jo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onResumeInternal$94()V

    return-void
.end method

.method public static synthetic $r8$lambda$9dHv2hdX4OolOa4kVV98U90OfXs(Lorg/telegram/ui/Stories/recorder/StoryEntry;ZLjava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$applyPaintInBackground$74(Lorg/telegram/ui/Stories/recorder/StoryEntry;ZLjava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$APTl5dnm5qamN0Bhfb3sLs8_pdo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bmzyv0BQEktromMGcdE7bYhioic(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openPremium()V

    return-void
.end method

.method public static synthetic $r8$lambda$CW_6FaEVxneCux3ELptVGFERVXQ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$toggleTheme$102(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CsguOtBT-_biNqw8kSJbKt79Wrk(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$requestCameraPermission$93(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$D4XEPpns-O8FDzsedusUqEIdqlw(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DHTzZx85iA3ZB5tF10bKjrzfrWM(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$applyPaintSwitching$77(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DmDvOdkPIxIPlOH24bTjSmCUR4Y(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$processDone$41(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DqHjhw6rWUzOg3szin14202i9Sk(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onRequestPermissionsResultInternal$95(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DvjH9x3kCDsjTks3c3gr9-j9SDU(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateOpenTo$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EvqXgYxXiGoAZAY77mr1-gxnnK4(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$applyPaintSwitching$78(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FHOzrHFHaaJJsdzpa3UkTYOcXgs(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showDismissEntry$89(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FOKXmnnHirI7tRSasGy6zSwKHlo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onRequestPermissionsResultInternal$97(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FvdqXUsuKbqIMO_mU947kDBiJoI(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createPhotoPaintView$72()V

    return-void
.end method

.method public static synthetic $r8$lambda$FxKiXy_HK5SLKobZi2aZlgPznR0(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GF2naDWaBTzidEyoviAeLk_RzEw()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$HNnDwj2yBBJvfegeG1f6AflEndI(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onOpenDone()V

    return-void
.end method

.method public static synthetic $r8$lambda$I3aMzkr1PfYZnYEZrbYnHRp6-U8(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateContainerBack$56(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IgDbH5bsvR19aqgV1QNnrtcjpU8(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$JUnBtsyaEDfNpBlr9FzboSdEbo4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onNavigateStart$67(Ljava/lang/Boolean;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JvnTRwLL07Wa8SuvaOgS-an_cNU(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$getThemeButton$101(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KPOcO3l5AIC3rSoH9SP-ULnVrQE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KovaA7Idoiu0tSpke-7oC28Kp1Q(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$L1nhf-RNrLb0GNVIzI18SL1E9Sk(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onCloseDone()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mkn0kmFPEHTkf85pvev7ULUrAj8(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateGalleryListView$61(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NG6ZKRHgvH1Wrrsxr2O5c1imn70(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$37(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NO9FRoKAz1kEZLAXlKJsLOr6zR4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getUiBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OYlGggqKvC7nmMxSgVBpMwwtGZM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$uploadInternal$48()V

    return-void
.end method

.method public static synthetic $r8$lambda$P0i58qRegl6igeR2qdHXjiorUoE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$processDone$43()V

    return-void
.end method

.method public static synthetic $r8$lambda$PqnOVhV-DMV23uqTiCBLGcaSCoE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createGalleryListView$58()V

    return-void
.end method

.method public static synthetic $r8$lambda$PutA1EhcsFXUw3CS2TY6FKvU6aA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createFilterPhotoView()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q-5uZmZQmNTPDf9Dp6iuxG1Sx-A(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$22(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RP9Opd9O77EOCv9MbzxIRUTOqsA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$RPUUed17wvSJbgXivtEJXudMKYM(Lorg/telegram/ui/Stories/recorder/StoryEntry;ZLjava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$applyPaintSwitching$81(Lorg/telegram/ui/Stories/recorder/StoryEntry;ZLjava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rk35dL3OcWrDVasqNsAQlOzQtZA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rn03tM4uGRbXwRMqcqggelHfvP4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$switchToEditMode$71(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RqetEbuNsnIX9jMjNZ0H606TQrY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$upload$45(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TFF5sM828xOgTt2_jrfOgWouk-g(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$applyPaintSwitching$76(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$THL--ka_MZ_r3u1uGrAyNRSeDkQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tdk_oTaa46-9WhGv0-t9w6bgyeY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$navigateToPreviewWithPlayerAwait$55(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TnepJYgDANf09EN6ssYhFDYpiyE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/PaintView;IILorg/telegram/ui/Stories/recorder/StoryEntry;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$applyPaintInBackground$75(Lorg/telegram/ui/Stories/recorder/PaintView;IILorg/telegram/ui/Stories/recorder/StoryEntry;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tp8RmGIbINLdrZWFAc8k0v9Zl48(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$processDone$44(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U9u4V8dbt50k0cu8_f4eDgQ6Zrk(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onNavigateStart$64()V

    return-void
.end method

.method public static synthetic $r8$lambda$Xm_A50AtcIX3hDQknIgxnOmgr3c(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createFilterPhotoView$83(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YEvAkr_4juOMTg0sMyX01v03pog(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$switchToEditMode$70(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_IvUriGKymDy9k0BnFHMsEiDh0I(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$aY9f4qPIIhBFkgDiVngSPdFEebs(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$auugmX6ZJZtb7tOEjh4mC0Exizo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$processDone$40(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bAfkbaADfVPJfT23UHqO4GURt4g(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onCloseDone$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$bxn3jll7Kb9Z-resnjWqFbwvp_0(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$10(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cI1-EPmUbzFIqQCzEFcQZi7CJD4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$32(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$csDvzU9Eq5-B2oqRLmxIvKjzGxU(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/PaintView;IILorg/telegram/ui/Stories/recorder/StoryEntry;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$applyPaintSwitching$82(Lorg/telegram/ui/Stories/recorder/PaintView;IILorg/telegram/ui/Stories/recorder/StoryEntry;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dQj4yy2GMK0xdO9phhDTgkh1P_g(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createCameraView$86()V

    return-void
.end method

.method public static synthetic $r8$lambda$dijmxZwh-vaUsDSfnK9DfvhIVrg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createGalleryListView$60(Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eAJBqDjL16cf4M_COP6fygoS2Wc(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$openForward$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ear0F3B7TsVRrivWrtb11YNKO9k(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$uploadInternal$49(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gcvW1_IHJoOWCFkpvEmUQ2MwtrM(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$prepareThumb$50(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gqOKK-qNQSzo0Yq588bbFJuzKHE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$onRequestPermissionsResultInternal$96(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hkGksq4sNOcA8-O1vaVqJmDU8ms(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$19(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hnbbyvaoWk2Yt5l1kMwUu9lgbZc(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$20(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iLn0bQmXHg9zVdTZ_cjbUSmaelo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$openEdit$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$imnRkaEPgxJrZwWfyUlz0JTKV0c(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$30(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ip68zZdZ01Hzbnh4XAcHhmbiW80(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$destroyCameraView$92()V

    return-void
.end method

.method public static synthetic $r8$lambda$jQiECj3cvl7lpxNiUXszqiMgJew(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showVideoTimer$52(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jWaPsfIpvZ8JEO0dHWaAkMi7KDQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$34(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kKYyuihfeLqfDiJNFNbVVfMUeuQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$kL3HEs7XM5sQ1rTYFdtJZHd7tC8(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$animateGalleryListView$62(FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$lRb7NfQlij8z9-3iSCxb87CK5p4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createCameraView$87(Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mHoLSN7nyZvNJ1k7yBL4YwFCqyE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showZoomControls$53()V

    return-void
.end method

.method public static synthetic $r8$lambda$mXTAwhXgYIw4bXEeOfB92ls__pQ(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$saveLastCameraBitmap$88(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o1zVkwEdLyvqwq9dw5PJWs_K5Xk(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$applyPaintSwitching$80(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pRSESKja-7LTXDNDlyKgdTHFIUc(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createPhotoPaintView$73()V

    return-void
.end method

.method public static synthetic $r8$lambda$pXoKMWBZPHohv4_1D_mrBVWYKoc(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showZoomControls$54()V

    return-void
.end method

.method public static synthetic $r8$lambda$pn_nN4vNitDa-zwxNqSU4oEeY4M(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    return-void
.end method

.method public static synthetic $r8$lambda$ppGWhZzFn77CAVoDYc1-wkvEeBY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$destroyCameraView$91()V

    return-void
.end method

.method public static synthetic $r8$lambda$qxJGxzY8Jtj2hmrdpvHJ46pwIoA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$31(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r2ig3F0MQP0EzgdIfMFtleO3vLI(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$openPremium$99(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rII6d0U74l88BYXeCkve4zUcAIo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$switchTo$46(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sFTJXAETxQ4Hy4zwHh6UnzaJlQ8(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$createFilterPhotoView$85(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$scUQdqCM7sjLa3jU0zCEiAC3rqY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$tLIir5L9HRljGEAvmCRTOEmp0DY(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;ZLjava/io/File;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$prepareThumb$51(Landroid/graphics/Bitmap;ZLjava/io/File;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tTWmLHhmy4_qlXOFFstFXMtHJsA(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$11(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-uYBQNoIZD38m8L-BVJTAIjOfE(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$switchToEditMode$68(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFftS0kIND2grBN5iMX0TCD0lWI(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZLorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$uploadInternal$47(ZLorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ubESGfNnB4wZFeZrwRCxmxhSsq4(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$switchToEditMode$69(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yZokuSjH8eshRN7OVIBiB4ljeWg(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showDismissEntry$90(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yknVAo88ZvEIHPU4-RVsrHFeJCY(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$applyPaintSwitching$79(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yzGYoFdPawLfyEZnCZ1ohq7LI5o(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$initViews$15(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSendPeer:J

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->canChangePeer:Z

    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->rectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fullRectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->clipPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->rect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntriesOrder:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->stoppingTakingVideo:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    const/4 v3, -0x3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->preparingUpload:Z

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControlDelegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerShown:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x63

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-static {p2, v0}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_0
    const v0, 0x8010100

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    const v0, -0x77feff00

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    const/16 v0, 0x10

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    return-void
.end method

.method static synthetic access$10100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchTo(I)V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    return p1
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$10302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrScanner:Lorg/telegram/ui/Stories/recorder/QRScanner;

    return-object p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    return p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkFrontfaceFlashModes()V

    return-void
.end method

.method static synthetic access$10702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isDark:Z

    return p1
.end method

.method static synthetic access$10800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkIsDark()V

    return-void
.end method

.method static synthetic access$11000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    return p0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    return p1
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    return-wide v0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$11302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    return p1
.end method

.method static synthetic access$11400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->stoppingTakingVideo:Z

    return p0
.end method

.method static synthetic access$11402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->stoppingTakingVideo:Z

    return p1
.end method

.method static synthetic access$11500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    return-void
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    return-object p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    return-object p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestGalleryPermission()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashModes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateRecording(ZZ)V

    return-void
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setAwakeLock(Z)V

    return-void
.end method

.method static synthetic access$12402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$12500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateEnd(II)V

    return-void
.end method

.method static synthetic access$12602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$12700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    return p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryLayouted:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$12802(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryLayouted:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$12900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underControls:I

    return p0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underControls:I

    return p1
.end method

.method static synthetic access$13100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onSwitchEditModeEnd(II)V

    return-void
.end method

.method static synthetic access$13200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyGalleryListView()V

    return-void
.end method

.method static synthetic access$13300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView(Z)V

    return-void
.end method

.method static synthetic access$13400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    return p0
.end method

.method static synthetic access$13500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PlayPauseButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    return-object p0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$13702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->audioGrantedCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$13800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ToggleButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    return-object p0
.end method

.method static synthetic access$13900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetBottom:I

    return p0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetBottom:I

    return p1
.end method

.method static synthetic access$14100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$14200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewProgress:F

    return p0
.end method

.method static synthetic access$14202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewProgress:F

    return p1
.end method

.method static synthetic access$14300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$14402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$14500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtonsOffsets()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fullRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyOpenProgress()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->clipPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateContainerBack()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Stories/recorder/GalleryListView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryClosing:Z

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryClosing:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    return p0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingX:Z

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingX:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    return p1
.end method

.method static synthetic access$3916(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasGalleryOpen:Z

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isGalleryOpen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    return p0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView()V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveCameraFace(Z)V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->useDisplayFlashlight()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/StoryWaveEffectView;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetTop:I

    return p0
.end method

.method static synthetic access$6202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetTop:I

    return p1
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetLeft:I

    return p0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetLeft:I

    return p1
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetRight:I

    return p0
.end method

.method static synthetic access$6402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->insetRight:I

    return p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewW:I

    return p0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewW:I

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewH:I

    return p0
.end method

.method static synthetic access$6602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewH:I

    return p1
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underStatusBar:Z

    return p0
.end method

.method static synthetic access$6702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->underStatusBar:Z

    return p1
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ThanosEffect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryThemeSheet;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    return-object p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CropEditor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CropInlineEditor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    return-object p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEditOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    return-void
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilterMatrix()V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    return-object p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    return-object p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/BlurringShader$BlurManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    return-object p0
.end method

.method static synthetic access$8502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/CollageLayout;)Lorg/telegram/ui/Stories/recorder/CollageLayout;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastCollageLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    return-object p1
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    return-object p0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    return-object p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onFullyOpenListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onFullyOpenListener:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p0
.end method

.method static synthetic access$9102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p1
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openPremium()V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewButtons;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    return-object p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestAudioPermission()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentRoundRecorder:Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    return-object p0
.end method

.method static synthetic access$9702(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;)Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentRoundRecorder:Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    return-object p1
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TimelineView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    return-object p0
.end method

.method private animateContainerBack()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->getTranslationY1()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->getTranslationY2()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda79;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda79;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animateGalleryListView(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasGalleryOpen:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView()V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->firstLayout:Z

    if-eqz v2, :cond_3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryLayouted:Ljava/lang/Runnable;

    return-void

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v2, :cond_7

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView()V

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz v2, :cond_8

    iput-boolean v0, v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    :cond_8
    if-eqz p1, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->hide(Z)V

    :cond_9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    if-eqz p1, :cond_a

    const/4 v4, 0x0

    goto :goto_0

    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->top()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x40200000    # 2.5f

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    xor-int/lit8 v6, p1, 0x1

    iput-boolean v6, v5, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerViewBackAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_1

    :cond_b
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyContainerViewTranslation2:Z

    if-eqz p1, :cond_c

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v2, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43af0000    # 350.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_2

    :cond_c
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v2, v5, v0

    aput v4, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    if-nez p1, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-nez v0, :cond_d

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    :cond_d
    if-nez p1, :cond_e

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-nez p1, :cond_e

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    :cond_e
    return-void
.end method

.method private animateOpenTo(FZLjava/lang/Runnable;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {p2, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p2, v3, v1

    aput p1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FLjava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xfa

    :goto_0
    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    :goto_1
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :cond_1
    cmpl-float p2, p1, v2

    if-gtz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->getTranslationY1()F

    move-result p2

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    cmpg-float p2, p1, v2

    if-gez p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fastClose:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fastClose:Z

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x190

    goto :goto_0

    :cond_4
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p3}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    goto :goto_1

    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_5
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frozenDismissProgress:Ljava/lang/Float;

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyOpenProgress()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->invalidate()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    :goto_4
    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    sput-boolean v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->firstOpen:Z

    :cond_7
    return-void
.end method

.method private animateRecording(ZZ)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-ne v2, p1, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecordingWasInCheck:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v3

    if-ne v2, v3, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    :cond_5
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecordingWasInCheck:Z

    if-eqz p1, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v2, v1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    :cond_6
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    if-eqz p2, :cond_f

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v8, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v8

    if-nez v8, :cond_7

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    :goto_0
    new-array v9, v0, [F

    aput v8, v9, v1

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz p1, :cond_8

    iget v10, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v10, :cond_8

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v10, 0x0

    goto :goto_1

    :cond_8
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    :goto_1
    new-array v11, v0, [F

    aput v10, v11, v1

    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez p1, :cond_9

    iget v11, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v11, :cond_9

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    new-array v11, v0, [F

    aput v2, v11, v1

    invoke-static {v10, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez p1, :cond_a

    iget v11, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v11, :cond_a

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    goto :goto_3

    :cond_a
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    :goto_3
    new-array v12, v0, [F

    aput v11, v12, v1

    invoke-static {v10, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_b

    iget v12, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v12, :cond_b

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_b
    const/4 v3, 0x0

    :cond_c
    new-array v12, v0, [F

    aput v3, v12, v1

    invoke-static {v11, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_d

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez p1, :cond_d

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v5, p1

    :cond_e
    new-array p1, v0, [F

    aput v5, p1, v1

    invoke-static {v7, v9, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v6, v4, v1

    aput-object v8, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v10, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    const/4 v0, 0x5

    aput-object p1, v4, v0

    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_8

    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-eqz p1, :cond_10

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v0, :cond_10

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v0

    if-nez v0, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-eqz p1, :cond_11

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v0, :cond_11

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_5

    :cond_11
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez p1, :cond_12

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v0, :cond_12

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez p1, :cond_13

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v0, :cond_13

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    goto :goto_7

    :cond_13
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_7
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_14

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v0, :cond_14

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    const/4 v3, 0x0

    :cond_15
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez p1, :cond_16

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez p1, :cond_16

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_16
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v5, p1

    :cond_17
    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationY(F)V

    :goto_8
    return-void
.end method

.method private applyFilter(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->hasChanges()Z

    move-result v0

    or-int/2addr v0, v2

    iput-boolean v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->updateFilter(Lorg/telegram/ui/Components/PhotoFilterView;Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private applyFilterMatrix()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    if-eqz v1, :cond_0

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private applyOpenProgress()V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fullRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fullRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fullRectF:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->rectF:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fullRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->view:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fullRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private applyPaint()V
    .locals 26

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearPaint()V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v11, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget v5, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v6, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->getLcm()J

    move-result-wide v3

    const-wide/16 v5, 0x1d4c

    const-wide/16 v7, 0x1388

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getMasks()Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    iput-object v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v4

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v14, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v14, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget v8, v14, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v9, v14, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/4 v12, 0x0

    const/4 v5, 0x1

    xor-int/lit8 v13, v2, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v14}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    :cond_4
    :try_start_0
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :try_start_1
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    :try_start_2
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_7
    :goto_2
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v8, v8

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v7, v7

    const/16 v21, 0x65

    const/16 v22, 0x65

    const/16 v19, 0x57

    const/16 v20, 0x0

    move-object v15, v0

    move/from16 v17, v8

    move/from16 v18, v7

    invoke-static/range {v15 .. v22}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    iput-object v6, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    const/16 v6, 0x64

    const-string v7, "webp"

    if-eqz v2, :cond_c

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    if-eqz v0, :cond_9

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v2, v8, v10

    if-eqz v2, :cond_c

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_a

    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isDark:Z

    invoke-static {v3, v0, v8, v9, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_c

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v8, v7}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v8

    iput-object v8, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v8, v0, v9, v10}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    :try_start_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v9, v9, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0, v6, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    :goto_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    throw v0

    :cond_c
    :goto_6
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v2, :cond_f

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    if-eqz v0, :cond_d

    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    :cond_d
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_f

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget-object v8, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v8}, Lorg/telegram/ui/Stories/recorder/PaintView;->findMessageView()Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v9, v8, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ne v9, v5, :cond_f

    if-lez v2, :cond_f

    if-lez v0, :cond_f

    iget-object v9, v8, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v9, :cond_f

    iget-object v8, v8, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v9

    float-to-int v9, v9

    if-lez v9, :cond_f

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v9

    float-to-int v9, v9

    if-lez v9, :cond_f

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v9

    int-to-float v2, v2

    div-float/2addr v9, v2

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v11

    int-to-float v0, v0

    div-float/2addr v11, v0

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float v2, v2, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    float-to-int v2, v2

    mul-float v0, v0, v9

    div-float/2addr v0, v11

    float-to-int v0, v0

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/16 v12, 0x8

    new-array v12, v12, [F

    :goto_8
    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v13

    array-length v13, v13

    if-ge v10, v13, :cond_e

    mul-int/lit8 v13, v10, 0x2

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v14

    aget v14, v14, v10

    int-to-float v14, v14

    aput v14, v12, v13

    add-int/2addr v13, v5

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v14

    aget v14, v14, v10

    int-to-float v14, v14

    aput v14, v12, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v10, v14, v14}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v14, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v2, v2

    mul-float v2, v2, v11

    div-float/2addr v2, v11

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v15

    div-float/2addr v15, v11

    sub-float v15, v2, v15

    int-to-float v0, v0

    mul-float v0, v0, v11

    div-float/2addr v0, v11

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v16

    div-float v16, v16, v11

    sub-float v3, v0, v16

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v16

    div-float v16, v16, v11

    add-float v2, v2, v16

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v8

    div-float/2addr v8, v11

    add-float/2addr v0, v8

    invoke-virtual {v14, v15, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v14, v12, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v10, v13, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :try_start_7
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v2, v7}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v9, v0, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    :goto_9
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    if-nez v4, :cond_10

    iget-object v10, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v18, v0

    invoke-virtual/range {v10 .. v18}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v6, v6

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v4, v4

    const/16 v24, 0x65

    const/16 v25, 0x65

    const/16 v22, 0x57

    const/16 v23, 0x0

    move-object/from16 v18, v0

    move/from16 v20, v6

    move/from16 v21, v4

    invoke-static/range {v18 .. v25}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasBlur()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v8, v6

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v9, v4

    const/16 v12, 0x65

    const/16 v13, 0x65

    const/16 v10, 0x57

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v13}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    :goto_a
    return-void
.end method

.method private applyPaintInBackground(Ljava/lang/Runnable;)V
    .locals 11

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearPaint()V

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v7

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasBlur()Z

    move-result v6

    iget v3, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v4, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    sget-object v9, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v10, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda99;

    move-object v0, v10

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda99;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/PaintView;IILorg/telegram/ui/Stories/recorder/StoryEntry;ZZLjava/lang/Runnable;)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private applyPaintMessage()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    const-string v3, "webp"

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget v5, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v6, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    xor-int/lit8 v10, v0, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v1, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageFile:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    throw v1

    :cond_3
    :goto_4
    return-void
.end method

.method private applyPaintSwitching(Ljava/lang/Runnable;)V
    .locals 11

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_2

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearPaint()V

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v7

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasBlur()Z

    move-result v6

    iget v3, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iget v4, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    sget-object v9, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v10, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda98;

    move-object v0, v10

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda98;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/PaintView;IILorg/telegram/ui/Stories/recorder/StoryEntry;ZZLjava/lang/Runnable;)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static cameraBtnSpan(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "c"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lorg/telegram/messenger/R$drawable;->story_camera:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v2, v1

    div-int/lit8 v3, v2, 0x4

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$32;

    invoke-direct {v1, p0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$32;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v4, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private checkBackgroundVisibility()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isBackgroundVisible:Z

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    instance-of v2, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isBackgroundVisible:Z

    return-void
.end method

.method private checkFrontfaceFlashModes()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    if-gez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "frontflash"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashModes:Ljava/util/ArrayList;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashModes:Ljava/util/ArrayList;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashModes:Ljava/util/ArrayList;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "frontflash_warmth"

    const v3, 0x3f666666    # 0.9f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setWarmth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "frontflash_intensity"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setIntensity(F)V

    :cond_0
    return-void
.end method

.method private checkIsDark()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isDark:Z

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0xc

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0xa

    if-ge v5, v6, :cond_3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    add-int/lit8 v8, v5, 0x1

    mul-int v8, v8, v2

    add-int/lit8 v7, v7, 0x1

    mul-int v9, v7, v3

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v8

    add-float/2addr v4, v8

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const v0, 0x3e6147ae    # 0.22f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isDark:Z

    return-void

    :cond_5
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isDark:Z

    return-void
.end method

.method private createCameraView()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraFace()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$27;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setAmplitude(FZ)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    iput-boolean v2, v0, Lorg/telegram/messenger/camera/CameraView;->recordHevc:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->initTexture()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v2, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v1, 0x42380000    # 46.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraView(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "storyhint2"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isSavedDual()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "storydualhint"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrScanner:Lorg/telegram/ui/Stories/recorder/QRScanner;

    if-nez v0, :cond_6

    new-instance v0, Lorg/telegram/ui/Stories/recorder/QRScanner;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/QRScanner;-><init>(Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrScanner:Lorg/telegram/ui/Stories/recorder/QRScanner;

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrScanner:Lorg/telegram/ui/Stories/recorder/QRScanner;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->attach(Lorg/telegram/messenger/camera/CameraView;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getBlurRenderNode()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->setBlurRenderNode(Landroid/view/View;Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private createFilterPhotoView()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v6, v2

    :goto_1
    if-nez v6, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v5

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getOrientation()I

    move-result v7

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_4

    :goto_2
    move-object v8, v2

    goto :goto_3

    :cond_4
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    goto :goto_2

    :goto_3
    iget-object v13, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object v14, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoEditTextureView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$SavedFilterState;Lorg/telegram/ui/Components/PaintingOverlay;IZZLorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setFilterView(Lorg/telegram/ui/Components/PhotoFilterView;)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getMyTextureView()Landroid/view/TextureView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setFilterTextureView(Landroid/view/TextureView;Lorg/telegram/ui/Components/PhotoFilterView;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilterMatrix()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getBlurControl()Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getCurveControl()Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->orderPreviewViews()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x433a0000    # 186.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->init()V

    :cond_a
    :goto_4
    return-void
.end method

.method private createGalleryListView()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createGalleryListView(Z)V

    return-void
.end method

.method private createGalleryListView(Z)V
    .locals 13

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onlyCollaging:Z

    if-eq v0, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyGalleryListView()V

    :cond_4
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$21;

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    xor-int/lit8 v11, p1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    :goto_1
    const v10, 0x3fb1eb85    # 1.39f

    move-object v3, v0

    move-object v4, p0

    move v9, p1

    invoke-direct/range {v3 .. v12}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$21;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->allowSearch(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMultipleOnClick(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getMaxCount()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledCount()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMaxCount(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setOnBackClickListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setOnSelectListener(Lorg/telegram/messenger/Utilities$Callback2;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setOnSelectMultipleListener(Lorg/telegram/messenger/Utilities$Callback3;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    const/16 v1, 0x77

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createPhotoPaintView()V
    .locals 31

    move-object/from16 v15, p0

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getPaintSize()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v3, :cond_1

    iget-object v3, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    move-object v10, v1

    iget-object v1, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/16 v24, 0x1

    const/16 v25, 0x0

    if-eqz v1, :cond_6

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v3, :cond_4

    iget-object v3, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    :cond_4
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_1

    :goto_2
    if-nez v1, :cond_7

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    :cond_7
    move-object v11, v1

    :goto_3
    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    new-instance v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder$26;

    iget-object v8, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_8

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-nez v1, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    if-nez v0, :cond_9

    move-object v4, v2

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    move-object v4, v1

    :goto_5
    if-eqz v0, :cond_a

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    if-eqz v0, :cond_b

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    const-wide/16 v6, 0x0

    cmp-long v9, v0, v6

    if-eqz v9, :cond_b

    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    iget-object v7, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget v9, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getOrientation()I

    move-result v26

    iget-object v1, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_c

    move-object/from16 v27, v2

    goto :goto_8

    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    :goto_8
    new-instance v0, Lorg/telegram/messenger/MediaController$CropState;

    move-object/from16 v18, v0

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-object/from16 v20, v0

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v21, v0

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    move-object/from16 v22, v0

    iget-object v0, v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-object/from16 v23, v0

    const/16 v19, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object/from16 v28, v1

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v29, v13

    move/from16 v13, v26

    move/from16 v30, v14

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    invoke-direct/range {v0 .. v23}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$26;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;ZLjava/io/File;ZZLorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/ui/Stories/recorder/StoryEntry;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_d

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setHasAudio(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setBlurManager(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v1

    move/from16 v2, v30

    iput-boolean v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->hasBlur:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getRenderInputView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTextDimView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    if-eqz v1, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getEntitiesView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    if-eqz v1, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getSelectionEntitiesView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    if-eqz v1, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->orderPreviewViews()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda31;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setOnDoneButtonClickedListener(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda32;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->setOnCancelButtonClickedListener(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->init()V

    return-void
.end method

.method private destroyCameraView(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrScanner:Lorg/telegram/ui/Stories/recorder/QRScanner;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/QRScanner;->destroy()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrScanner:Lorg/telegram/ui/Stories/recorder/QRScanner;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->qrDrawer:Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->setQrDetected(Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->setBlurRenderNode(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveLastCameraBitmap(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveLastCameraBitmap(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->destroy(ZLjava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraView(Lorg/telegram/messenger/camera/CameraView;)V

    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    :cond_4
    :goto_0
    return-void
.end method

.method private destroyGalleryListView()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-void
.end method

.method public static destroyInstance()V
    .locals 2

    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    return-void
.end method

.method private destroyPhotoFilterView()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setFilterView(Lorg/telegram/ui/Components/PhotoFilterView;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewTextureView:Landroid/view/TextureView;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setFilterTextureView(Landroid/view/TextureView;Lorg/telegram/ui/Components/PhotoFilterView;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-void
.end method

.method private destroyPhotoPaintView()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onCleanupEntities()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->shutdown()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    :cond_5
    return-void
.end method

.method private getCameraFace()Z
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stories_camera"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getCameraThumb()Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "cthumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->icplaceholder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getTotalCount()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getCurrentFlashMode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->hasFlashModes()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkFrontfaceFlashModes()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashModes:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDraftSavedHint()Lorg/telegram/ui/Stories/recorder/DraftSavedHint;
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    const/high16 v8, 0x429c0000    # 78.0f

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x57

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;
    .locals 2

    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    if-ne v1, p0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    if-eq v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    :cond_2
    sget-object p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    return-object p0
.end method

.method private getNextFlashMode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->hasFlashModes()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkFrontfaceFlashModes()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashModes:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getNextFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getUiBlurBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getUiBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->getUiBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getUsersFrom(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p1, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Lorg/telegram/ui/Components/URLSpanUserMention;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/URLSpanUserMention;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_6

    const/4 v1, -0x1

    const/4 v3, -0x1

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-wide/32 v5, 0xbdb28

    if-ge v2, v4, :cond_5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x40

    if-ne v4, v7, :cond_2

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_2
    const/16 v7, 0x20

    if-ne v4, v7, :cond_4

    if-eq v3, v1, :cond_3

    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v7, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v9, v7, v5

    if-eqz v9, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v3, -0x1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eq v3, v1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v4, v2, v5

    if-eqz v4, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method private hidePhotoPaintView()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->getWeightChooserView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private inCheck()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledProgress()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private initViews()V
    .locals 34

    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v11, 0x1

    const/16 v12, 0x15

    if-lt v10, v12, :cond_0

    invoke-virtual {v0, v11}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setFocusable(Z)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v9, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/FlashViews;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$3;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v2, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;-><init>(Landroid/view/View;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$5;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    const/16 v14, 0x8

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$6;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    new-instance v6, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda49;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCancelGestures(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda60;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setResetState(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    const/16 v7, 0x77

    invoke-static {v13, v13, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda66;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    const/4 v6, 0x0

    if-eq v1, v11, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const v1, -0xe0e0e1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-lt v10, v12, :cond_3

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$8;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v11}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda67;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {v0, v9, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    invoke-direct {v0, v8, v9, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setCollageView(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda68;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->invalidateBlur:Ljava/lang/Runnable;

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda69;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setOnTapListener(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda70;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->whenError(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v13, v13, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    invoke-static {v13, v13, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-object v0, v5

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v9

    move-object/from16 v18, v3

    move-object v3, v4

    move-object v12, v5

    move-object/from16 v5, v18

    const/4 v13, 0x0

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$10;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v12, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setAccount(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda39;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setUiBlurBitmap(Lorg/telegram/messenger/Utilities$CallbackVoidReturn;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda40;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setOnHeightUpdate(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda41;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setOnPeriodUpdate(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-wide v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setDialogId(J)V

    :cond_4
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda42;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setOnPremiumHint(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda43;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setOnKeyboardOpen(Lorg/telegram/messenger/Utilities$Callback;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$12;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$12;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEditOverlay:Landroid/view/View;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-object v0, v6

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/TimelineView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v6, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda44;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setOnTimelineClick(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda45;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setOnHeightChange(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVideoTimelineView(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setMaxCount(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/TimelineView;->heightDp()I

    move-result v2

    int-to-float v2, v2

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v19, -0x1

    const/16 v21, 0x57

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v20, v2

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/VideoTimeView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-virtual {v0, v13, v13}, Lorg/telegram/ui/Stories/recorder/VideoTimeView;->show(ZZ)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    const/high16 v20, 0x41c80000    # 25.0f

    const/16 v21, 0x37

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/TimelineView;->heightDp()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    int-to-float v2, v2

    const/high16 v25, 0x42880000    # 68.0f

    const/16 v21, 0x57

    move/from16 v20, v2

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    const/16 v25, 0x0

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v23, 0x43480000    # 200.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setTimelineView(Lorg/telegram/ui/Stories/recorder/TimelineView;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setPreviewView(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    new-instance v6, Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v4, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-object v0, v6

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/TimelineView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v6, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setCover()V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/TimelineView;->heightDp()I

    move-result v2

    int-to-float v2, v2

    const/high16 v25, 0x40c00000    # 6.0f

    const/16 v23, 0x0

    move/from16 v20, v2

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-direct {v0, v8, v9, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    const/4 v2, -0x2

    const/16 v3, 0x55

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrGoBack:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_photo_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    const v12, 0x20ffffff

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda46;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    const/16 v2, 0x33

    const/16 v5, 0x38

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->RecorderNewStory:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v15, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v1, 0x43100000    # 144.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v25, 0x0

    const/high16 v20, 0x42600000    # 56.0f

    const/16 v21, 0x37

    const/high16 v22, 0x428e0000    # 71.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarButtons:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarButtons:Landroid/widget/LinearLayout;

    const/high16 v24, 0x41000000    # 8.0f

    const/16 v21, 0x7

    const/16 v22, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Stories/recorder/DownloadButton;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda47;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v17, v0

    move-object v0, v3

    move/from16 v19, v1

    move-object v1, v9

    move-object v15, v3

    move/from16 v3, v19

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/DownloadButton;-><init>(Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;ILandroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v15, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v1, -0x3d720000    # -71.0f

    invoke-virtual {v0, v14, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBounce(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0, v11, v11, v13}, Lorg/telegram/ui/Stories/recorder/HintView2;->setAnimatedTextHacks(ZZZ)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v13, v3, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v27, -0x1

    const/high16 v28, -0x40800000    # -1.0f

    const/16 v29, 0x30

    const/16 v30, 0x0

    const/high16 v31, 0x42500000    # 52.0f

    invoke-static/range {v27 .. v33}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_5

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/messenger/R$drawable;->media_unmute:I

    goto :goto_2

    :cond_5
    sget v2, Lorg/telegram/messenger/R$drawable;->media_mute:I

    :goto_2
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda48;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda50;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarButtons:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    const/16 v3, 0x2e

    const/16 v4, 0x35

    const/16 v5, 0x38

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarButtons:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarButtons:Landroid/widget/LinearLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda51;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda52;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/ToggleButton;

    sget v2, Lorg/telegram/messenger/R$drawable;->media_dual_camera2_shadow:I

    sget v3, Lorg/telegram/messenger/R$drawable;->media_dual_camera2:I

    invoke-direct {v0, v9, v2, v3}, Lorg/telegram/ui/Stories/recorder/ToggleButton;-><init>(Landroid/content/Context;II)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda53;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastCollageLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const/4 v2, 0x6

    if-nez v0, :cond_8

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getLayouts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastCollageLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    :cond_8
    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda54;

    invoke-direct {v3, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;

    iget-object v6, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastCollageLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    invoke-virtual {v0, v3, v13}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setIcon(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setSelected(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;

    new-instance v6, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v7, "../../.."

    invoke-direct {v6, v7}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6, v11}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V

    invoke-virtual {v0, v3, v13}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setIcon(Landroid/graphics/drawable/Drawable;Z)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;

    invoke-direct {v3, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    iget-object v3, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-direct {v0, v9, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/FlashViews;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setSelected(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda56;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setOnLayoutClick(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    const/4 v3, -0x1

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v2, -0x3e600000    # -20.0f

    invoke-virtual {v0, v14, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->setCloseButton(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$string;->StoryCameraDualHint:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda57;

    invoke-direct {v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda57;-><init>()V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v5, v13, v6, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v21, -0x1

    const/high16 v22, -0x40800000    # -1.0f

    const/16 v23, 0x30

    const/16 v24, 0x0

    const/high16 v25, 0x42500000    # 52.0f

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v6, 0x2

    invoke-direct {v0, v5, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v5, 0x41e00000    # 28.0f

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    const/high16 v26, 0x42500000    # 52.0f

    const/16 v25, 0x0

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v5, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v5, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v14, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->StoryCollageRemoveGrid:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->removeCollageHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v13, v1, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->removeCollageHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v26, 0x0

    const/high16 v25, 0x42500000    # 52.0f

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-direct {v8, v13, v13}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const/high16 v26, 0x42600000    # 56.0f

    const/high16 v22, 0x42340000    # 45.0f

    const/16 v23, 0x37

    const/high16 v24, 0x42600000    # 56.0f

    const/16 v25, 0x0

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    const/16 v0, 0x15

    if-lt v10, v0, :cond_9

    invoke-static {v13}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    :cond_9
    new-instance v0, Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/RecordControl;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControlDelegate:Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setDelegate(Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    const/16 v2, 0x64

    const/16 v5, 0x57

    const/4 v6, -0x1

    invoke-static {v6, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledProgress()F

    move-result v1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1, v11}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setCollageProgress(FZ)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StoryCameraHint2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidth(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    const/16 v26, 0x0

    const/high16 v27, 0x42c80000    # 100.0f

    const/16 v21, -0x1

    const/high16 v22, -0x40800000    # -1.0f

    const/16 v23, 0x50

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ZoomControlView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/ZoomControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    iput-boolean v13, v0, Lorg/telegram/ui/Components/ZoomControlView;->enabledTouch:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/high16 v27, 0x42d80000    # 108.0f

    const/high16 v22, 0x42480000    # 50.0f

    const/16 v23, 0x51

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda58;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ZoomControlView;->setDelegate(Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v1, 0x0

    iput v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda59;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {v0, v9, v1, v2}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;-><init>(Landroid/content/Context;ILjava/lang/Runnable;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda61;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->whenClicked(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    const/high16 v27, 0x42b40000    # 90.0f

    const/high16 v22, 0x42a00000    # 80.0f

    const/16 v23, 0x57

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$14;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$14;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda62;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->setOnSwitchModeListener(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda63;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->setOnSwitchingModeListener(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    const/4 v2, -0x1

    invoke-static {v2, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/HintTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    const/high16 v26, 0x41000000    # 8.0f

    const/high16 v27, 0x41000000    # 8.0f

    const/high16 v22, 0x42000000    # 32.0f

    const/16 v23, 0x11

    const/high16 v24, 0x41000000    # 8.0f

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintTextView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/HintTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryCollageReorderHint:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Stories/recorder/HintTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v9, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryCoverSave:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda64;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x41200000    # 10.0f

    const/4 v10, -0x1

    const/high16 v11, 0x42400000    # 48.0f

    const/16 v12, 0x77

    const/high16 v13, 0x41200000    # 10.0f

    const/high16 v14, 0x41200000    # 10.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda65;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setOnClickListener(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navbarContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/16 v2, 0x34

    const/16 v3, 0x17

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/TrashView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stories/recorder/TrashView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    const/4 v15, 0x0

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v11, 0x42f00000    # 120.0f

    const/16 v12, 0x51

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    iget v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-object v2, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v9, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    iget-object v1, v8, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x77

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtonsOffsets()V

    return-void
.end method

.method private isBot()Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    iget-wide v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isGalleryOpen()Z
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const v3, 0x3eb33333    # 0.35f

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVisible()Z
    .locals 1

    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$animateContainerBack$56(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    mul-float p1, p1, p3

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    return-void
.end method

.method private synthetic lambda$animateGalleryListView$61(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    return-void
.end method

.method private synthetic lambda$animateGalleryListView$62(FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic lambda$animateGalleryListView$63(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$animateOpenTo$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$applyPaintInBackground$74(Lorg/telegram/ui/Stories/recorder/StoryEntry;ZLjava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    nop

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    iput-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iput-object p6, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    iput-object p7, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    iput-object p8, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    if-eqz p9, :cond_5

    invoke-interface {p9}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$applyPaintInBackground$75(Lorg/telegram/ui/Stories/recorder/PaintView;IILorg/telegram/ui/Stories/recorder/StoryEntry;ZZLjava/lang/Runnable;)V
    .locals 35

    move-object/from16 v1, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object v3, v0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;

    iget-boolean v2, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getLcm()J

    move-result-wide v3

    const-wide/16 v5, 0x1d4c

    const-wide/16 v7, 0x1388

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v2

    iput-wide v2, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getMasks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v15, v3

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    iget-boolean v2, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v16

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x0

    const/4 v10, 0x1

    xor-int/lit8 v9, v2, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object v3, v0

    move/from16 v4, p2

    move/from16 v5, p3

    const/4 v14, 0x1

    move-object/from16 v10, p4

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v26, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v26, v0

    :goto_1
    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v3, v3

    iget v4, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v4, v4

    const/16 v24, 0x65

    const/16 v25, 0x65

    const/16 v22, 0x57

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-static/range {v18 .. v25}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    invoke-virtual {v0, v3, v14}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v18

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-boolean v0, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    const/16 v2, 0x64

    const-string v3, "webp"

    if-eqz v0, :cond_7

    iget-wide v4, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-boolean v6, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isDark:Z

    const/4 v10, 0x0

    invoke-static {v10, v0, v4, v5, v6}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    if-eqz v0, :cond_8

    iget v4, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v4, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v6, v0, v7, v8}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v0, v2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object/from16 v17, v4

    goto :goto_5

    :goto_4
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    throw v0

    :cond_7
    const/4 v10, 0x0

    :cond_8
    move-object/from16 v17, v10

    :goto_5
    iget-boolean v0, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v0, :cond_b

    iget-boolean v0, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_b

    iget v0, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v4, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->findMessageView()Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    iget-object v7, v5, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ne v7, v14, :cond_9

    if-lez v0, :cond_9

    if-lez v4, :cond_9

    iget-object v7, v5, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_9

    iget-object v5, v5, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    goto :goto_6

    :cond_9
    move-object v5, v10

    :goto_6
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v7

    float-to-int v7, v7

    if-lez v7, :cond_b

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v7

    float-to-int v7, v7

    if-lez v7, :cond_b

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v7

    int-to-float v0, v0

    div-float/2addr v7, v0

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v8

    int-to-float v4, v4

    div-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v0, v0, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v0, v8

    float-to-int v0, v0

    mul-float v4, v4, v7

    div-float/2addr v4, v8

    float-to-int v4, v4

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/16 v9, 0x8

    new-array v9, v9, [F

    :goto_7
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v10

    array-length v10, v10

    if-ge v6, v10, :cond_a

    mul-int/lit8 v10, v6, 0x2

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v20

    aget v2, v20, v6

    int-to-float v2, v2

    aput v2, v9, v10

    add-int/2addr v10, v14

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v2

    aget v2, v2, v6

    int-to-float v2, v2

    aput v2, v9, v10

    add-int/lit8 v6, v6, 0x1

    const/16 v2, 0x64

    goto :goto_7

    :cond_a
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v2, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v0, v0

    mul-float v0, v0, v8

    div-float/2addr v0, v8

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v20

    div-float v20, v20, v8

    sub-float v14, v0, v20

    int-to-float v4, v4

    mul-float v4, v4, v8

    div-float/2addr v4, v8

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v20

    div-float v20, v20, v8

    sub-float v13, v4, v20

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v20

    div-float v20, v20, v8

    add-float v0, v0, v20

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    invoke-virtual {v10, v14, v13, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v10, v9, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :try_start_2
    iget v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x64

    invoke-virtual {v7, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    :goto_9
    if-nez v16, :cond_d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    const/4 v13, 0x0

    move-object/from16 v10, p4

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    int-to-float v4, v11

    int-to-float v5, v12

    const/16 v33, 0x65

    const/16 v34, 0x65

    const/16 v31, 0x57

    const/16 v32, 0x0

    move-object/from16 v27, v2

    move/from16 v29, v4

    move/from16 v30, v5

    invoke-static/range {v27 .. v34}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    move-object v8, v3

    goto :goto_a

    :cond_d
    const/4 v13, 0x0

    move-object v8, v13

    :goto_a
    if-eqz p5, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    int-to-float v4, v11

    int-to-float v5, v12

    const/16 v33, 0x65

    const/16 v34, 0x65

    const/16 v31, 0x57

    const/16 v32, 0x0

    move-object/from16 v27, v2

    move/from16 v29, v4

    move/from16 v30, v5

    invoke-static/range {v27 .. v34}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    move-object v10, v3

    goto :goto_b

    :cond_f
    move-object v10, v13

    :goto_b
    new-instance v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda103;

    move-object v2, v13

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, v26

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    move-object v9, v0

    move-object v11, v15

    move-object/from16 v12, p7

    invoke-direct/range {v2 .. v12}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda103;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;ZLjava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$applyPaintSwitching$76(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x57

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$applyPaintSwitching$77(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x64

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void

    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw p1
.end method

.method private static synthetic lambda$applyPaintSwitching$78(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x64

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static synthetic lambda$applyPaintSwitching$79(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x57

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$applyPaintSwitching$80(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x57

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$applyPaintSwitching$81(Lorg/telegram/ui/Stories/recorder/StoryEntry;ZLjava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    nop

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundFile:Ljava/io/File;

    iput-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iput-object p6, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageVideoMaskFile:Ljava/io/File;

    iput-object p7, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    iput-object p8, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    if-eqz p9, :cond_5

    invoke-interface {p9}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$applyPaintSwitching$82(Lorg/telegram/ui/Stories/recorder/PaintView;IILorg/telegram/ui/Stories/recorder/StoryEntry;ZZLjava/lang/Runnable;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v10, p4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;

    iget-boolean v1, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getLcm()J

    move-result-wide v2

    const-wide/16 v4, 0x1d4c

    const-wide/16 v6, 0x1388

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getMasks()Ljava/util/List;

    move-result-object v1

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v14, v2

    goto :goto_0

    :cond_1
    move-object v14, v13

    :goto_0
    iget-boolean v1, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v15

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    const/4 v9, 0x1

    xor-int/lit8 v8, v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v11, v13

    :cond_2
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    const-string v9, "png"

    invoke-static {v2, v9}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v8

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda104;

    invoke-direct {v2, v1, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda104;-><init>(Landroid/graphics/Bitmap;Ljava/io/File;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    const-string v2, "webp"

    if-eqz v1, :cond_4

    iget-wide v3, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isDark:Z

    invoke-static {v13, v1, v3, v4, v5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-static {v5, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v7, v1, v13, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda105;

    invoke-direct {v1, v4, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda105;-><init>(Landroid/graphics/Bitmap;Ljava/io/File;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v13, v3

    goto :goto_1

    :cond_4
    move/from16 v6, p3

    const/4 v13, 0x0

    :goto_1
    iget-boolean v1, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_8

    iget v1, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v3, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->findMessageView()Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v7, v4, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v5, 0x1

    if-ne v7, v5, :cond_5

    if-lez v1, :cond_5

    if-lez v3, :cond_5

    iget-object v7, v4, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_6

    iget-object v4, v4, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v7

    float-to-int v7, v7

    if-lez v7, :cond_8

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v7

    float-to-int v7, v7

    if-lez v7, :cond_8

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v7

    int-to-float v1, v1

    div-float/2addr v7, v1

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v16

    int-to-float v3, v3

    div-float v5, v16, v3

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v1, v1, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    float-to-int v1, v1

    mul-float v3, v3, v5

    div-float/2addr v3, v7

    float-to-int v3, v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/16 v7, 0x8

    new-array v7, v7, [F

    move-object/from16 v17, v8

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v8

    array-length v8, v8

    if-ge v6, v8, :cond_7

    mul-int/lit8 v8, v6, 0x2

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v18

    move-object/from16 v19, v9

    aget v9, v18, v6

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v9

    aget v9, v9, v6

    int-to-float v9, v9

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v9, v19

    goto :goto_3

    :cond_7
    move-object/from16 v19, v9

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v6, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v1, v1

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v1, v1, v16

    div-float v1, v1, v16

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v18

    div-float v18, v18, v16

    move-object/from16 v20, v14

    sub-float v14, v1, v18

    int-to-float v3, v3

    mul-float v3, v3, v16

    div-float v3, v3, v16

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v18

    div-float v18, v18, v16

    move-object/from16 v21, v13

    sub-float v13, v3, v18

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v18

    div-float v18, v18, v16

    add-float v1, v1, v18

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v4

    div-float v4, v4, v16

    add-float/2addr v3, v4

    invoke-virtual {v9, v14, v13, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v9, v7, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6, v8, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda106;

    invoke-direct {v2, v5, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda106;-><init>(Landroid/graphics/Bitmap;Ljava/io/File;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v13, v1

    goto :goto_4

    :cond_8
    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object/from16 v21, v13

    move-object/from16 v20, v14

    const/4 v13, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v15, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v14, v17

    move-object/from16 v15, v19

    move-object/from16 v9, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBitmap(Ljava/util/ArrayList;IIZZZZLorg/telegram/ui/Stories/recorder/StoryEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v2, v15}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda107;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda107;-><init>(Landroid/graphics/Bitmap;Ljava/io/File;)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object/from16 v14, v17

    move-object/from16 v15, v19

    const/4 v2, 0x0

    :goto_5
    if-eqz p5, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3, v15}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda108;

    invoke-direct {v4, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda108;-><init>(Landroid/graphics/Bitmap;Ljava/io/File;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v2

    move-object v9, v3

    goto :goto_6

    :cond_a
    move-object v7, v2

    const/4 v9, 0x0

    goto :goto_6

    :cond_b
    move-object/from16 v14, v17

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iget-object v2, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    move-object v7, v1

    move-object v9, v2

    :goto_6
    new-instance v15, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda109;

    move-object v1, v15

    move-object/from16 v2, p4

    move/from16 v3, p6

    move-object v4, v11

    move-object v5, v14

    move-object/from16 v6, v21

    move-object v8, v13

    move-object/from16 v10, v20

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda109;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;ZLjava/util/ArrayList;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_c
    return-void
.end method

.method private synthetic lambda$close$2(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback4;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return-void
.end method

.method private synthetic lambda$createCameraView$86()V
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getNextFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v1, :cond_1

    move-object v2, v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    :cond_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    return-void
.end method

.method private synthetic lambda$createCameraView$87(Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrScanner:Lorg/telegram/ui/Stories/recorder/QRScanner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->link:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->setLink(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->qrDrawer:Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->isResolved()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrScanner:Lorg/telegram/ui/Stories/recorder/QRScanner;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/QRScanner;->getDetected()Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->setQrDetected(Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$createFilterPhotoView$83(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createFilterPhotoView$84(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$createFilterPhotoView$85(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$createGalleryListView$58()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-void
.end method

.method private synthetic lambda$createGalleryListView$59(ZLjava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p2, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isGalleryOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    instance-of p1, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createPhoto(Ljava/lang/String;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PaintView;->appearAnimation(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    instance-of p1, p2, Lorg/telegram/tgnet/TLObject;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->createPhoto(Lorg/telegram/tgnet/TLObject;Z)Lorg/telegram/ui/Components/Paint/Views/PhotoView;

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    goto/16 :goto_3

    :cond_4
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    instance-of p1, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_7

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v0, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    iput-object p3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    iput-wide v2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    iput-object p3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->push(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    :cond_5
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMultipleStoriesSelector()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_7
    instance-of v2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_a

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez v2, :cond_8

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    sget p3, Lorg/telegram/messenger/R$raw;->error:I

    const-string v0, "Failed to load draft"

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showToast(ILjava/lang/CharSequence;)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void

    :cond_8
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    iput-wide v2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    iput-object v2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iget-boolean v2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    iput-object p3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p3, p2, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_9

    :goto_2
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_9
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getSelectedAlbum()Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :cond_a
    :goto_4
    return-void
.end method

.method private synthetic lambda$createGalleryListView$60(Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListViewOpening:Ljava/lang/Boolean;

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->scrollingY:Z

    if-nez v0, :cond_13

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isGalleryOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntriesOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledCount()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getTotalCount()I

    move-result v4

    if-le v1, v4, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledCount()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->of(I)Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setLayout(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clear(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setSelected(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result p2

    xor-int/2addr p2, v3

    iput-boolean p2, p1, Lorg/telegram/messenger/camera/CameraView;->recordHevc:Z

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    return-void

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastCollageLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {v4, v1, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setLayout(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setSelected(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getLayouts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v4, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v5

    xor-int/2addr v5, v3

    iput-boolean v5, v4, Lorg/telegram/messenger/camera/CameraView;->recordHevc:Z

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v4

    invoke-virtual {p0, v1, v4, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledProgress()F

    move-result v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setCollageProgress(FZ)V

    :cond_7
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v4

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    iput-wide v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->push(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v5, :cond_9

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-nez v5, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_b

    goto :goto_3

    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-eqz p1, :cond_11

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntriesOrder:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_e

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntriesOrder:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    invoke-virtual {p0, v3, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->showHint()V

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getSelectedAlbum()Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :cond_10
    return-void

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMultipleStoriesSelector()V

    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz p1, :cond_13

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getSelectedAlbum()Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :cond_13
    :goto_5
    return-void
.end method

.method private synthetic lambda$createPhotoPaintView$72()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$createPhotoPaintView$73()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$destroyCameraView$91()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->destroy(ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraView(Lorg/telegram/messenger/camera/CameraView;)V

    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    :cond_1
    return-void
.end method

.method private synthetic lambda$destroyCameraView$92()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$getThanosEffect$100()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getThemeButton$101(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->toggleTheme()V

    return-void
.end method

.method private synthetic lambda$initViews$10(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "story_period"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initViews$11(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->onBackPressed()Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p1, Lorg/telegram/ui/Components/Bulletin;->tag:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->updatePosition()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initViews$12()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method private synthetic lambda$initViews$13()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextHeight()I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getContentHeight()I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initViews$14(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onBackPressed()Z

    return-void
.end method

.method private synthetic lambda$initViews$15(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaint()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaintMessage()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initViews$16(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->StorySoundMuted:I

    goto :goto_3

    :cond_4
    :goto_2
    sget p1, Lorg/telegram/messenger/R$string;->StoryOriginalSoundMuted:I

    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_5
    if-nez p1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->StorySoundNotMuted:I

    goto :goto_3

    :cond_7
    :goto_4
    sget p1, Lorg/telegram/messenger/R$string;->StoryOriginalSoundNotMuted:I

    goto :goto_3

    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    invoke-virtual {v3, p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setIconMuted(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    :cond_9
    :goto_6
    return-void
.end method

.method private synthetic lambda$initViews$17(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPlaying()Z

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->play(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;->drawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    return-void
.end method

.method private synthetic lambda$initViews$18(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getNextFlashMode()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCurrentFlashMode(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$19(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setWarmth(F)V

    return-void
.end method

.method private synthetic lambda$initViews$20(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setIntensity(F)V

    return-void
.end method

.method private synthetic lambda$initViews$21()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveFrontFaceFlashMode()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->previewEnd()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$initViews$22(Landroid/view/View;)Z
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkFrontfaceFlashModes()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setSelected(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->previewStart()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/telegram/ui/Stories/recorder/SliderView;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/FlashViews;->warmth:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda83;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda83;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addSpaceGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/SliderView;-><init>(Landroid/content/Context;I)V

    const v3, 0x3f266666    # 0.65f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/SliderView;->setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/FlashViews;->intensity:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda84;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda84;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda85;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda85;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const v0, -0x44e4e4e5

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$initViews$23(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toggleDual()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ToggleButton;->setValue(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "storydualhint"

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "storysvddualhint"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$24(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toggleDual()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastCollageLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setLayout(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastCollageLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setSelected(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastCollageLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setIcon(Landroid/graphics/drawable/Drawable;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setSelected(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p1, Lorg/telegram/messenger/camera/CameraView;->recordHevc:Z

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMultipleOnClick(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getMaxCount()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledCount()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMaxCount(I)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$25(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setLayout(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clear(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setSelected(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/messenger/camera/CameraView;->recordHevc:Z

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMultipleOnClick(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getMaxCount()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMaxCount(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initViews$26(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastCollageLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setLayout(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setSelected(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, v0, Lorg/telegram/messenger/camera/CameraView;->recordHevc:Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledProgress()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setCollageProgress(FZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMultipleOnClick(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getMaxCount()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMaxCount(I)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$initViews$27()V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "storydualhint"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$initViews$28(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraZoom:F

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    return-void
.end method

.method private synthetic lambda$initViews$29()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->qrDrawer:Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrScanner:Lorg/telegram/ui/Stories/recorder/QRScanner;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->getDetected()Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->setQrDetected(Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$initViews$30(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initViews$31(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fastClose:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda80;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda80;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    const-wide/16 v1, 0xd2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$initViews$32(Ljava/lang/Boolean;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$initViews$33(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideoT(F)V

    return-void
.end method

.method private synthetic lambda$initViews$34(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->coverBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->coverBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setCover(Landroid/graphics/Bitmap;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    return-void
.end method

.method private synthetic lambda$initViews$35()V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda90;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda90;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/view/View;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v4, v6, v0

    const/4 v3, 0x2

    aput-object v5, v6, v3

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getCoverBitmap(Lorg/telegram/messenger/Utilities$Callback;[Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$initViews$36(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->coverSet:Z

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverValue:J

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->processDone()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda86;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda86;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const-wide/16 v0, 0x190

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initViews$37(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clearFocus()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->processDone()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_6

    iput-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->openPaint()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->openText()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hidePhotoPaintView()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->openStickers()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, v2, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$5()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    return-void
.end method

.method private synthetic lambda$initViews$6(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initViews$7()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->openText()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->enteredThroughText:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$initViews$8()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showFailedVideo()V

    return-void
.end method

.method private synthetic lambda$initViews$9(Ljava/lang/Integer;)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    if-ne v1, v0, :cond_0

    const/high16 v1, 0x42880000    # 68.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextHeight()I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextHeight()I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    neg-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getContentHeight()I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    :goto_2
    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_4

    iget v2, p1, Lorg/telegram/ui/Components/Bulletin;->tag:I

    if-ne v2, v0, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->updatePosition()V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->showList(ZZ)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$navigateToPreviewWithPlayerAwait$55(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onCloseDone$4()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onNavigateStart$64()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$onNavigateStart$65()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->voip_invite:I

    sget v2, Lorg/telegram/messenger/R$string;->StoryPremiumFormatting:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->premiumText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onNavigateStart$66(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onNavigateStart$67(Ljava/lang/Boolean;Ljava/lang/Float;)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const v2, 0x3f75c28f    # 0.96f

    div-float/2addr p2, v2

    const v2, 0x3d23d70a    # 0.04f

    mul-float p2, p2, v2

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    sub-float/2addr v2, p2

    mul-float p1, p1, v2

    long-to-float v0, v0

    mul-float p1, p1, v0

    float-to-long v1, p1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    mul-float p2, p2, v0

    long-to-float v0, v1

    add-float/2addr p2, v0

    float-to-long v0, p2

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverValue:J

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekTo(JZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverValue:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCoverTime(J)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_2

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultInternal$95(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultInternal$96(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultInternal$97(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onResumeInternal$94()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    return-void
.end method

.method private synthetic lambda$openEdit$0(Z)V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    return-void
.end method

.method private synthetic lambda$openForward$1(Z)V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$openPremium$99(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareThumb$50(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/io/File;)V
    .locals 0

    iput-object p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->update()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareThumb$51(Landroid/graphics/Bitmap;ZLjava/io/File;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz p2, :cond_0

    const/16 p2, 0x5f

    goto :goto_0

    :cond_0
    const/16 p2, 0x63

    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda95;

    invoke-direct {p1, p0, p4, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda95;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/io/File;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processDone$38(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$processDone$39(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    :cond_1
    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$processDone$40(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->upload(Z)V

    return-void
.end method

.method private synthetic lambda$processDone$41(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->save(ILorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean p3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    iput-boolean p2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    iput-object p4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iput-boolean p3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    iput-boolean p2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    iput-object p4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processDone$42(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->coverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->coverBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setCover(Landroid/graphics/Bitmap;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    return-void
.end method

.method private synthetic lambda$processDone$43()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$processDone$44(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    return-void
.end method

.method private synthetic lambda$requestCameraPermission$93(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$saveLastCameraBitmap$88(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 9

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42a00000    # 80.0f

    div-float/2addr v1, v2

    div-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x1

    const/16 v2, 0x50

    invoke-static {v0, v2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    const/4 v4, 0x7

    const/4 v5, 0x1

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "cthumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x57

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showDismissEntry$89(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result p2

    iput-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaint()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaintMessage()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareThumb(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)Ljava/io/File;

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->edit(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->append(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$showDismissEntry$90(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_1

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez p2, :cond_1

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz p2, :cond_1

    :cond_0
    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showLimitReachedSheet$98(ZLandroid/content/DialogInterface;)V
    .locals 2

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shownLimitReached:Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showVideoTimer$52(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showZoomControls$53()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$showZoomControls$54()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$switchTo$46(I)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaintMessage()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchingStory:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareThumb(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/CharSequence;

    aput-object v2, v3, v1

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    new-array v5, v0, [Ljava/lang/CharSequence;

    aput-object v4, v5, v1

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2, v4}, Lorg/telegram/messenger/MediaDataController;->entitiesEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoPaintView()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_5

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateStart(II)V

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateEnd(II)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->update()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$switchToEditMode$68(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/CropEditor;->setAppearProgress(F)V

    return-void
.end method

.method private synthetic lambda$switchToEditMode$69(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/CropEditor;->setAppearProgress(F)V

    return-void
.end method

.method private synthetic lambda$switchToEditMode$70(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->setAppearProgress(F)V

    return-void
.end method

.method private synthetic lambda$switchToEditMode$71(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->setAppearProgress(F)V

    return-void
.end method

.method private static synthetic lambda$toggleTheme$102(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$toggleTheme$103()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->setupTheme(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateThemeButtonDrawable(Z)V

    return-void
.end method

.method private synthetic lambda$upload$45(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaintMessage()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->preparingUpload:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->uploadInternal(Z)V

    return-void
.end method

.method private synthetic lambda$uploadInternal$47(ZLorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareThumb(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)Ljava/io/File;

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Stories/StoriesController;->uploadStory(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    iget-boolean p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cancelCheckStickers()V

    return-void
.end method

.method private synthetic lambda$uploadInternal$48()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return-void
.end method

.method private synthetic lambda$uploadInternal$49(ZJ)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->show(Z)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closeListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closeListener:Ljava/lang/Runnable;

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;->getView(J)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    if-eqz p1, :cond_5

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-eq p2, v0, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const p2, -0xe0e0e1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-le p1, v0, :cond_5

    const p1, 0x181e0

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    instance-of p2, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_6

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda100;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda100;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    :goto_3
    return-void
.end method

.method private onCloseDone()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Ljava/lang/Object;Z)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoPaintView()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    if-nez v3, :cond_3

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_3
    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputFile:Ljava/io/File;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const-wide/16 v3, 0x10

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->show(Z)V

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    :cond_5
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGalleryScrollPosition:Landroid/os/Parcelable;

    sget-object v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    :cond_6
    sput-object v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onCloseListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onCloseListener:Ljava/lang/Runnable;

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clear(Z)V

    :cond_a
    return-void
.end method

.method private onNavigateEnd(II)V
    .locals 10

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateRecording(ZZ)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setAwakeLock(Z)V

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-ne p2, v3, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v4, 0x0

    if-ne p1, v3, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-ne p2, v2, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-ne p2, v2, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {p1, v5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eq p2, v2, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoPaintView()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-ne p2, v2, :cond_7

    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyGalleryListView()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntriesOrder:Ljava/util/ArrayList;

    :cond_8
    if-ne p2, v3, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_9

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-nez p1, :cond_a

    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hidePhotoPaintView()V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v5, 0x7

    invoke-virtual {p1, v5, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v5, :cond_c

    iget-wide v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v7, 0x7530

    cmp-long v9, v5, v7

    if-ltz v9, :cond_c

    const/4 v5, 0x0

    goto :goto_4

    :cond_c
    const/16 v5, 0x8

    :goto_4
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v4, :cond_d

    iget-wide v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    if-nez p2, :cond_f

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getDraftSavedHint()Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getDraftSavedHint()Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->show()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    :cond_f
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz p1, :cond_12

    if-ne p2, v3, :cond_11

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_10

    if-ne v0, v3, :cond_11

    :cond_10
    const/4 v0, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz p1, :cond_14

    if-eq p2, v3, :cond_13

    const/4 v0, 0x1

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    :cond_14
    if-ne p2, v3, :cond_15

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v3, v1}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v2, v1, v3, v1}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->loadBlocklistAtFirst()V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->loadSendAs()V

    :cond_15
    return-void
.end method

.method private onNavigateStart(II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_2

    invoke-direct {v0, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz v9, :cond_0

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    :cond_0
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v9, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-virtual {v9, v5, v6, v7}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setDuration(JZ)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v9, :cond_1

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    :cond_1
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v9, :cond_2

    invoke-virtual {v9, v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clear(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v9, v3, v8}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setCollageProgress(FZ)V

    :cond_2
    const/16 v9, 0x8

    if-nez v1, :cond_4

    invoke-direct {v0, v4, v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setCameraFlashModeIcon(Ljava/lang/String;Z)V

    new-instance v10, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda23;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {v0, v10}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->saveLastCameraBitmap(Ljava/lang/Runnable;)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->draftSavedHint:Lorg/telegram/ui/Stories/recorder/DraftSavedHint;

    if-eqz v10, :cond_3

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_4
    if-eq v2, v7, :cond_5

    if-ne v1, v7, :cond_14

    :cond_5
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    if-ne v2, v7, :cond_6

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    goto :goto_0

    :cond_6
    move-object v11, v4

    :goto_0
    invoke-virtual {v10, v11}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->setEntry(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v10, :cond_7

    iget-boolean v10, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v0, v10, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setIconMuted(ZZ)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v10, v7}, Lorg/telegram/ui/Stories/recorder/PreviewView;->play(Z)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    iget-object v10, v10, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;->drawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v11}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPlaying()Z

    move-result v11

    invoke-virtual {v10, v11, v8}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v11, 0x43100000    # 144.0f

    :goto_2
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    goto :goto_3

    :cond_8
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/high16 v11, 0x42400000    # 48.0f

    if-eqz v10, :cond_9

    iget-object v10, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    iget-object v10, v10, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;->drawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v10, v7, v8}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    :cond_9
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    goto :goto_2

    :goto_3
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v10, :cond_a

    iget-boolean v10, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getThemeButton()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateThemeButtonDrawable(Z)V

    goto :goto_4

    :cond_a
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-eqz v10, :cond_b

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    :goto_4
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v10, v8}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isBot()Z

    move-result v11

    if-eqz v11, :cond_c

    const/16 v11, 0x8

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isBot()Z

    move-result v11

    if-eqz v11, :cond_d

    const/high16 v11, 0x41400000    # 12.0f

    :goto_6
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    goto :goto_7

    :cond_d
    const/high16 v11, 0x42880000    # 68.0f

    goto :goto_6

    :goto_7
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->clearFocus()V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v11, :cond_e

    const v11, 0x15180

    goto :goto_8

    :cond_e
    iget v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    :goto_8
    invoke-virtual {v10, v11, v8}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setPeriod(IZ)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_f

    iget-boolean v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v11, :cond_10

    :cond_f
    const/4 v11, 0x1

    goto :goto_9

    :cond_10
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v10, v11}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setPeriodVisible(Z)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_11

    iget-object v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v11, :cond_11

    const/4 v11, 0x1

    goto :goto_a

    :cond_11
    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v10, v11}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setHasRoundVideo(Z)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setReply()V

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hasVideo()Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_b

    :cond_12
    const/4 v11, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v11, 0x1

    :goto_c
    invoke-virtual {v10, v11, v8}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setOpen(ZZ)V

    :cond_14
    const/4 v10, 0x2

    if-eq v2, v10, :cond_15

    if-ne v1, v10, :cond_17

    :cond_15
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_16

    iget-boolean v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    if-eqz v11, :cond_16

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v12, Lorg/telegram/messenger/R$string;->RecorderEditCover:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :cond_16
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    if-ne v2, v10, :cond_18

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v12, Lorg/telegram/messenger/R$string;->RecorderEditCover:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :cond_18
    if-ne v2, v7, :cond_35

    iput-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_19

    iget-wide v12, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v14, v12, v5

    if-eqz v14, :cond_19

    const/4 v12, 0x1

    goto :goto_d

    :cond_19
    const/4 v12, 0x0

    :goto_d
    if-eqz v11, :cond_1a

    iget-boolean v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v11, :cond_1a

    const/4 v11, 0x1

    goto :goto_e

    :cond_1a
    const/4 v11, 0x0

    :goto_e
    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    if-eqz v11, :cond_1b

    sget v14, Lorg/telegram/messenger/R$string;->Done:I

    goto :goto_f

    :cond_1b
    if-eqz v12, :cond_1c

    sget v14, Lorg/telegram/messenger/R$string;->UploadBotPreview:I

    goto :goto_f

    :cond_1c
    sget v14, Lorg/telegram/messenger/R$string;->Next:I

    :goto_f
    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    xor-int/lit8 v15, v12, 0x1

    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareText(Ljava/lang/String;Z)V

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewAlreadySet:Z

    if-nez v13, :cond_1e

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v13, :cond_1d

    iget-boolean v14, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v14, :cond_1d

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/Stories/recorder/PreviewView;->preset(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto :goto_10

    :cond_1d
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_1e
    :goto_10
    iput-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewAlreadySet:Z

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v13, v13, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v13

    iget v14, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v14

    if-eqz v14, :cond_1f

    goto :goto_11

    :cond_1f
    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda24;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    :goto_11
    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setOnPremiumMenuLockClickListener(Ljava/lang/Runnable;)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-nez v13, :cond_20

    const/16 v13, 0x8

    goto :goto_12

    :cond_20
    const/4 v13, 0x0

    :goto_12
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-eqz v4, :cond_21

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntriesOrder:Ljava/util/ArrayList;

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    invoke-virtual {v13, v4, v14, v15}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->set(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->setSelected(I)V

    :cond_21
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    const/4 v13, 0x3

    if-nez v12, :cond_23

    if-nez v11, :cond_23

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-nez v11, :cond_23

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_22

    invoke-virtual {v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v11

    if-nez v11, :cond_23

    :cond_22
    const/4 v11, 0x3

    goto :goto_13

    :cond_23
    const/4 v11, 0x1

    :goto_13
    invoke-virtual {v4, v11}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setMaxCount(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v4, :cond_27

    iget-boolean v11, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-nez v11, :cond_24

    iget-boolean v11, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v11, :cond_24

    iget-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isReposting:Z

    if-eqz v11, :cond_27

    :cond_24
    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v4, :cond_25

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoPaintView()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hidePhotoPaintView()V

    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v11, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v11, :cond_26

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-eqz v4, :cond_26

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v4

    if-eqz v4, :cond_26

    new-instance v11, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda25;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/VideoEditTextureView;->setDelegate(Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;)V

    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_27
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->clear()V

    :goto_14
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_2a

    iget-boolean v12, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v12, :cond_28

    iget-boolean v12, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v12, :cond_29

    :cond_28
    invoke-virtual {v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v11

    if-nez v11, :cond_29

    goto :goto_15

    :cond_29
    const/4 v11, 0x0

    goto :goto_16

    :cond_2a
    :goto_15
    const/4 v11, 0x1

    :goto_16
    const/4 v12, 0x4

    invoke-virtual {v4, v12, v11}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setButtonVisible(IZ)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v11, :cond_2b

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_2b

    iget-boolean v12, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-nez v12, :cond_2b

    invoke-virtual {v11}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v11

    if-nez v11, :cond_2b

    const/4 v11, 0x1

    goto :goto_17

    :cond_2b
    const/4 v11, 0x0

    :goto_17
    invoke-virtual {v4, v13, v11}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setButtonVisible(IZ)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    iget-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    if-nez v11, :cond_2d

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v11}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isCaptionOverLimit()Z

    move-result v11

    if-nez v11, :cond_2d

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Stories/StoriesController;->hasStoryLimit(I)Z

    move-result v11

    if-eqz v11, :cond_2c

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_2d

    iget-boolean v12, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v12, :cond_2c

    iget-wide v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v13, v11, v5

    if-eqz v13, :cond_2d

    :cond_2c
    const/4 v11, 0x1

    goto :goto_18

    :cond_2d
    const/4 v11, 0x0

    :goto_18
    invoke-virtual {v4, v11}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareEnabled(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_2e

    iget-boolean v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v11, :cond_2e

    sget v11, Lorg/telegram/messenger/R$drawable;->media_unmute:I

    goto :goto_19

    :cond_2e
    sget v11, Lorg/telegram/messenger/R$drawable;->media_mute:I

    :goto_19
    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const-string v4, ""

    if-eqz v3, :cond_2f

    iget-wide v11, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v13, v11, v5

    if-eqz v13, :cond_2f

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    :goto_1a
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_1e

    :cond_2f
    if-eqz v3, :cond_30

    iget-boolean v11, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v11, :cond_30

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v4, Lorg/telegram/messenger/R$string;->RecorderEditStory:I

    :goto_1b
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    :cond_30
    if-eqz v3, :cond_31

    iget-boolean v11, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v11, :cond_31

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v4, Lorg/telegram/messenger/R$string;->RecorderRepost:I

    goto :goto_1b

    :cond_31
    if-eqz v3, :cond_34

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz v3, :cond_34

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v11, Lorg/telegram/ui/AvatarSpan;

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    const/high16 v14, 0x42000000    # 32.0f

    invoke-direct {v11, v12, v13, v14}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setTranslationX(F)V

    new-instance v12, Landroid/text/SpannableString;

    const-string v13, "a"

    invoke-direct {v12, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v13, 0x21

    invoke-virtual {v12, v11, v8, v7, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v13, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    const-string v14, "  "

    if-eqz v13, :cond_33

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v13, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v13, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    :cond_32
    :goto_1c
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1d

    :cond_33
    iget v8, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v9, v9, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v9}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-virtual {v11, v5}, Lorg/telegram/ui/AvatarSpan;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_32

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1c

    :goto_1d
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_1e

    :cond_34
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v4, Lorg/telegram/messenger/R$string;->RecorderNewStory:I

    goto/16 :goto_1b

    :cond_35
    :goto_1e
    if-ne v1, v7, :cond_36

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->hidePeriodPopup()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->onBackPressed()Z

    :cond_36
    if-ne v2, v10, :cond_3a

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_3a

    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    const-wide/16 v5, 0x0

    cmp-long v8, v3, v5

    if-gez v8, :cond_37

    iput-wide v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    :cond_37
    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverValue:J

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    cmp-long v1, v3, v5

    if-gez v1, :cond_38

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    goto :goto_1f

    :cond_38
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v3

    :goto_1f
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-gtz v10, :cond_39

    iput-wide v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    :cond_39
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v8, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    const/16 v17, 0x0

    move-object/from16 v16, v5

    move-wide/from16 v19, v8

    move/from16 v21, v1

    invoke-virtual/range {v16 .. v21}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideo(ZLjava/lang/String;JF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float v8, v3

    mul-float v6, v6, v8

    float-to-long v9, v6

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    mul-float v5, v5, v8

    float-to-long v5, v5

    invoke-virtual {v1, v9, v10, v5, v6}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setCoverVideo(JJ)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda26;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    new-instance v6, Lorg/telegram/ui/Stories/recorder/StoryRecorder$23;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$23;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setDelegate(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;)V

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverValue:J

    long-to-float v5, v5

    const-wide/16 v8, 0x1

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v5, v3

    const v3, 0x3f75c28f    # 0.96f

    mul-float v5, v5, v3

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideoLeft(F)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    const v4, 0x3d23d70a    # 0.04f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideoRight(F)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    :cond_3b
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->savedDualHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_3c
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->closeKeyboard()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iput-boolean v7, v1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    :cond_3d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v1, :cond_3f

    const/16 v4, 0x8

    if-eq v2, v7, :cond_3e

    const/4 v5, 0x1

    goto :goto_20

    :cond_3e
    const/4 v5, 0x0

    :goto_20
    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    :cond_3f
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v1, :cond_41

    if-eq v2, v7, :cond_40

    const/4 v4, 0x1

    goto :goto_21

    :cond_40
    const/4 v4, 0x0

    :goto_21
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/PaintView;->setCoverPreview(Z)V

    :cond_41
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->removeCollageHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_42
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-ne v2, v7, :cond_43

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_22

    :cond_43
    const/4 v7, 0x0

    :goto_22
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setPreview(Z)V

    return-void
.end method

.method private onOpenDone()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->controlContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onResumeInternal()V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hidePhotoPaintView()V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createFilterPhotoView()V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public static onPause()V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onPauseInternal()V

    :cond_0
    return-void
.end method

.method private onPauseInternal()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyCameraView(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onPause()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    :cond_1
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private onRequestPermissionsResultInternal(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    array-length v1, p3

    if-ne v1, p2, :cond_0

    aget p3, p3, v0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/16 v1, 0x6f

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    xor-int/lit8 p1, p3, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-eqz p3, :cond_8

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0x72

    const/16 v3, 0x48

    if-ne p1, v1, :cond_4

    if-eqz p3, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    goto/16 :goto_2

    :cond_3
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$raw;->permission_request_folder:I

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, v3, v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionStorageWithHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    :goto_1
    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_4
    const/16 p2, 0x70

    if-ne p1, p2, :cond_5

    if-nez p3, :cond_8

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, v3, v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoCameraMicVideo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    goto :goto_1

    :cond_5
    const/16 p2, 0x73

    if-ne p1, p2, :cond_8

    if-nez p3, :cond_6

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$raw;->permission_request_folder:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v3, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionNoAudioStorageStory:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_6
    if-eqz p3, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->audioGrantedCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->audioGrantedCallback:Ljava/lang/Runnable;

    :cond_8
    :goto_2
    return-void
.end method

.method public static onResume()V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->instance:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onResumeInternal()V

    :cond_0
    return-void
.end method

.method private onResumeInternal()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->whenOpenDone:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestCameraPermission(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onResume()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->updateCount()V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onResume()V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->load()V

    return-void
.end method

.method private onSwitchEditModeEnd(II)V
    .locals 6

    const/16 v0, 0x8

    if-nez p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    if-ne p2, v4, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    if-ne p2, v4, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    if-ne p2, v4, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-ne p2, v4, :cond_7

    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v4, 0x1

    if-ne p2, v1, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setAllowCropping(Z)V

    if-eqz p2, :cond_a

    if-nez p1, :cond_b

    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->onAnimationStateChanged(Z)V

    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz v3, :cond_e

    if-eq p2, v4, :cond_c

    if-ne p2, v1, :cond_d

    :cond_c
    const/4 v2, 0x1

    :cond_d
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    :cond_e
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    if-ne p2, v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    if-eqz v3, :cond_10

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stories/recorder/CropEditor;->setAppearProgress(F)V

    goto :goto_6

    :cond_f
    if-ne p1, v3, :cond_10

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    if-eqz v3, :cond_10

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Stories/recorder/CropEditor;->setAppearProgress(F)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CropEditor;->stop()V

    :cond_10
    :goto_6
    const/4 v3, 0x4

    if-ne p2, v3, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    if-eqz p1, :cond_12

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->setAppearProgress(F)V

    goto :goto_7

    :cond_11
    if-ne p1, v3, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    if-eqz p1, :cond_12

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->setAppearProgress(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->stop()V

    :cond_12
    :goto_7
    return-void
.end method

.method private onSwitchEditModeStart(II)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->clearSelection()V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getThemeButton()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateThemeButtonDrawable(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-nez p2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const/4 v2, 0x1

    if-eqz p2, :cond_7

    if-nez p1, :cond_8

    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stories/recorder/PaintView;->onAnimationStateChanged(Z)V

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/PaintView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    if-eqz p2, :cond_9

    const/4 v4, 0x1

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    if-eq p2, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v1, :cond_c

    if-ne p1, v2, :cond_c

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;->setAllowTouch(Z)V

    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v1, 0x3

    if-ne p2, v1, :cond_e

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCropEditor()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/recorder/CropEditor;->setEntry(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto :goto_5

    :cond_e
    if-ne p1, v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CropEditor;->disappearStarts()V

    :cond_f
    :goto_5
    const/4 v1, 0x4

    if-ne p2, v1, :cond_10

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCropInlineEditor()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_10
    if-ne p1, v1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->disappearStarts()V

    :cond_11
    :goto_6
    return-void
.end method

.method private openPremium()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->hidePeriodPopup()V

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$30;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private orderPreviewViews()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderInputView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewTextDim:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewSelectionContainerView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->trash:Lorg/telegram/ui/Stories/recorder/TrashView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterEnhanceView:Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewHighlight:Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentRoundRecorder:Lorg/telegram/ui/Stories/recorder/RoundVideoRecorder;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_a
    return-void
.end method

.method private premiumText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda87;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda87;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private prepareThumb(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)Ljava/io/File;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    :goto_1
    if-eqz p2, :cond_4

    const v2, 0x3eaaaaab

    goto :goto_2

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v5, 0x1

    sput-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    invoke-virtual {v1, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    sput-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;

    move-result-object v7

    iget-boolean v9, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-nez v9, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v7, v0}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v7, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, v7

    :cond_5
    invoke-virtual {v4, v9, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    const/4 v7, 0x0

    if-eqz v0, :cond_7

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    int-to-float v9, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v4, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v4, v0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-eqz v0, :cond_8

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v3, v9

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v4, v0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawForThemeToggle:Z

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iput-boolean v5, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->drawForThumb:Z

    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iput-boolean v1, v2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->drawForThumb:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawForThemeToggle:Z

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    const/16 v0, 0x28

    const/16 v2, 0x16

    invoke-static {v8, v0, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_a

    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda91;

    move-object v6, v3

    move-object v7, p0

    move v9, p2

    move-object v10, v1

    move-object v11, p1

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda91;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;ZLjava/io/File;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_a
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz p2, :cond_b

    const/16 v3, 0x5f

    goto :goto_5

    :cond_b
    const/16 v3, 0x63

    :goto_5
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_6
    if-nez p2, :cond_c

    iput-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    :cond_c
    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :cond_d
    :goto_7
    return-object v0
.end method

.method private processDone()V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    :cond_0
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    if-eqz v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DownloadButton;->showFailedVideo()V

    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    neg-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isCaptionOverLimit()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->limitTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    neg-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->captionLimitToast()Z

    return-void

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_3

    iget-boolean v8, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v8, :cond_4

    iget-wide v8, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v4, v8, v6

    if-nez v4, :cond_4

    :cond_3
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object v4

    if-eqz v4, :cond_4

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCount()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(II)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v4, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showLimitReachedSheet(Lorg/telegram/ui/Stories/StoriesController$StoryLimit;Z)V

    return-void

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v8

    iput-boolean v8, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v4, :cond_6

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    if-nez v8, :cond_6

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v8, v4, Landroid/text/Spannable;

    if-eqz v8, :cond_6

    move-object v8, v4

    check-cast v8, Landroid/text/Spannable;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v8, v3, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v9, v9

    if-gtz v9, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v8, v3, v4, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    array-length v4, v4

    if-lez v4, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->voip_invite:I

    sget v3, Lorg/telegram/messenger/R$string;->StoryPremiumFormatting:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->premiumText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    neg-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shiftDp:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v8, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v8, :cond_c

    iget-wide v8, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-wide v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedDialogId:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_8

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedDialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v5, v6, v7}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setValue(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object v4

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->canChangePeer:Z

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setCanChangePeer(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda73;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda73;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenDismiss(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowCover(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    if-nez v5, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getTotalCount()I

    move-result v5

    goto :goto_0

    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setCount(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getUsersFrom(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setWarnUsers(Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda74;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda74;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedPeer(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda75;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedRules(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v5, :cond_a

    iget-boolean v6, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->coverSet:Z

    if-nez v6, :cond_a

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eq v6, v0, :cond_a

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getCurrentPosition()J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda76;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda76;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewRenderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintViewEntitiesView:Landroid/view/View;

    new-array v1, v1, [Landroid/view/View;

    aput-object v6, v1, v3

    aput-object v7, v1, v2

    aput-object v8, v1, v0

    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getCoverBitmap(Lorg/telegram/messenger/Utilities$Callback;[Landroid/view/View;)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->coverBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda77;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda77;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setCover(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda78;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda78;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto :goto_2

    :cond_c
    :goto_1
    iput-boolean v3, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    invoke-direct {p0, v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyFilter(Ljava/lang/Runnable;)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->upload(Z)V

    :goto_2
    return-void
.end method

.method private requestAudioPermission()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private requestCameraPermission(Z)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestedCameraPermission:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->story_camera:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v5, 0x3dffffff    # 0.12499999f

    invoke-direct {v3, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0xddddde

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v3, v4, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->PermissionNoCameraWithHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->requestedCameraPermission:Z

    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->noCameraPermission:Z

    if-nez p1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCameraView()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private requestGalleryPermission()Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/16 v4, 0x72

    const/4 v5, 0x0

    if-lt v2, v3, :cond_2

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0, v2}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {v0, v3}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x17

    if-lt v2, v3, :cond_4

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_4
    :goto_0
    xor-int/lit8 v0, v5, 0x1

    return v0

    :cond_5
    return v1
.end method

.method private saveCameraFace(Z)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stories_camera"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveFrontFaceFlashMode()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    if-ltz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/FlashViews;->warmth:F

    const-string v2, "frontflash_warmth"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/FlashViews;->intensity:F

    const-string v2, "frontflash_intensity"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private saveLastCameraBitmap(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private setAwakeLock(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto :goto_0

    :goto_1
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private setCameraFlashModeIcon(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonMode:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x1

    if-eq v1, v2, :cond_6

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_5

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    goto :goto_1

    :cond_6
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_9

    if-eq p1, v3, :cond_8

    sget p1, Lorg/telegram/messenger/R$drawable;->media_photo_flash_off2:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOff:I

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    sget p1, Lorg/telegram/messenger/R$drawable;->media_photo_flash_auto2:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashAuto:I

    goto :goto_2

    :cond_9
    sget p1, Lorg/telegram/messenger/R$drawable;->media_photo_flash_on2:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOn:I

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonResId:I

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setIcon(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonMode:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    return-void
.end method

.method private setCurrentFlashMode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->hasFlashModes()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    const-string v1, "frontflash"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->setCurrentFlashMode(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setReply()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    const-string v2, " "

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lorg/telegram/messenger/MessageObject;->userSpan()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostPeerName:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lorg/telegram/messenger/MessageObject;->userSpan()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostCaption:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Landroid/text/SpannableString;

    sget v2, Lorg/telegram/messenger/R$string;->Story:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$17;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$17;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setReply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setReply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method private showDismissEntry()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->DiscardChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->PhotoEditorDiscardAlert:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->StoryKeepDraft:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->StorySaveDraft:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda71;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda71;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->StoryDeleteDraft:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->Discard:I

    goto :goto_1

    :goto_2
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda72;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0x33

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private showLimitReachedSheet(Lorg/telegram/ui/Stories/StoriesController$StoryLimit;Z)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shownLimitReached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$29;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$28;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$28;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->getLimitReachedType()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$29;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 p2, 0x7

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->shownLimitReached:Z

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private showPremiumPeriodBulletin(I)V
    .locals 5

    div-int/lit16 p1, p1, 0xe10

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$31;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$31;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;->getLayout()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;->updateLayout()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;->setTouchable(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$raw;->fire_on:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "StoryPeriodPremium"

    invoke-static {v4, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->premiumText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v3, 0x3

    invoke-virtual {v0, v2, p1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private showVideoTimer(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerShown:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerShown:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x15e

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimerView:Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method private showZoomControls(ZZ)V
    .locals 8

    const/4 p2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    :cond_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda81;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda81;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

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

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xb4

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_8

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    :goto_1
    new-array v7, v0, [F

    aput v6, v7, p2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, p2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$16;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$16;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p1, :cond_9

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda82;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda82;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method private switchTo(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchingStory:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->setSelected(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchingStory:Z

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda92;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda92;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaintSwitching(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateActionBarButtons(Z)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/ToggleButton2;->setSelected(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p0, v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-nez v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonMode:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p0, v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-nez v3, :cond_4

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p0, v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-nez v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledProgress()F

    move-result v0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->setCollageProgress(FZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->removeCollageHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateRecording(ZZ)V

    return-void
.end method

.method private updateActionBarButtonsOffsets()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageRemoveButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v1, v1, v2

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    neg-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    neg-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    neg-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setBounds(FF)V

    return-void
.end method

.method private upload(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->preparingUpload:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->preparingUpload:Z

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda89;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda89;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->applyPaintInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private uploadInternal(Z)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->destroyPhotoFilterView()V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda96;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda96;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cutIntoEntries()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntriesOrder:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntriesOrder:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntriesOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-ne v5, v4, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/CharSequence;

    aput-object v5, v6, v0

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    new-array v8, v2, [Ljava/lang/CharSequence;

    aput-object v7, v8, v0

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    invoke-virtual {v7, v8, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_3

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v9, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    aget-object v6, v6, v0

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5, v7}, Lorg/telegram/messenger/MediaDataController;->entitiesEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v5, 0x1

    :goto_5
    iput-boolean v5, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v6, Landroid/text/SpannableString;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_6
    iput-object v6, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_7
    iget-object v6, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    if-nez v6, :cond_8

    iput-boolean v0, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    new-instance v6, Landroid/text/SpannableString;

    const-string v7, ""

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    :goto_7
    invoke-interface {v1, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/CharSequence;

    aput-object v3, v4, v0

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_8

    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    new-array v6, v2, [Ljava/lang/CharSequence;

    aput-object v5, v6, v0

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->storyEntitiesAllowed()Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_9

    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v3, v5}, Lorg/telegram/messenger/MediaDataController;->entitiesEqual(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    const/4 v0, 0x1

    :cond_d
    iput-boolean v0, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_e
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v3, :cond_f

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    if-nez v4, :cond_f

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v0

    :cond_f
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSendPeer:J

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->checkBackgroundVisibility()V

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda97;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda97;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZJ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    if-eqz p1, :cond_10

    invoke-interface {p1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;->preLayout(JLjava/lang/Runnable;)V

    goto :goto_a

    :cond_10
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "storyhint2"

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private useDisplayFlashlight()Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->frontfaceFlashMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isDark:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public addNotificationObservers()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public canChangePeer(Z)Lorg/telegram/ui/Stories/recorder/StoryRecorder;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->canChangePeer:Z

    return-object p0
.end method

.method public close(Z)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->privacySheet:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v3, :cond_3

    :cond_2
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    :cond_3
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    :cond_4
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback4;

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v4, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    if-eqz v1, :cond_6

    return-void

    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->release()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSend:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-wide v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->wasSendPeer:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lorg/telegram/messenger/Utilities$Callback4;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_8
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-eq p1, v3, :cond_9

    if-nez p1, :cond_a

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->removeNotificationObservers()V

    return-void
.end method

.method public closeToWhenSent(Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;)Lorg/telegram/ui/Stories/recorder/StoryRecorder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->closingSourceProvider:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;

    return-object p0
.end method

.method public createCropEditor()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$38;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$38;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public createCropInlineEditor()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$39;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$39;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropInlineEditor$ContentView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    sget p2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    const/4 p3, 0x0

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_8

    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    :goto_0
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_8

    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget p2, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget v1, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-ne p2, v1, :cond_1

    iget-boolean p2, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    if-ne p2, v0, :cond_1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto/16 :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-eqz p1, :cond_8

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showSavedDraftHint:Z

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->updateGalleryImage()V

    goto :goto_1

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    if-ne p1, p2, :cond_8

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoError:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isCaptionOverLimit()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->hasStoryLimit(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_5

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v3, :cond_4

    iget-wide v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_5

    :cond_4
    const/4 p3, 0x1

    :cond_5
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->setShareEnabled(Z)V

    goto :goto_1

    :cond_6
    if-nez p1, :cond_8

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object p1

    if-eqz p1, :cond_8

    iget p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(I)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p3, :cond_7

    iget-wide v2, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_8

    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showLimitReachedSheet(Lorg/telegram/ui/Stories/StoriesController$StoryLimit;Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getThanosEffect()Lorg/telegram/ui/Components/ThanosEffect;
    .locals 4

    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect;->supports()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    new-instance v1, Lorg/telegram/ui/Components/ThanosEffect;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda102;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda102;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/ThanosEffect;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->thanosEffect:Lorg/telegram/ui/Components/ThanosEffect;

    return-object v0
.end method

.method public getThemeButton()Landroid/widget/ImageView;
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->sun_outline:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v3, "Sunny.**"

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v3, "Path 6.**"

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v3, "Path.**"

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v3, "Path 5.**"

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    const v2, 0x20ffffff

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda88;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda88;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarButtons:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x35

    const/16 v5, 0x2e

    invoke-static {v5, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public invalidateBlur()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->invalidateBlur()V

    :cond_0
    return-void
.end method

.method public navigateTo(IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-ne v1, v5, :cond_0

    return-void

    :cond_0
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    invoke-direct {v0, v5, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateStart(II)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    if-eqz v6, :cond_3

    if-ne v1, v3, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6, v7, v2}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    :cond_3
    if-nez v1, :cond_4

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-direct {v0, v6, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showVideoTimer(ZZ)V

    if-eq v1, v3, :cond_5

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimeView:Lorg/telegram/ui/Stories/recorder/VideoTimeView;

    invoke-virtual {v6, v4, v2}, Lorg/telegram/ui/Stories/recorder/VideoTimeView;->show(ZZ)V

    :cond_5
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v7

    xor-int/2addr v7, v3

    invoke-virtual {v0, v6, v7, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButton:Lorg/telegram/ui/Stories/recorder/ToggleButton2;

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-nez v7, :cond_6

    if-nez v1, :cond_6

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->flashButtonMode:Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v0, v6, v7, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dualButton:Lorg/telegram/ui/Stories/recorder/ToggleButton;

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-nez v7, :cond_7

    if-nez v1, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailable()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v0, v6, v7, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageButton:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-nez v7, :cond_8

    if-nez v1, :cond_8

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageListView:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->isVisible()Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v0, v6, v7, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setActionBarButtonVisible(Landroid/view/View;ZZ)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v8, 0x2

    if-eqz v2, :cond_29

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v11, :cond_a

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-nez v1, :cond_9

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_5
    new-array v14, v3, [F

    aput v13, v14, v4

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-ne v1, v3, :cond_b

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v13}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    if-ne v1, v8, :cond_d

    :cond_c
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    :goto_6
    new-array v14, v3, [F

    aput v13, v14, v4

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v1, :cond_f

    if-ne v1, v3, :cond_e

    invoke-virtual {v11}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_7

    :cond_e
    const/4 v13, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_8
    new-array v14, v3, [F

    aput v13, v14, v4

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-nez v1, :cond_10

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_10
    const/4 v13, 0x0

    :goto_9
    new-array v14, v3, [F

    aput v13, v14, v4

    invoke-static {v11, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v14, 0x41c00000    # 24.0f

    if-nez v1, :cond_11

    const/4 v15, 0x0

    goto :goto_a

    :cond_11
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    :goto_a
    new-array v7, v3, [F

    aput v15, v7, v4

    invoke-static {v11, v13, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    if-nez v1, :cond_12

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_12
    const/4 v11, 0x0

    :goto_b
    new-array v15, v3, [F

    aput v11, v15, v4

    invoke-static {v7, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez v1, :cond_13

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v11

    if-nez v11, :cond_13

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_13
    const/4 v11, 0x0

    :goto_c
    new-array v15, v3, [F

    aput v11, v15, v4

    invoke-static {v7, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez v1, :cond_14

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v11

    if-nez v11, :cond_14

    const/4 v11, 0x0

    goto :goto_d

    :cond_14
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    :goto_d
    new-array v14, v3, [F

    aput v11, v14, v4

    invoke-static {v7, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez v1, :cond_15

    iget-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-eqz v11, :cond_15

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v11

    if-nez v11, :cond_15

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_15
    const/4 v11, 0x0

    :goto_e
    new-array v14, v3, [F

    aput v11, v14, v4

    invoke-static {v7, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez v1, :cond_16

    iget-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-nez v11, :cond_16

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v11

    if-eqz v11, :cond_16

    const v16, 0x3f19999a    # 0.6f

    goto :goto_f

    :cond_16
    const/16 v16, 0x0

    :goto_f
    new-array v11, v3, [F

    aput v16, v11, v4

    invoke-static {v7, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    const-wide/16 v14, 0x0

    if-ne v1, v3, :cond_17

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_18

    iget-wide v9, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v11, v9, v14

    if-eqz v11, :cond_18

    :cond_17
    if-ne v1, v8, :cond_19

    :cond_18
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_19
    const/4 v9, 0x0

    :goto_10
    new-array v10, v3, [F

    aput v9, v10, v4

    invoke-static {v7, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-ne v1, v3, :cond_1a

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v9, :cond_1b

    iget-wide v9, v9, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    cmp-long v11, v9, v14

    if-eqz v11, :cond_1b

    :cond_1a
    if-ne v1, v8, :cond_1c

    :cond_1b
    const/4 v6, 0x0

    goto :goto_11

    :cond_1c
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    :goto_11
    new-array v9, v3, [F

    aput v6, v9, v4

    invoke-static {v7, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-ne v1, v8, :cond_1d

    const/4 v7, 0x0

    goto :goto_12

    :cond_1d
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_12
    new-array v9, v3, [F

    aput v7, v9, v4

    invoke-static {v6, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v3, :cond_1f

    if-ne v1, v8, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 v7, 0x0

    goto :goto_14

    :cond_1f
    :goto_13
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_14
    new-array v9, v3, [F

    aput v7, v9, v4

    invoke-static {v6, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-ne v1, v8, :cond_20

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_20
    const/4 v7, 0x0

    :goto_15
    new-array v9, v3, [F

    aput v7, v9, v4

    invoke-static {v6, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-ne v1, v3, :cond_21

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_21
    const/4 v7, 0x0

    :goto_16
    new-array v9, v3, [F

    aput v7, v9, v4

    invoke-static {v6, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-ne v1, v8, :cond_22

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_22
    const/4 v7, 0x0

    :goto_17
    new-array v8, v3, [F

    aput v7, v8, v4

    invoke-static {v6, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-ne v1, v3, :cond_23

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v7, :cond_23

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_18

    :cond_23
    const/4 v7, 0x0

    :goto_18
    new-array v8, v3, [F

    aput v7, v8, v4

    invoke-static {v6, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    if-ne v1, v3, :cond_25

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-nez v7, :cond_24

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v7, :cond_25

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    :cond_24
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_19

    :cond_25
    const/4 v7, 0x0

    :goto_19
    new-array v8, v3, [F

    aput v7, v8, v4

    invoke-static {v6, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    if-ne v1, v3, :cond_26

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_26
    const/4 v7, 0x0

    :goto_1a
    new-array v8, v3, [F

    aput v7, v8, v4

    invoke-static {v6, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_28

    if-ne v1, v3, :cond_27

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v7, :cond_27

    iget-boolean v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v7, :cond_27

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1b

    :cond_27
    const/4 v9, 0x0

    :goto_1b
    new-array v7, v3, [F

    aput v9, v7, v4

    invoke-static {v6, v12, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-array v3, v3, [F

    const/4 v7, 0x0

    aput v7, v3, v4

    invoke-static {v6, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$18;

    invoke-direct {v3, v0, v5, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$18;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1cc

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->pageAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_35

    :cond_29
    const/4 v7, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cameraView:Lorg/telegram/ui/Stories/recorder/DualCameraView;

    if-eqz v2, :cond_2b

    if-nez v1, :cond_2a

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_2a
    const/4 v4, 0x0

    :goto_1c
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2b
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-ne v1, v3, :cond_2c

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_2c
    if-ne v1, v8, :cond_2e

    :cond_2d
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_2e
    const/4 v4, 0x0

    :goto_1d
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v1, :cond_30

    if-ne v1, v3, :cond_2f

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_1e

    :cond_2f
    const/4 v4, 0x0

    goto :goto_1f

    :cond_30
    :goto_1e
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1f
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    if-nez v1, :cond_31

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_31
    const/4 v4, 0x0

    :goto_20
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    const/high16 v4, 0x41800000    # 16.0f

    if-nez v1, :cond_32

    const/4 v9, 0x0

    goto :goto_21

    :cond_32
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    :goto_21
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->qrLinkView:Lorg/telegram/ui/Stories/recorder/ScannedLinkPreview;

    if-nez v1, :cond_33

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_22

    :cond_33
    const/4 v9, 0x0

    :goto_22
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez v1, :cond_34

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v9

    if-nez v9, :cond_34

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_23

    :cond_34
    const/4 v9, 0x0

    :goto_23
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->modeSwitcherView:Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    if-nez v1, :cond_35

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v9

    if-nez v9, :cond_35

    const/4 v4, 0x0

    goto :goto_24

    :cond_35
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    :goto_24
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->hintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez v1, :cond_36

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-eqz v4, :cond_36

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v4

    if-nez v4, :cond_36

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_25

    :cond_36
    const/4 v4, 0x0

    :goto_25
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageHintTextView:Lorg/telegram/ui/Stories/recorder/HintTextView;

    if-nez v1, :cond_37

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animatedRecording:Z

    if-nez v4, :cond_37

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->inCheck()Z

    move-result v4

    if-eqz v4, :cond_37

    const v4, 0x3f19999a    # 0.6f

    goto :goto_26

    :cond_37
    const/4 v4, 0x0

    :goto_26
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-eq v1, v3, :cond_39

    if-ne v1, v8, :cond_38

    goto :goto_27

    :cond_38
    const/4 v4, 0x0

    goto :goto_28

    :cond_39
    :goto_27
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_28
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-eq v1, v3, :cond_3b

    if-ne v1, v8, :cond_3a

    goto :goto_29

    :cond_3a
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    goto :goto_2a

    :cond_3b
    :goto_29
    const/4 v4, 0x0

    :goto_2a
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-ne v1, v8, :cond_3c

    const/4 v4, 0x0

    goto :goto_2b

    :cond_3c
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2b
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-ne v1, v3, :cond_3d

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v4, :cond_3d

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2c

    :cond_3d
    const/4 v4, 0x0

    :goto_2c
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    if-ne v1, v3, :cond_3f

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-nez v4, :cond_3e

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v4, :cond_3f

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    :cond_3e
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2d

    :cond_3f
    const/4 v4, 0x0

    :goto_2d
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    if-ne v1, v3, :cond_40

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2e

    :cond_40
    const/4 v4, 0x0

    :goto_2e
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_42

    if-ne v1, v3, :cond_41

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v4, :cond_41

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v4, :cond_41

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2f

    :cond_41
    const/4 v4, 0x0

    :goto_2f
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_42
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-ne v1, v3, :cond_43

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_30

    :cond_43
    const/4 v4, 0x0

    :goto_30
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverTimelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-ne v1, v8, :cond_44

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_31

    :cond_44
    const/4 v4, 0x0

    :goto_31
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v3, :cond_46

    if-ne v1, v8, :cond_45

    goto :goto_32

    :cond_45
    const/4 v3, 0x0

    goto :goto_33

    :cond_46
    :goto_32
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_33
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->coverButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-ne v1, v8, :cond_47

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_34

    :cond_47
    const/4 v9, 0x0

    :goto_34
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {v0, v5, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onNavigateEnd(II)V

    :goto_35
    return-void
.end method

.method public navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;J)V
    .locals 6

    .line 0
    const-wide/16 v4, 0x320

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;JJ)V

    return-void
.end method

.method public navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;JJ)V
    .locals 3

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewAlreadySet:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->awaitingPlayer:Z

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda111;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda111;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v2, p2, p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->afterPlayerAwait:Ljava/lang/Runnable;

    invoke-static {p1, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->stopRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingVideo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->recordControl:Lorg/telegram/ui/Stories/recorder/RecordControl;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecording()V

    return v1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->takingPhoto:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->storiesSelector:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->galleryListView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateGalleryListView(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lastGallerySelectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return v1

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le v0, v2, :cond_9

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return v1

    :cond_9
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clear(Z)V

    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtons(Z)V

    return v1

    :cond_a
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-ne v0, v3, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_b

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-nez v2, :cond_15

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-nez v2, :cond_15

    :cond_b
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isReposting:Z

    if-nez v2, :cond_15

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-nez v2, :cond_d

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    if-eqz v0, :cond_15

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromGallery:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->isShareEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_12

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v2, :cond_12

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepost:Z

    if-nez v2, :cond_13

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-nez v0, :cond_13

    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isReposting:Z

    if-nez v0, :cond_13

    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    goto :goto_0

    :cond_13
    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_14

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    goto :goto_0

    :cond_14
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showDismissEntry()V

    :goto_0
    return v1

    :cond_15
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_16

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->processDone()V

    invoke-virtual {p0, v3, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return v1

    :cond_16
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    return v3
.end method

.method public open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Z)V

    return-void
.end method

.method public open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Z)V
    .locals 9

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isReposting:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    iput-boolean v0, v1, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->active:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->collageLayoutView:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getCameraThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraThumb(Landroid/graphics/drawable/Drawable;)V

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_3

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showLimitReachedSheet(Lorg/telegram/ui/Stories/StoriesController$StoryLimit;Z)V

    :cond_3
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v6, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    goto :goto_0

    :cond_4
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {p1, v1, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-eq v2, v5, :cond_6

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const v0, -0xe0e0e1

    :cond_6
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {p1, v5}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;I)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, v0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->addNotificationObservers()V

    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    return-void
.end method

.method public openBot(JLjava/lang/String;Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    const/4 v0, 0x1

    invoke-virtual {p0, p4, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Z)V

    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    return-void
.end method

.method public openBotEntry(JLjava/lang/String;Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-nez v0, :cond_7

    if-nez p4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_1
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isReposting:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-wide p1, p4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    iput-object p3, p4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    iget-boolean p1, p4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->active:Z

    const/4 p1, 0x0

    if-eqz p5, :cond_3

    iput-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget p2, p5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object p3, p5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p2, p5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    goto :goto_0

    :cond_3
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    const/high16 p3, 0x42c80000    # 100.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    sget-object p5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p5, p5, Landroid/graphics/Point;->x:I

    int-to-float p5, p5

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr p3, v1

    int-to-float p3, p3

    invoke-virtual {p2, p1, p4, p5, p3}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    const/4 p4, 0x1

    if-eq p3, p4, :cond_5

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    const p3, -0xe0e0e1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {p1, p4}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {p0, p4, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, p4, p4}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, p3, p4, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->addNotificationObservers()V

    :cond_7
    :goto_3
    return-void
.end method

.method public openEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JZ)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isReposting:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    iget-boolean p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    iput-boolean v0, p2, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->active:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    goto :goto_1

    :cond_4
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p1, p2, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-eq v2, v1, :cond_6

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const v2, -0xe0e0e1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda110;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda110;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p0, p1, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    if-eqz p1, :cond_8

    const/4 v1, 0x2

    :cond_8
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->addNotificationObservers()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    return-void
.end method

.method public openForward(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JZ)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isReposting:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    iget-boolean p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    iput-boolean v0, p2, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->active:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    goto :goto_1

    :cond_4
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p1, p2, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-eq v2, v1, :cond_6

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const v2, -0xe0e0e1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda101;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda101;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    invoke-virtual {p0, p1, p3, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->addNotificationObservers()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    return-void
.end method

.method public openRepost(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isReposting:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->prepareClosing:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->forceBackgroundVisible:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v2, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p2, :cond_3

    iget-boolean v2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTextureHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    if-eqz p2, :cond_4

    iget-boolean p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz p2, :cond_4

    if-eqz v2, :cond_4

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, v3, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->active:Z

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object p2

    if-eqz p2, :cond_5

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showLimitReachedSheet(Lorg/telegram/ui/Stories/StoriesController$StoryLimit;Z)V

    :cond_5
    const/4 p2, 0x0

    if-eqz p1, :cond_6

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hide()V

    goto :goto_2

    :cond_6
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {p1, p2, v3, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->updateBackground()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    if-eq v2, v0, :cond_8

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    const v2, -0xe0e0e1

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->containerView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->dismissProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->addNotificationObservers()V

    iput-wide v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botId:J

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botLang:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->botEdit:Lorg/telegram/tgnet/TLRPC$InputMedia;

    return-void
.end method

.method public removeNotificationObservers()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public replaceSourceView(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iget v1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    iget-object v2, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRounding:F

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromSourceView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->fromRect:Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const v0, -0xe0e0e1

    :cond_2
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public selectedPeerId(J)Lorg/telegram/ui/Stories/recorder/StoryRecorder;
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->selectedDialogId:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->setDialogId(J)V

    :cond_0
    return-object p0
.end method

.method public setActionBarButtonVisible(Landroid/view/View;ZZ)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$37;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$37;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$36;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$36;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZLandroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->updateActionBarButtonsOffsets()V

    :goto_1
    return-void
.end method

.method public setIconMuted(ZZ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->media_mute_unmute:I

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "media_mute_unmute"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->multiplySpeed(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    return-void

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p1

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p1

    const/16 p2, 0x2b

    if-lt p1, p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public setOnFullyOpenListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onFullyOpenListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnPrepareCloseListener(Lorg/telegram/messenger/Utilities$Callback4;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onClosePrepareListener:Lorg/telegram/messenger/Utilities$Callback4;

    return-void
.end method

.method public switchToEditMode(IZ)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZZ)V

    return-void
.end method

.method public switchToEditMode(IZZ)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    if-ne v6, v1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->isRecording()Z

    move-result v7

    if-eqz v7, :cond_1

    return-void

    :cond_1
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentEditMode:I

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    :cond_2
    if-eq v7, v1, :cond_3

    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onSwitchEditModeStart(II)V

    :cond_3
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewButtons:Lorg/telegram/ui/Stories/recorder/PreviewButtons;

    const/4 v10, 0x0

    if-eq v1, v6, :cond_4

    if-ne v1, v3, :cond_5

    :cond_4
    iget v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openProgress:F

    cmpl-float v11, v11, v10

    if-lez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v8, v11, v2}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appear(ZZ)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v11, :cond_6

    if-ne v1, v5, :cond_6

    const/4 v12, 0x1

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    :goto_1
    const/high16 v13, 0x3f800000    # 1.0f

    if-ne v1, v5, :cond_8

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createFilterPhotoView()V

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    iput-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v11

    goto :goto_2

    :cond_7
    move-object v11, v9

    :goto_2
    if-eqz v11, :cond_9

    invoke-virtual {v11, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v15, v5, [F

    aput v10, v15, v4

    invoke-static {v11, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v5, [F

    aput v13, v15, v4

    invoke-static {v11, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-ne v7, v5, :cond_9

    if-eqz v11, :cond_9

    iput-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v11

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v15, 0x43620000    # 226.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    new-array v6, v5, [F

    aput v15, v6, v4

    invoke-static {v11, v14, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v6

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v5, [F

    aput v10, v14, v4

    invoke-static {v6, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    const/high16 v11, 0x42400000    # 48.0f

    const/high16 v14, 0x41800000    # 16.0f

    if-nez v1, :cond_a

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v5, [F

    aput v10, v13, v4

    invoke-static {v9, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v9

    new-array v13, v3, [F

    fill-array-data v13, :array_0

    invoke-static {v9, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v9}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v9

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    new-array v6, v3, [F

    aput v14, v6, v4

    aput v10, v6, v5

    invoke-static {v9, v13, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v6

    new-array v9, v3, [F

    fill-array-data v9, :array_1

    invoke-static {v6, v15, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    new-array v11, v3, [F

    aput v9, v11, v4

    aput v10, v11, v5

    invoke-static {v6, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->getWeightChooserView()Landroid/view/View;

    move-result-object v6

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/high16 v11, 0x42000000    # 32.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    new-array v13, v3, [F

    aput v11, v13, v4

    aput v10, v13, v5

    invoke-static {v6, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    :goto_4
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_a
    if-nez v7, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v6, :cond_b

    iput-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewTouchable:Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->backButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v5, [F

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v4

    invoke-static {v6, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v6

    new-array v13, v5, [F

    aput v10, v13, v4

    invoke-static {v6, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->getTopLayout()Landroid/view/View;

    move-result-object v6

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    new-array v15, v5, [F

    aput v14, v15, v4

    invoke-static {v6, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v6

    new-array v14, v5, [F

    aput v10, v14, v4

    invoke-static {v6, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->getBottomLayout()Landroid/view/View;

    move-result-object v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    new-array v11, v5, [F

    aput v9, v11, v4

    invoke-static {v6, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/PaintView;->getWeightChooserView()Landroid/view/View;

    move-result-object v6

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/high16 v11, 0x42000000    # 32.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    new-array v13, v5, [F

    aput v11, v13, v4

    invoke-static {v6, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    goto/16 :goto_4

    :cond_b
    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    const/high16 v9, 0x42500000    # 52.0f

    if-eqz v6, :cond_d

    const/4 v11, 0x3

    if-ne v1, v11, :cond_c

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v3, [F

    fill-array-data v13, :array_2

    invoke-static {v6, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    new-array v15, v3, [F

    aput v14, v15, v4

    aput v10, v15, v5

    invoke-static {v6, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropEditor;->buttonsLayout:Landroid/widget/FrameLayout;

    new-array v14, v3, [F

    fill-array-data v14, :array_3

    invoke-static {v6, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropEditor;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    new-array v14, v3, [F

    aput v11, v14, v4

    aput v10, v14, v5

    invoke-static {v6, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/CropEditor;->getAppearProgress()F

    move-result v6

    new-array v11, v3, [F

    aput v6, v11, v4

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v11, v5

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v11, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda27;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    :goto_6
    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    if-ne v7, v11, :cond_d

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v3, [F

    fill-array-data v13, :array_4

    invoke-static {v6, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    new-array v15, v3, [F

    aput v10, v15, v4

    aput v14, v15, v5

    invoke-static {v6, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropEditor;->buttonsLayout:Landroid/widget/FrameLayout;

    new-array v14, v3, [F

    fill-array-data v14, :array_5

    invoke-static {v6, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropEditor;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    new-array v14, v3, [F

    aput v10, v14, v4

    aput v11, v14, v5

    invoke-static {v6, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropEditor:Lorg/telegram/ui/Stories/recorder/CropEditor;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/CropEditor;->getAppearProgress()F

    move-result v6

    new-array v11, v3, [F

    aput v6, v11, v4

    aput v10, v11, v5

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v11, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda28;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    goto :goto_6

    :cond_d
    :goto_7
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    if-eqz v6, :cond_f

    const/4 v11, 0x4

    if-ne v1, v11, :cond_e

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v3, [F

    fill-array-data v13, :array_6

    invoke-static {v6, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    new-array v15, v3, [F

    aput v14, v15, v4

    aput v10, v15, v5

    invoke-static {v6, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->buttonsLayout:Landroid/widget/FrameLayout;

    new-array v14, v3, [F

    fill-array-data v14, :array_7

    invoke-static {v6, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    new-array v11, v3, [F

    aput v9, v11, v4

    aput v10, v11, v5

    invoke-static {v6, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->getAppearProgress()F

    move-result v6

    new-array v9, v3, [F

    aput v6, v9, v4

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v9, v5

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v9, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda29;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    :goto_8
    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v7, v11, :cond_f

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v3, [F

    fill-array-data v13, :array_8

    invoke-static {v6, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->wheel:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    new-array v15, v3, [F

    aput v10, v15, v4

    aput v14, v15, v5

    invoke-static {v6, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->buttonsLayout:Landroid/widget/FrameLayout;

    new-array v14, v3, [F

    fill-array-data v14, :array_9

    invoke-static {v6, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    new-array v11, v3, [F

    aput v10, v11, v4

    aput v9, v11, v5

    invoke-static {v6, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->cropInlineEditor:Lorg/telegram/ui/Stories/recorder/CropInlineEditor;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/CropInlineEditor;->getAppearProgress()F

    move-result v6

    new-array v9, v3, [F

    aput v6, v9, v4

    aput v10, v9, v5

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v9, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda30;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    goto :goto_8

    :cond_f
    :goto_9
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, -0x1

    if-eq v1, v11, :cond_10

    if-ne v1, v3, :cond_11

    :cond_10
    iget-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-eqz v11, :cond_11

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_11
    const/4 v15, 0x0

    :goto_a
    new-array v11, v5, [F

    aput v15, v11, v4

    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    const/4 v11, -0x1

    if-eq v1, v11, :cond_12

    if-ne v1, v3, :cond_13

    :cond_12
    iget-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->isVideo:Z

    if-nez v11, :cond_14

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_13

    iget-object v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    goto :goto_b

    :cond_13
    const/4 v15, 0x0

    goto :goto_c

    :cond_14
    :goto_b
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_c
    new-array v11, v5, [F

    aput v15, v11, v4

    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    const/4 v11, -0x1

    if-eq v1, v11, :cond_16

    if-ne v1, v3, :cond_15

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_e
    new-array v11, v5, [F

    aput v15, v11, v4

    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_19

    const/4 v11, -0x1

    if-eq v1, v11, :cond_17

    if-ne v1, v3, :cond_18

    :cond_17
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v11, :cond_18

    iget-boolean v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v11, :cond_18

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_18
    const/4 v15, 0x0

    :goto_f
    new-array v11, v5, [F

    aput v15, v11, v4

    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->currentPage:I

    if-eq v11, v5, :cond_1a

    if-ne v11, v3, :cond_1b

    :cond_1a
    const/4 v11, -0x1

    if-ne v1, v11, :cond_1b

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_1b
    const/4 v15, 0x0

    :goto_10
    new-array v11, v5, [F

    aput v15, v11, v4

    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v1, v5, :cond_1c

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    const v13, 0x3e4ccccd    # 0.2f

    mul-float v11, v11, v13

    invoke-virtual {v6, v11}, Landroid/view/View;->setPivotY(F)V

    const/high16 v6, 0x43240000    # 164.0f

    :goto_11
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_12

    :cond_1c
    if-nez v1, :cond_1d

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    const v13, 0x3f19999a    # 0.6f

    mul-float v11, v11, v13

    invoke-virtual {v6, v11}, Landroid/view/View;->setPivotY(F)V

    const/high16 v6, 0x42200000    # 40.0f

    goto :goto_11

    :cond_1d
    if-ne v1, v3, :cond_1e

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v10}, Landroid/view/View;->setPivotY(F)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getContentHeight()I

    move-result v6

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v6, v11

    goto :goto_12

    :cond_1e
    const/4 v6, 0x0

    :goto_12
    if-lez v6, :cond_1f

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getPivotY()F

    move-result v13

    float-to-int v13, v13

    sub-int/2addr v11, v13

    sub-int v6, v11, v6

    int-to-float v6, v6

    int-to-float v11, v11

    div-float v15, v6, v11

    goto :goto_13

    :cond_1f
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_13
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v13, v5, [F

    aput v15, v13, v4

    invoke-static {v6, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v5, [F

    aput v15, v13, v4

    invoke-static {v6, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, -0x1

    if-ne v1, v6, :cond_20

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewContainer:Landroid/widget/FrameLayout;

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v13, v5, [F

    aput v10, v13, v4

    invoke-static {v6, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewCurvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    if-eqz v6, :cond_22

    if-ne v1, v5, :cond_21

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_21
    const/4 v15, 0x0

    :goto_14
    new-array v11, v5, [F

    aput v15, v11, v4

    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->photoFilterViewBlurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    if-eqz v6, :cond_24

    if-ne v1, v5, :cond_23

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_23
    const/4 v15, 0x0

    :goto_15
    new-array v11, v5, [F

    aput v15, v11, v4

    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    const/4 v11, -0x1

    if-ne v1, v11, :cond_25

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_25
    const/4 v15, 0x0

    :goto_16
    new-array v13, v5, [F

    aput v15, v13, v4

    invoke-static {v6, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    if-eq v1, v11, :cond_27

    if-ne v1, v3, :cond_26

    goto :goto_17

    :cond_26
    const/4 v15, 0x0

    goto :goto_18

    :cond_27
    :goto_17
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_18
    new-array v11, v5, [F

    aput v15, v11, v4

    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionContainer:Landroid/widget/FrameLayout;

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v13, -0x1

    if-eq v1, v13, :cond_29

    if-ne v1, v3, :cond_28

    goto :goto_19

    :cond_28
    const/high16 v13, 0x42f00000    # 120.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    goto :goto_1a

    :cond_29
    :goto_19
    const/4 v13, 0x0

    :goto_1a
    new-array v14, v5, [F

    aput v13, v14, v4

    invoke-static {v6, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    const/4 v13, -0x1

    if-eq v1, v13, :cond_2b

    if-ne v1, v3, :cond_2a

    goto :goto_1b

    :cond_2a
    const/4 v13, 0x0

    goto :goto_1c

    :cond_2b
    :goto_1b
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_1c
    new-array v14, v5, [F

    aput v13, v14, v4

    invoke-static {v6, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->videoTimelineContainerView:Landroid/widget/FrameLayout;

    if-ne v1, v3, :cond_2c

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_1d
    int-to-float v9, v9

    goto :goto_1e

    :cond_2c
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->captionEdit:Lorg/telegram/ui/Stories/recorder/CaptionStory;

    invoke-virtual {v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextHeight()I

    move-result v9

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v9, v13

    neg-int v9, v9

    const/high16 v13, 0x42800000    # 64.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v9, v13

    goto :goto_1d

    :goto_1e
    new-array v13, v5, [F

    aput v9, v13, v4

    invoke-static {v6, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v11, 0x41b80000    # 23.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setPivotX(F)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->actionBarButtons:Landroid/widget/LinearLayout;

    sget-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    if-ne v1, v3, :cond_2d

    const/high16 v11, -0x3d4c0000    # -90.0f

    goto :goto_1f

    :cond_2d
    const/4 v11, 0x0

    :goto_1f
    new-array v13, v5, [F

    aput v11, v13, v4

    invoke-static {v6, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->playButton:Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    const/high16 v11, 0x42b40000    # 90.0f

    if-ne v1, v3, :cond_2e

    const/high16 v13, 0x42b40000    # 90.0f

    goto :goto_20

    :cond_2e
    const/4 v13, 0x0

    :goto_20
    new-array v14, v5, [F

    aput v13, v14, v4

    invoke-static {v6, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-ne v1, v3, :cond_2f

    const/high16 v13, 0x42b40000    # 90.0f

    goto :goto_21

    :cond_2f
    const/4 v13, 0x0

    :goto_21
    new-array v14, v5, [F

    aput v13, v14, v4

    invoke-static {v6, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->downloadButton:Lorg/telegram/ui/Stories/recorder/DownloadButton;

    if-ne v1, v3, :cond_30

    const/high16 v13, 0x42b40000    # 90.0f

    goto :goto_22

    :cond_30
    const/4 v13, 0x0

    :goto_22
    new-array v14, v5, [F

    aput v13, v14, v4

    invoke-static {v6, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_32

    if-ne v1, v3, :cond_31

    const/high16 v10, 0x42b40000    # 90.0f

    :cond_31
    new-array v11, v5, [F

    aput v10, v11, v4

    invoke-static {v6, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->hasRenderNode()Z

    move-result v6

    if-eqz v6, :cond_33

    new-array v6, v3, [F

    fill-array-data v6, :array_a

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v9, Lorg/telegram/ui/Stories/recorder/StoryRecorder$24;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$24;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v6, :cond_36

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v9, :cond_35

    invoke-virtual {v9}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v9}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hasVideo()Z

    move-result v9

    if-eqz v9, :cond_35

    if-ne v1, v3, :cond_34

    goto :goto_23

    :cond_34
    const/4 v3, 0x0

    goto :goto_24

    :cond_35
    :goto_23
    const/4 v3, 0x1

    :goto_24
    invoke-virtual {v6, v3, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setOpen(ZZ)V

    :cond_36
    if-eqz v2, :cond_38

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x140

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$25;

    invoke-direct {v3, v0, v7, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$25;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;II)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v12, :cond_37

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_37
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->editModeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_26

    :cond_38
    :goto_25
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_39

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    const-wide/16 v9, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    add-int/2addr v4, v5

    goto :goto_25

    :cond_39
    if-eq v7, v1, :cond_3a

    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->onSwitchEditModeEnd(II)V

    :cond_3a
    :goto_26
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public toggleTheme()V
    .locals 18

    move-object/from16 v13, p0

    const/4 v14, 0x2

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_7

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightView:Landroid/view/View;

    if-nez v0, :cond_7

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v15, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawForThemeToggle:Z

    :cond_1
    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_2

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawForThemeToggle:Z

    :cond_2
    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawForThemeToggle:Z

    :cond_3
    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->paintView:Lorg/telegram/ui/Stories/recorder/PaintView;

    if-eqz v0, :cond_4

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PaintView;->drawForThemeToggle:Z

    :cond_4
    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-array v0, v14, [I

    iget-object v3, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v0, v2

    int-to-float v11, v2

    aget v0, v0, v1

    int-to-float v7, v0

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v5, v11, v0

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float v6, v7, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v9, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$33;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v14, v2

    move-object/from16 v2, v16

    move/from16 v16, v3

    move v3, v15

    move/from16 v17, v7

    move/from16 v7, v16

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$33;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;ZLandroid/graphics/Canvas;FFFLandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Paint;FF)V

    iput-object v14, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightView:Landroid/view/View;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda93;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda93;-><init>()V

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput v15, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$34;

    invoke-direct {v1, v13}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$34;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$35;

    invoke-direct {v1, v13}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$35;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v16, :cond_5

    const-wide/16 v1, 0x140

    goto :goto_0

    :cond_5
    const-wide/16 v1, 0x1c2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v16, :cond_6

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_1

    :cond_6
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->windowView:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, v13, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->changeDayNightView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda94;

    invoke-direct {v0, v13}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda94;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateThemeButtonDrawable(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->outputEntry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p1

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButtonDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->themeButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method
